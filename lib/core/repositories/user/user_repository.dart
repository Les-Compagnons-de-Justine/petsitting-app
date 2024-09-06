import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class UserRepository {
  Future<UserDTO> getMe();
  Future<UserDTO> getUserById(String id);
  Future<UserDTO> getUserByEmail(String email);
  Future<List<UserDTO>> getAllUsers();
  Future<UserDTO> createUser(UserCreationDTO userCreationDTO);
  Future<UserDTO> createVetAssistant(UserCreationDTO userCreationDTO);
  Future<UserDTO> createUserWithoutPassword(UserCreationDTO userCreationDTO);
  Future<UserDTO> updateUser(String id, UserUpdateDTO userCreationDTO);
  Future<void> deleteUser(String id);
}
