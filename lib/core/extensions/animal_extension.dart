import 'package:petsitting/swagger_generated_code/pet_sitting_client.enums.swagger.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

extension AnimalDTOGenderExtension on AnimalGender {
  String get readableName {
    switch (this) {
      case AnimalGender.swaggerGeneratedUnknown:
        return 'Unknown';
      case AnimalGender.male:
        return 'Mâle';
      case AnimalGender.female:
        return 'Femelle';
    }
  }
}
