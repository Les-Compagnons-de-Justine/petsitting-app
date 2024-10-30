import 'package:firebase_auth/firebase_auth.dart';
import 'package:petsitting/features/auth/domain/repositories/auth_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart' as client;

class AuthRepositoryImpl implements AuthRepository {
  final client.PetSittingClient _bffClient;

  AuthRepositoryImpl(this._bffClient);

  @override
  Future<User> signInWithFirebase(String email, String password) async {
    try {
      final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user == null) {
        throw Exception('Failed to sign in');
      }
      return userCredential.user!;
    } catch (e) {
      throw Exception('Failed to sign in: $e');
    }
  }

  @override
  Future<User> signUpWithFirebase(String email, String password) async {
    try {
      final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user == null) {
        throw Exception('Failed to sign up');
      }
      return userCredential.user!;
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }

  @override
  Future<client.UsersUser?> getUserFromBff(String email) async {
    try {
      final response = await _bffClient.apiUsersEmailEmailGet(email: email);
      if (response.isSuccessful) {
        return response.body;
      } else if (response.statusCode == 404) {
        return null; // User not found in BFF
      } else {
        throw Exception('Failed to get user from BFF: ${response.error}');
      }
    } catch (e) {
      throw Exception('Failed to get user from BFF: $e');
    }
  }

  @override
  Future<client.UsersUser> createUserInBff(User firebaseUser, client.UsersCreateUserRequest userInfo) async {
    try {
      final response = await _bffClient.apiUsersPost(user: userInfo);
      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw Exception('Failed to create user in BFF: ${response.error}');
      }
    } catch (e) {
      throw Exception('Failed to create user in BFF: $e');
    }
  }

  @override
  Future<client.UsersUser> updateUserInBff(client.UsersUpdateUserRequest user) async {
    try {
      final response = await _bffClient.apiUsersIdPut(user: user, id: user.firebaseUid);
      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw Exception('Failed to update user in BFF: ${response.error}');
      }
    } catch (e) {
      throw Exception('Failed to update user in BFF: $e');
    }
  }

  @override
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  User? getCurrentFirebaseUser() {
    return FirebaseAuth.instance.currentUser;
  }

  @override
  Future<client.UsersUser?> getCurrentUser() async {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    if (firebaseUser == null) {
      return null;
    }
    return getUserFromBff(firebaseUser.email!);
  }
}
