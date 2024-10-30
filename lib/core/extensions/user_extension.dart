import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

extension UserExtension on UsersUser {
  toUpdateDTO(String firebaseId) {
    return UsersUpdateUserRequest(
      id: id,
      lastname: lastname,
      firstname: firstname,
      email: email,
      phone: phone,
      address: address,
      firebaseUid: firebaseId,
    );
  }
}
