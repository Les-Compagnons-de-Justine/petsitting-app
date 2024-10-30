import 'package:petsitting/swagger_generated_code/pet_sitting_client.enums.swagger.dart';

extension PetServiceDTOCategoryExtension on PetServicesCategory {
  String get toReadableString {
    return switch (this) {
      PetServicesCategory.swaggerGeneratedUnknown => 'Inconnu',
      PetServicesCategory.basiccare => 'Soins de base',
      PetServicesCategory.medical => 'Médical',
      PetServicesCategory.training => 'Entraînement',
      PetServicesCategory.transport => 'Transport',
      PetServicesCategory.specialized => 'Spécialisé',
      PetServicesCategory.housecare => 'Domicile',
    };
  }
}

extension PetServiceDTOCategoryListExtension on List<PetServicesCategory> {
  List<PetServicesCategory> get filteredValues {
    return where((element) => element != PetServicesCategory.swaggerGeneratedUnknown).toList();
  }
}

extension PetServiceDTOAnimalTypesListExtension on List<PetServicesAnimalType> {
  List<PetServicesAnimalType> get filteredValues {
    return where((element) => element != PetServicesAnimalType.swaggerGeneratedUnknown).toList();
  }
}

extension PetServicesDTOAnimalTypesExtension on PetServicesAnimalType {
  String get toReadableString {
    return switch (this) {
      PetServicesAnimalType.swaggerGeneratedUnknown => 'Inconnu',
      PetServicesAnimalType.dog => 'Chien',
      PetServicesAnimalType.cat => 'Chat',
      PetServicesAnimalType.bird => 'Oiseau',
      PetServicesAnimalType.fish => 'Poisson',
      PetServicesAnimalType.reptile => 'Reptile',
      PetServicesAnimalType.smallmammal => 'Petit mammifère',
      PetServicesAnimalType.exotic => 'Exotique',
    };
  }
}
