import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn({required User user}) = AuthEventSignIn;
  const factory AuthEvent.createAccount({required UsersCreateUserRequest user}) = AuthEventCreateAccount;
  const factory AuthEvent.signUp({required User user}) = AuthEventSignUp;
  const factory AuthEvent.signOut() = AuthEventSignOut;
  const factory AuthEvent.checkStatus() = AuthEventCheckStatus;
  const factory AuthEvent.authStateChanged(User? user) = AuthEventAuthStateChanged;
}
