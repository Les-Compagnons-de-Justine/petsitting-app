import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PetServiceEditWidget extends HookWidget {
  final PetServicesPetService? service;
  final Function(PetServicesPetService)? onSave;

  const PetServiceEditWidget({
    super.key,
    this.service,
    this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController(text: service?.name ?? '');
    final descriptionController = useTextEditingController(text: service?.description ?? '');
    final durationController = useTextEditingController(text: service?.durationMinutes.toString() ?? '');
    final priceController = useTextEditingController(text: service?.basePrice.toString() ?? '');
    final category = useState<PetServicesCategory>(service?.category ?? PetServicesCategory.basiccare);
    final animalTypes = useState<List<PetServicesAnimalType>>(service?.animalTypes ?? []);
    final isCustomPriceAllowed = useState<bool>(service?.isCustomPriceAllowed ?? false);
    final isCustomDurationAllowed = useState<bool>(service?.isCustomDurationAllowed ?? false);
    final includedItems = useState<List<String>>(service?.includedItems ?? []);
    final newItemController = useTextEditingController();

    Widget buildTextField(TextEditingController controller, String label, {bool readOnly = false, TextInputType? keyboardType}) {
      return TextField(
        controller: controller,
        decoration: InputDecoration(labelText: label),
        keyboardType: keyboardType,
      );
    }

    Widget buildDropdown() {
      return DropdownButtonFormField<PetServicesCategory>(
        value: category.value,
        onChanged: (newValue) {
          if (newValue != null) {
            category.value = newValue;
          }
        },
        items: PetServicesCategory.values.map((cat) {
          return DropdownMenuItem(
            value: cat,
            child: Text(cat.toString().split('.').last),
          );
        }).toList(),
        decoration: const InputDecoration(labelText: 'Catégorie'),
      );
    }

    Widget buildAnimalTypeChips() {
      return Wrap(
        spacing: 8.0,
        children: PetServicesAnimalType.values.map((type) {
          return FilterChip(
            label: Text(type.toString().split('.').last),
            selected: animalTypes.value.contains(type),
            onSelected: (bool selected) {
              if (selected) {
                animalTypes.value = [...animalTypes.value, type];
              } else {
                animalTypes.value = animalTypes.value.where((t) => t != type).toList();
              }
            },
          );
        }).toList(),
      );
    }

    Widget buildCheckboxListTile(String title, bool value, Function(bool?) onChanged) {
      return CheckboxListTile(
        title: Text(title),
        value: value,
        onChanged: onChanged,
      );
    }

    Widget buildIncludedItemsList() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Éléments inclus:'),
          ListView.builder(
            shrinkWrap: true,
            itemCount: includedItems.value.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(includedItems.value[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    includedItems.value = List.from(includedItems.value)..removeAt(index);
                  },
                ),
              );
            },
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: newItemController,
                  decoration: const InputDecoration(labelText: 'Nouvel élément inclus'),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  if (newItemController.text.isNotEmpty) {
                    includedItems.value = [...includedItems.value, newItemController.text];
                    newItemController.clear();
                  }
                },
              ),
            ],
          ),
        ],
      );
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextField(nameController, 'Nom du service'),
            SizedBox(height: 8),
            buildTextField(descriptionController, 'Description'),
            SizedBox(height: 8),
            buildTextField(durationController, 'Durée (minutes)', keyboardType: TextInputType.number),
            SizedBox(height: 8),
            buildTextField(priceController, 'Prix de base', keyboardType: TextInputType.number),
            SizedBox(height: 8),
            buildDropdown(),
            const SizedBox(height: 16),
            const Text('Types d\'animaux concernés:'),
            buildAnimalTypeChips(),
            buildCheckboxListTile('Prix personnalisé autorisé', isCustomPriceAllowed.value, (value) => isCustomPriceAllowed.value = value ?? false),
            buildCheckboxListTile('Durée personnalisée autorisée', isCustomDurationAllowed.value, (value) => isCustomDurationAllowed.value = value ?? false),
            const SizedBox(height: 16),
            buildIncludedItemsList(),
            const SizedBox(height: 16),
            if (onSave != null)
              ElevatedButton(
                onPressed: () {
                  final updatedService = PetServicesPetService(
                    id: service?.id,
                    name: nameController.text,
                    description: descriptionController.text,
                    durationMinutes: int.tryParse(durationController.text) ?? 0,
                    basePrice: double.tryParse(priceController.text) ?? 0.0,
                    category: category.value,
                    animalTypes: animalTypes.value,
                    isCustomPriceAllowed: isCustomPriceAllowed.value,
                    isCustomDurationAllowed: isCustomDurationAllowed.value,
                    includedItems: includedItems.value,
                  );
                  onSave!(updatedService);
                },
                child: const Text('Enregistrer'),
              ),
          ],
        ),
      ),
    );
  }
}
