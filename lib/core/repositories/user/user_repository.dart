import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class UserRepository {
  Future<UsersUser> getMe();
  Future<UsersUser> getUserById(String id);
  Future<UsersUser> getUserByEmail(String email);
  Future<List<UsersUser>> getAllUsers();
  Future<UsersUser> createUser(UsersCreateUserRequest userCreationDTO);
  Future<UsersUser> createUserWithoutPassword(UsersCreateUserRequest userCreationDTO);
  Future<UsersUser> updateUser(String id, UsersUpdateUserRequest userCreationDTO);
  Future<void> deleteUser(String id);
}
