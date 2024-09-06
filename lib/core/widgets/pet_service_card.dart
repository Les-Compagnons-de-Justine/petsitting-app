import 'package:flutter/material.dart';
import 'package:petsitting/core/extensions/pet_services_extension.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PetServiceCard extends StatelessWidget {
  const PetServiceCard({
    super.key,
    required this.petService,
    required this.onTap,
  });

  final PetServiceDTO petService;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          width: 230,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white, // Couleur de fond
            borderRadius: BorderRadius.circular(16),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO: Manage image
                // Ajout d'une image si disponible
                //if (petService.category.iconUrl != null) // Remplacez par votre logique d'URL
                //  ClipRRect(
                //    borderRadius: BorderRadius.circular(8), // Coins arrondis pour l'image
                //    child: Image.network(
                //      petService.category.iconUrl!, // Ajoutez la logique pour récupérer l'image
                //      height: 100, // Hauteur de l'image
                //      fit: BoxFit.cover, // Ajustement de l'image
                //    ),
                //  ),
                // const SizedBox(height: 8),
                Text(
                  petService.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18, // Taille de police plus grande
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  petService.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey[600]), // Couleur du texte
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${petService.basePrice.toStringAsFixed(2)} €',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      '${petService.durationMinutes} min',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                if (petService.animalTypes.isNotEmpty)
                  Wrap(
                    spacing: 4.0,
                    children: petService.animalTypes.map((type) {
                      return Chip(
                        label: Text(type.toReadableString),
                        backgroundColor: Colors.blue[100],
                      );
                    }).toList(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
