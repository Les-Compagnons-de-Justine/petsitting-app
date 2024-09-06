import 'package:petsitting/swagger_generated_code/pet_sitting_client.enums.swagger.dart';

extension PetServiceDTOCategoryExtension on PetServiceDTOCategory {
  ApiPetServicesCategoryCategoryGetCategory toApiPetServicesCategory() {
    return switch (this) {
      PetServiceDTOCategory.swaggerGeneratedUnknown => ApiPetServicesCategoryCategoryGetCategory.swaggerGeneratedUnknown,
      PetServiceDTOCategory.basicCare => ApiPetServicesCategoryCategoryGetCategory.basicCare,
      PetServiceDTOCategory.medical => ApiPetServicesCategoryCategoryGetCategory.medical,
      PetServiceDTOCategory.training => ApiPetServicesCategoryCategoryGetCategory.training,
      PetServiceDTOCategory.transport => ApiPetServicesCategoryCategoryGetCategory.transport,
      PetServiceDTOCategory.specialized => ApiPetServicesCategoryCategoryGetCategory.specialized,
      PetServiceDTOCategory.houseCare => ApiPetServicesCategoryCategoryGetCategory.houseCare,
    };
  }

  String get toReadableString {
    return switch (this) {
      PetServiceDTOCategory.swaggerGeneratedUnknown => 'Inconnu',
      PetServiceDTOCategory.basicCare => 'Soins de base',
      PetServiceDTOCategory.medical => 'Médical',
      PetServiceDTOCategory.training => 'Entraînement',
      PetServiceDTOCategory.transport => 'Transport',
      PetServiceDTOCategory.specialized => 'Spécialisé',
      PetServiceDTOCategory.houseCare => 'Domicile',
    };
  }
}

extension PetServiceDTOCategoryListExtension on List<PetServiceDTOCategory> {
  List<PetServiceDTOCategory> get filteredValues {
    return where((element) => element != PetServiceDTOCategory.swaggerGeneratedUnknown).toList();
  }
}

extension PetServiceDTOAnimalTypesListExtension on List<PetServiceDTOAnimalTypes> {
  List<PetServiceDTOAnimalTypes> get filteredValues {
    return where((element) => element != PetServiceDTOAnimalTypes.swaggerGeneratedUnknown).toList();
  }
}

extension PetServicesDTOAnimalTypesExtension on PetServiceDTOAnimalTypes {
  String get toReadableString {
    return switch (this) {
      PetServiceDTOAnimalTypes.swaggerGeneratedUnknown => 'Inconnu',
      PetServiceDTOAnimalTypes.dog => 'Chien',
      PetServiceDTOAnimalTypes.cat => 'Chat',
      PetServiceDTOAnimalTypes.bird => 'Oiseau',
      PetServiceDTOAnimalTypes.fish => 'Poisson',
      PetServiceDTOAnimalTypes.reptile => 'Reptile',
      PetServiceDTOAnimalTypes.smallMammal => 'Petit mammifère',
      PetServiceDTOAnimalTypes.exotic => 'Exotique',
    };
  }
}
