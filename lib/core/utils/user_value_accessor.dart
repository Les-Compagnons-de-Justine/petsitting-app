import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UserValueAccessor extends ControlValueAccessor<UserDTO, String> {
  @override
  String modelToViewValue(UserDTO? modelValue) {
    // Conversion du modèle utilisateur (UserDTO) en chaîne de caractères à afficher
    return "${modelValue?.firstname} ${modelValue?.lastname}";
  }

  @override
  UserDTO? viewToModelValue(String? viewValue) {
    // Retourne null car il n'est pas nécessaire de convertir la chaîne en UserDTO ici
    return null;
  }
}
