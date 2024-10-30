import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class AnimalMapper {
  static AnimalAnimal mapAnimalWithOwnerToAnimalAnimal(AnimalWithOwner animalWithOwner) {
    return AnimalAnimal(
      allergies: animalWithOwner.allergies,
      behaviorNotes: animalWithOwner.behaviorNotes,
      birthDate: animalWithOwner.birthDate,
      breed: animalWithOwner.breed,
      childFriendly: animalWithOwner.childFriendly,
      energyLevel: animalWithOwner.energyLevel,
      feedingInstructions: animalWithOwner.feedingInstructions,
      gender: animalWithOwner.gender,
      houseTrained: animalWithOwner.houseTrained,
      id: animalWithOwner.id,
      lastVetVisit: animalWithOwner.lastVetVisit,
      medicalConditions: animalWithOwner.medicalConditions,
      medications: animalWithOwner.medications,
      microchipNumber: animalWithOwner.microchipNumber,
      name: animalWithOwner.name,
      ownerId: animalWithOwner.owner?.id,
      petFriendly: animalWithOwner.petFriendly,
      photoUrl: animalWithOwner.photoUrl,
      size: animalWithOwner.size,
      specialInstructions: animalWithOwner.specialInstructions,
      specialNeeds: animalWithOwner.specialNeeds,
      species: animalWithOwner.species,
      vaccinationsUpToDate: animalWithOwner.vaccinationsUpToDate,
      veterinarianContact: animalWithOwner.veterinarianContact,
      weight: animalWithOwner.weight,
    );
  }
}
