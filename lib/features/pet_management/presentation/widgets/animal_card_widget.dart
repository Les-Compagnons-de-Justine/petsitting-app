import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jiffy/jiffy.dart';
import 'package:petsitting/core/bloc/animal/single/single_animal_cubit.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

class AnimalCardWidget extends HookWidget {
  const AnimalCardWidget({
    super.key,
    required this.animal,
    required this.onEditPressed,
  });

  final AnimalWithOwner animal;
  final VoidCallback onEditPressed;

  String _getDisplayValue(dynamic enumValue) {
    if (enumValue == null) return 'Non spécifié';
    final value = enumValue.toString().split('.').last;
    return value.replaceAll('_', ' ').capitalize();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (animal.photoUrl != null && animal.photoUrl!.isNotEmpty)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      animal.photoUrl!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  )
                else
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.pets,
                      size: 50,
                      color: Colors.grey[600],
                    ),
                  ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        animal.name!,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${animal.species?.name} - ${animal.breed ?? 'Race non spécifiée'}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Genre: ${_getDisplayValue(animal.gender)}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Né le ${Jiffy.parse(animal.birthDate!).format(pattern: "dd/MM/yyyy")}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      if (animal.weight != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Poids: ${animal.weight} kg',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.size != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Taille: ${_getDisplayValue(animal.size)}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.vaccinationsUpToDate != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Vaccins à jour: ${animal.vaccinationsUpToDate! ? 'Oui' : 'Non'}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.medicalConditions != null && animal.medicalConditions!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Problèmes médicaux: ${animal.medicalConditions}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.medications != null && animal.medications!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Médicaments: ${animal.medications!.join(', ')}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.allergies != null && animal.allergies!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Allergies: ${animal.allergies!.join(', ')}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.feedingInstructions != null && animal.feedingInstructions!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Instructions d\'alimentation: ${animal.feedingInstructions}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.behaviorNotes != null && animal.behaviorNotes!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Notes de comportement: ${animal.behaviorNotes}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.energyLevel != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Niveau d\'énergie: ${_getDisplayValue(animal.energyLevel)}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.houseTrained != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Propre à la maison: ${animal.houseTrained! ? 'Oui' : 'Non'}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.petFriendly != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Ami des animaux: ${animal.petFriendly! ? 'Oui' : 'Non'}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.childFriendly != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Ami des enfants: ${animal.childFriendly! ? 'Oui' : 'Non'}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.specialNeeds != null && animal.specialNeeds!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Besoins spéciaux: ${animal.specialNeeds}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.veterinarianContact != null && animal.veterinarianContact!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Contact vétérinaire: ${animal.veterinarianContact}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.lastVetVisit != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Dernière visite chez le véto: ${Jiffy.parse(animal.lastVetVisit!).format(pattern: "dd/MM/yyyy")}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                      if (animal.specialInstructions != null && animal.specialInstructions!.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          'Instructions spéciales: ${animal.specialInstructions}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool?> _showDeleteConfirmationDialog(BuildContext context, AnimalWithOwner animal) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirmer la suppression"),
          content: Text("Êtes-vous sûr de vouloir supprimer ${animal.name}?"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("ANNULER"),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text("SUPPRIMER"),
            ),
          ],
        );
      },
    );

    if (result == true && context.mounted) {
      context.read<SingleAnimalCubit>().deleteAnimal(animal.id!);
    }

    return result;
  }
}
