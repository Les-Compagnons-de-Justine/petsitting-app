import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

extension UserExtension on UserDTO {
  toUpdateDTO(String firebaseId) {
    return UserUpdateDTO(
      id: id,
      lastname: lastname,
      firstname: firstname,
      email: email,
      phone: phone,
      address: address,
      role: UserUpdateDTORole.values.firstWhere((e) => e.name == role.name),
      firebaseUid: firebaseId,
      isVerified: isVerified,
      registrationDate: registrationDate,
    );
  }
}

extension UserDTORoleExtension on UserDTORole {
  UserUpdateDTORole toUpdatedDTO() {
    return switch (this) {
      UserDTORole.swaggerGeneratedUnknown => UserUpdateDTORole.swaggerGeneratedUnknown,
      UserDTORole.$client => UserUpdateDTORole.$client,
      UserDTORole.vetAssistant => UserUpdateDTORole.vetAssistant,
    };
  }
}
