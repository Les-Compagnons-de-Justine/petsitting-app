import 'package:firebase_auth/firebase_auth.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart' as client;

abstract class AuthRepository {
  Future<User> signInWithFirebase(String email, String password);
  Future<User> signUpWithFirebase(String email, String password);
  Future<client.UsersUser?> getUserFromBff(String firebaseUid);
  Future<client.UsersUser> createUserInBff(User firebaseUser, client.UsersCreateUserRequest userInfo);
  Future<client.UsersUser> updateUserInBff(client.UsersUpdateUserRequest user);
  Future<void> signOut();
  User? getCurrentFirebaseUser();
  Future<client.UsersUser?> getCurrentUser();
}
