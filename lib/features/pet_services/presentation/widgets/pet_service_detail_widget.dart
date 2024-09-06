import 'package:flutter/material.dart';
import 'package:petsitting/core/extensions/pet_services_extension.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PetServiceDetailWidget extends StatelessWidget {
  final PetServiceDTO service;

  const PetServiceDetailWidget({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildRow(String label, String value) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(value),
          ],
        ),
      );
    }

    Widget buildAnimalTypes() {
      return Wrap(
        spacing: 8.0,
        children: service.animalTypes.map((type) {
          return Chip(
            label: Text(type.toReadableString),
            backgroundColor: Colors.blue[100],
          );
        }).toList(),
      );
    }

    Widget buildIncludedItems() {
      if (service.includedItems.isEmpty) {
        return const Text('Aucun élément inclus.');
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Éléments inclus:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Column(
            children: service.includedItems.map((item) {
              return ListTile(
                title: Text(item),
                leading: const Icon(Icons.check_circle_outline, color: Colors.green),
              );
            }).toList(),
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
            Text(
              service.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              service.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            buildRow('Durée', '${service.durationMinutes} minutes'),
            buildRow('Prix de base', '${service.basePrice.toStringAsFixed(2)} €'),
            buildRow('Catégorie', service.category.toString().split('.').last),
            const SizedBox(height: 16),
            const Text(
              'Types d\'animaux concernés:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            buildAnimalTypes(),
            const SizedBox(height: 16),
            buildIncludedItems(),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.monetization_on),
                const SizedBox(width: 8),
                Text(service.isCustomPriceAllowed ? 'Prix personnalisé autorisé' : 'Prix personnalisé non autorisé'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.timer),
                const SizedBox(width: 8),
                Text(service.isCustomDurationAllowed ? 'Durée personnalisée autorisée' : 'Durée personnalisée non autorisée'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
