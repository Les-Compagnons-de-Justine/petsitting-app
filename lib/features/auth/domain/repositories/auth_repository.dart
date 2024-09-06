import 'package:firebase_auth/firebase_auth.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart' as client;

abstract class AuthRepository {
  Future<User> signInWithFirebase(String email, String password);
  Future<User> signUpWithFirebase(String email, String password);
  Future<client.UserDTO?> getUserFromBff(String firebaseUid);
  Future<client.UserDTO> createUserInBff(User firebaseUser, client.UserCreationDTO userInfo);
  Future<client.UserDTO> updateUserInBff(client.UserUpdateDTO user);
  Future<void> signOut();
  User? getCurrentFirebaseUser();
  Future<client.UserDTO?> getCurrentUser();
}
