import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class AddServiceForm extends HookWidget {
  final ValueNotifier<List<MissionsDailyServiceWithDetails>> dailyServicesNotifier;
  final DateTime missionStartDate;
  final DateTime missionEndDate;
  final List<AnimalWithOwner> animals;
  final List<PetServicesPetService> petServices;

  const AddServiceForm({
    super.key,
    required this.dailyServicesNotifier,
    required this.missionStartDate,
    required this.missionEndDate,
    required this.animals,
    required this.petServices,
  });

  @override
  Widget build(BuildContext context) {
    final selectedDates = useState<List<DateTime>>([]);
    final selectAllDays = useState<bool>(false);
    final priceController = useTextEditingController();
    final selectedAnimal = useState<AnimalWithOwner?>(null);
    final selectedService = useState<PetServicesPetService?>(null); // Gérer la sélection du service

    useEffect(() {
      if (selectAllDays.value) {
        selectedDates.value = _generateDateRange(missionStartDate, missionEndDate);
      }
      return null;
    }, [selectAllDays.value]);

    // Calcul du prix total en fonction du nombre de jours sélectionnés
    useEffect(() {
      if (selectedService.value != null) {
        final basePrice = selectedService.value!.basePrice;
        final totalDays = selectedDates.value.length;
        final totalPrice = basePrice! * totalDays;
        priceController.text = totalPrice.toString();
      }
      return null;
    }, [selectedDates.value, selectedService.value]);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Ajouter un service',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown pour sélectionner l'animal
            DropdownButtonFormField<AnimalWithOwner>(
              value: selectedAnimal.value,
              items: animals.map((animal) {
                return DropdownMenuItem<AnimalWithOwner>(
                  value: animal,
                  child: Text(animal.name!),
                );
              }).toList(),
              onChanged: (AnimalWithOwner? value) {
                selectedAnimal.value = value;
              },
              decoration: const InputDecoration(labelText: 'Sélectionner un animal'),
            ),
            const SizedBox(height: 16),
            // Dropdown pour sélectionner le type de service
            DropdownButtonFormField<PetServicesPetService>(
              value: selectedService.value,
              items: petServices.map((service) {
                return DropdownMenuItem<PetServicesPetService>(
                  value: service,
                  child: Text(service.name!),
                );
              }).toList(),
              onChanged: (PetServicesPetService? value) {
                selectedService.value = value;
                final basePrice = value?.basePrice ?? 0;
                final totalDays = selectedDates.value.length;
                priceController.text = (basePrice * totalDays).toString();
              },
              decoration: const InputDecoration(labelText: 'Sélectionner un service'),
            ),
            const SizedBox(height: 16),
            // Checkbox pour sélectionner tous les jours de la mission
            CheckboxListTile(
              value: selectAllDays.value,
              title: const Text('Sélectionner tous les jours de la mission'),
              onChanged: (bool? value) {
                selectAllDays.value = value ?? false;
                if (!selectAllDays.value) {
                  selectedDates.value = []; // Réinitialiser si décoché
                }
              },
            ),
            const SizedBox(height: 16),
            if (!selectAllDays.value)
              ListTile(
                title: const Text('Sélectionner les dates'),
                trailing: IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () async {
                    final DateTimeRange? pickedDateRange = await showDateRangePicker(
                      context: context,
                      firstDate: missionStartDate,
                      lastDate: missionEndDate,
                    );
                    if (pickedDateRange != null) {
                      selectedDates.value = _generateDateRange(pickedDateRange.start, pickedDateRange.end);
                    }
                  },
                ),
              ),
            const SizedBox(height: 16),
            if (selectedDates.value.length == 1) Text('Date sélectionnée : ${selectedDates.value.first.toLocal().toString().split(' ')[0]}'),
            if (selectedDates.value.length > 1)
              Text('Du ${selectedDates.value.first.toLocal().toString().split(' ')[0]} au ${selectedDates.value.last.toLocal().toString().split(' ')[0]}'),
            const SizedBox(height: 16),
            // Prix total du service
            TextFormField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Prix total du service (€)'),
            ),
            const SizedBox(height: 16),
            // Bouton pour ajouter le service
            ElevatedButton(
              onPressed: () {
                if (selectedAnimal.value != null && selectedService.value != null && selectedDates.value.isNotEmpty && priceController.text.isNotEmpty) {
                  _addServiceToSelectedDates(
                    dailyServicesNotifier,
                    selectedDates.value,
                    selectedAnimal.value!,
                    selectedService.value!,
                    double.parse(priceController.text),
                  );
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Veuillez remplir tous les champs')),
                  );
                }
              },
              child: const Text('Ajouter le service'),
            ),
          ],
        ),
      ),
    );
  }

  // Générer une liste de dates à partir d'une plage de dates
  List<DateTime> _generateDateRange(DateTime start, DateTime end) {
    List<DateTime> dates = [];
    DateTime current = start;
    while (current.isBefore(end) || current.isAtSameMomentAs(end)) {
      dates.add(current);
      current = current.add(const Duration(days: 1));
    }
    return dates;
  }

  // Ajouter le service aux dates sélectionnées
  void _addServiceToSelectedDates(
    ValueNotifier<List<MissionsDailyServiceWithDetails>> dailyServicesNotifier,
    List<DateTime> selectedDates,
    AnimalWithOwner animal,
    PetServicesPetService petService,
    double price,
  ) {
    final pricePerDay = price / selectedDates.length;
    for (DateTime date in selectedDates) {
      final service = MissionsAnimalServiceWithDetails(
        animal: animal,
        petService: petService,
        price: pricePerDay,
        date: date.toIso8601String(),
      );
      _addServiceToList(service, date, dailyServicesNotifier);
    }
  }

  // Méthode existante pour ajouter un service à une date spécifique
  void _addServiceToList(
      MissionsAnimalServiceWithDetails service, DateTime missionDate, ValueNotifier<List<MissionsDailyServiceWithDetails>> dailyServicesNotifier) {
    final existingDayIndex = dailyServicesNotifier.value.indexWhere((dailyService) => DateTime.parse(dailyService.date!) == missionDate);

    if (existingDayIndex != -1) {
      // Jour déjà existant, ajouter le service à cette date
      final existingDay = dailyServicesNotifier.value[existingDayIndex];
      final updatedServices = <MissionsAnimalServiceWithDetails>[...existingDay.services ?? [], service];
      final updatedDailyService = MissionsDailyServiceWithDetails(date: existingDay.date, services: updatedServices);

      dailyServicesNotifier.value = [
        for (var i = 0; i < dailyServicesNotifier.value.length; i++)
          if (i == existingDayIndex) updatedDailyService else dailyServicesNotifier.value[i]
      ];
    } else {
      // Nouveau jour, ajouter un nouveau jour avec le service
      final newDailyService = MissionsDailyServiceWithDetails(date: missionDate.toIso8601String(), services: [service]);
      dailyServicesNotifier.value = [...dailyServicesNotifier.value, newDailyService];
    }
  }
}
