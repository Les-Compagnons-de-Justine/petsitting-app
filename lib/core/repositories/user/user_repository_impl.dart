import 'package:petsitting/core/repositories/user/user_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class UserRepositoryImpl implements UserRepository {
  final PetSittingClient _client;

  UserRepositoryImpl(this._client);

  @override
  Future<UsersUser> getMe() async {
    final response = await _client.apiUsersMeGet();
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get user: ${response.error}');
    }
  }

  @override
  Future<UsersUser> getUserById(String id) async {
    final response = await _client.apiUsersIdGet(id: id);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get user: ${response.error}');
    }
  }

  @override
  Future<UsersUser> getUserByEmail(String email) async {
    final response = await _client.apiUsersEmailEmailGet(email: email);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get user by email: ${response.error}');
    }
  }

  @override
  Future<List<UsersUser>> getAllUsers() async {
    final response = await _client.apiUsersGet();
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get all users: ${response.error}');
    }
  }

  @override
  Future<UsersUser> createUser(UsersCreateUserRequest userCreationDTO) async {
    final response = await _client.apiUsersPost(user: userCreationDTO);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to create user: ${response.error}');
    }
  }

  // @override
  // Future<UsersUser> createVetAssistant(UsersCreateUserRequest userCreationDTO) async {
  //   final response = await _client.apiUsersVetAssistantPost(body: userCreationDTO);
  //   if (response.isSuccessful) {
  //     return response.body!;
  //   } else {
  //     throw Exception('Failed to create vet assistant: ${response.error}');
  //   }
  // }

  @override
  Future<UsersUser> createUserWithoutPassword(UsersCreateUserRequest userCreationDTO) async {
    final response = await _client.apiUsersPost(user: userCreationDTO);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to create user without password: ${response.error}');
    }
  }

  @override
  Future<UsersUser> updateUser(String id, UsersUpdateUserRequest user) async {
    final response = await _client.apiUsersIdPut(id: user.id, user: user);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to update user: ${response.error}');
    }
  }

  @override
  Future<void> deleteUser(String id) async {
    final response = await _client.apiUsersIdDelete(id: id);
    if (!response.isSuccessful) {
      throw Exception('Failed to delete user: ${response.error}');
    }
  }
}
