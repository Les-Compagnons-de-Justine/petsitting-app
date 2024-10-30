import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_cubit.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_state.dart';
import 'package:petsitting/features/pet_services/presentation/widgets/pet_service_edit_widget.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PetServiceAdminScreen extends HookWidget {
  const PetServiceAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCategory = useState<PetServicesCategory?>(null);
    final selectedAnimalTypes = useState<List<PetServicesAnimalType>>([]);

    useEffect(() {
      context.read<PetServiceCubit>().loadPetServices();
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion des services'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showServiceDialog(context),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildFilters(context, selectedCategory, selectedAnimalTypes),
          Expanded(
            child: BlocBuilder<PetServiceCubit, PetServiceState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text('Chargement initial...')),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (services, _) => _buildServiceList(context, services, selectedCategory.value, selectedAnimalTypes.value),
                  error: (message) => Center(child: Text('Erreur: $message')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilters(
    BuildContext context,
    ValueNotifier<PetServicesCategory?> selectedCategory,
    ValueNotifier<List<PetServicesAnimalType>> selectedAnimalTypes,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          DropdownButton<PetServicesCategory>(
            isExpanded: true,
            value: selectedCategory.value,
            hint: const Text('Filtrer par catégorie'),
            onChanged: (PetServicesCategory? newValue) {
              selectedCategory.value = newValue;
              _applyFilters(context, selectedCategory.value, selectedAnimalTypes.value);
            },
            items: PetServicesCategory.values.map((category) {
              return DropdownMenuItem<PetServicesCategory>(
                value: category,
                child: Text(category.toString().split('.').last),
              );
            }).toList(),
          ),
          Wrap(
            spacing: 8.0,
            children: PetServicesAnimalType.values.map((type) {
              return FilterChip(
                label: Text(type.toString().split('.').last),
                selected: selectedAnimalTypes.value.contains(type),
                onSelected: (bool selected) {
                  if (selected) {
                    selectedAnimalTypes.value = [...selectedAnimalTypes.value, type];
                  } else {
                    selectedAnimalTypes.value = selectedAnimalTypes.value.where((t) => t != type).toList();
                  }
                  _applyFilters(context, selectedCategory.value, selectedAnimalTypes.value);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceList(
    BuildContext context,
    List<PetServicesPetService> services,
    PetServicesCategory? category,
    List<PetServicesAnimalType> animalTypes,
  ) {
    final filteredServices = services.where((service) {
      bool categoryMatch = category == null || service.category == category;
      bool animalTypeMatch = animalTypes.isEmpty || animalTypes.any((type) => service.animalTypes!.contains(type));
      return categoryMatch && animalTypeMatch;
    }).toList();

    return ListView.builder(
      itemCount: filteredServices.length,
      itemBuilder: (context, index) {
        final service = filteredServices[index];
        return ListTile(
          title: Text(service.name!),
          subtitle: Text('${service.basePrice}€ - ${service.durationMinutes} min'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => _showServiceDialog(context, service: service),
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => _deleteService(context, service),
              ),
            ],
          ),
          onTap: () => _showServiceDetails(context, service),
        );
      },
    );
  }

  void _showServiceDialog(BuildContext context, {PetServicesPetService? service}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(service == null ? 'Ajouter un service' : 'Modifier le service'),
          content: PetServiceEditWidget(
            service: service,
            onSave: (updatedService) {
              if (service == null) {
                context.read<PetServiceCubit>().createPetService(updatedService);
              } else {
                context.read<PetServiceCubit>().updatePetService(updatedService);
              }
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }

  void _deleteService(BuildContext context, PetServicesPetService service) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmer la suppression'),
          content: Text('Êtes-vous sûr de vouloir supprimer le service "${service.name}" ?'),
          actions: [
            TextButton(
              child: const Text('Annuler'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text('Supprimer'),
              onPressed: () {
                context.read<PetServiceCubit>().deletePetService(service.id!);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showServiceDetails(BuildContext context, PetServicesPetService service) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(service.name!),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Description: ${service.description}'),
                Text('Prix: ${service.basePrice}€'),
                Text('Durée: ${service.durationMinutes} minutes'),
                Text('Catégorie: ${service.category.toString().split('.').last}'),
                Text('Types d\'animaux: ${service.animalTypes!.map((t) => t.toString().split('.').last).join(', ')}'),
                Text('Prix personnalisé autorisé: ${service.isCustomPriceAllowed! ? 'Oui' : 'Non'}'),
                Text('Durée personnalisée autorisée: ${service.isCustomDurationAllowed! ? 'Oui' : 'Non'}'),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Fermer'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void _applyFilters(
    BuildContext context,
    PetServicesCategory? category,
    List<PetServicesAnimalType> animalTypes,
  ) {
    context.read<PetServiceCubit>().loadPetServices(
          category: category,
          animalTypes: animalTypes,
        );
  }
}
