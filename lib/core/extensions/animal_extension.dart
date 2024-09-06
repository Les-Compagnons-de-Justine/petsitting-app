import 'package:petsitting/swagger_generated_code/pet_sitting_client.enums.swagger.dart';

extension AnimalSizeExtension on AnimalDTOSize {
  AnimalCreateDTOSize toCreateDTOSize() {
    switch (this) {
      case AnimalDTOSize.small:
        return AnimalCreateDTOSize.small;
      case AnimalDTOSize.medium:
        return AnimalCreateDTOSize.medium;
      case AnimalDTOSize.large:
        return AnimalCreateDTOSize.large;
      default:
        return AnimalCreateDTOSize.small;
    }
  }

  AnimalUpdateDTOSize toUpdateDTOSize() {
    switch (this) {
      case AnimalDTOSize.small:
        return AnimalUpdateDTOSize.small;
      case AnimalDTOSize.medium:
        return AnimalUpdateDTOSize.medium;
      case AnimalDTOSize.large:
        return AnimalUpdateDTOSize.large;
      default:
        return AnimalUpdateDTOSize.small;
    }
  }
}

extension AnimalDTOGenderExtension on AnimalDTOGender {
  AnimalCreateDTOGender toCreateDTOGender() {
    switch (this) {
      case AnimalDTOGender.swaggerGeneratedUnknown:
        return AnimalCreateDTOGender.swaggerGeneratedUnknown;
      case AnimalDTOGender.male:
        return AnimalCreateDTOGender.male;
      case AnimalDTOGender.female:
        return AnimalCreateDTOGender.female;
    }
  }

  AnimalUpdateDTOGender toUpdateDTOGender() {
    switch (this) {
      case AnimalDTOGender.swaggerGeneratedUnknown:
        return AnimalUpdateDTOGender.swaggerGeneratedUnknown;
      case AnimalDTOGender.male:
        return AnimalUpdateDTOGender.male;
      case AnimalDTOGender.female:
        return AnimalUpdateDTOGender.female;
    }
  }

  String get readableName {
    switch (this) {
      case AnimalDTOGender.swaggerGeneratedUnknown:
        return 'Unknown';
      case AnimalDTOGender.male:
        return 'Mâle';
      case AnimalDTOGender.female:
        return 'Femelle';
    }
  }
}

extension AnimalDTOSpeciesExtension on AnimalDTOSpecies {
  AnimalCreateDTOSpecies toCreateDTOSpecies() {
    switch (this) {
      case AnimalDTOSpecies.swaggerGeneratedUnknown:
        return AnimalCreateDTOSpecies.swaggerGeneratedUnknown;
      case AnimalDTOSpecies.dog:
        return AnimalCreateDTOSpecies.dog;
      case AnimalDTOSpecies.cat:
        return AnimalCreateDTOSpecies.cat;
      case AnimalDTOSpecies.bird:
        return AnimalCreateDTOSpecies.bird;
      case AnimalDTOSpecies.fish:
        return AnimalCreateDTOSpecies.fish;
      case AnimalDTOSpecies.reptile:
        return AnimalCreateDTOSpecies.reptile;
      case AnimalDTOSpecies.rodent:
        return AnimalCreateDTOSpecies.rodent;
      case AnimalDTOSpecies.rabbit:
        return AnimalCreateDTOSpecies.rabbit;
      case AnimalDTOSpecies.other:
        return AnimalCreateDTOSpecies.other;
      case AnimalDTOSpecies.ferret:
        return AnimalCreateDTOSpecies.ferret;
      case AnimalDTOSpecies.horse:
        return AnimalCreateDTOSpecies.horse;
      case AnimalDTOSpecies.cow:
        return AnimalCreateDTOSpecies.cow;
      case AnimalDTOSpecies.pig:
        return AnimalCreateDTOSpecies.pig;
      case AnimalDTOSpecies.sheep:
        return AnimalCreateDTOSpecies.sheep;
      case AnimalDTOSpecies.goat:
        return AnimalCreateDTOSpecies.goat;
      case AnimalDTOSpecies.poultry:
        return AnimalCreateDTOSpecies.poultry;
    }
  }

  AnimalUpdateDTOSpecies toUpdateDTOSpecies() {
    switch (this) {
      case AnimalDTOSpecies.swaggerGeneratedUnknown:
        return AnimalUpdateDTOSpecies.swaggerGeneratedUnknown;
      case AnimalDTOSpecies.dog:
        return AnimalUpdateDTOSpecies.dog;
      case AnimalDTOSpecies.cat:
        return AnimalUpdateDTOSpecies.cat;
      case AnimalDTOSpecies.bird:
        return AnimalUpdateDTOSpecies.bird;
      case AnimalDTOSpecies.fish:
        return AnimalUpdateDTOSpecies.fish;
      case AnimalDTOSpecies.reptile:
        return AnimalUpdateDTOSpecies.reptile;
      case AnimalDTOSpecies.rodent:
        return AnimalUpdateDTOSpecies.rodent;
      case AnimalDTOSpecies.rabbit:
        return AnimalUpdateDTOSpecies.rabbit;
      case AnimalDTOSpecies.other:
        return AnimalUpdateDTOSpecies.other;
      case AnimalDTOSpecies.ferret:
        return AnimalUpdateDTOSpecies.ferret;
      case AnimalDTOSpecies.horse:
        return AnimalUpdateDTOSpecies.horse;
      case AnimalDTOSpecies.cow:
        return AnimalUpdateDTOSpecies.cow;
      case AnimalDTOSpecies.pig:
        return AnimalUpdateDTOSpecies.pig;
      case AnimalDTOSpecies.sheep:
        return AnimalUpdateDTOSpecies.sheep;
      case AnimalDTOSpecies.goat:
        return AnimalUpdateDTOSpecies.goat;
      case AnimalDTOSpecies.poultry:
        return AnimalUpdateDTOSpecies.poultry;
    }
  }
}

extension AnimalDTOEnergyLevelExtension on AnimalDTOEnergyLevel {
  AnimalCreateDTOEnergyLevel toCreateDTOEnergyLevel() {
    switch (this) {
      case AnimalDTOEnergyLevel.swaggerGeneratedUnknown:
        return AnimalCreateDTOEnergyLevel.swaggerGeneratedUnknown;
      case AnimalDTOEnergyLevel.low:
        return AnimalCreateDTOEnergyLevel.low;
      case AnimalDTOEnergyLevel.medium:
        return AnimalCreateDTOEnergyLevel.medium;
      case AnimalDTOEnergyLevel.high:
        return AnimalCreateDTOEnergyLevel.high;
    }
  }

  AnimalUpdateDTOEnergyLevel toUpdateDTOEnergyLevel() {
    switch (this) {
      case AnimalDTOEnergyLevel.swaggerGeneratedUnknown:
        return AnimalUpdateDTOEnergyLevel.swaggerGeneratedUnknown;
      case AnimalDTOEnergyLevel.low:
        return AnimalUpdateDTOEnergyLevel.low;
      case AnimalDTOEnergyLevel.medium:
        return AnimalUpdateDTOEnergyLevel.medium;
      case AnimalDTOEnergyLevel.high:
        return AnimalUpdateDTOEnergyLevel.high;
    }
  }
}
