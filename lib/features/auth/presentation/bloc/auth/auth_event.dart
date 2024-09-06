part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn({required User user}) = AuthEventSignIn;
  const factory AuthEvent.createAccount({required client.UserCreationDTO user}) = AuthEventCreateAccount;
  const factory AuthEvent.signUp({required User user}) = AuthEventSignUp;
  const factory AuthEvent.signOut() = AuthEventSignOut;
  const factory AuthEvent.checkStatus() = AuthEventCheckStatus;
  const factory AuthEvent.authStateChanged(User? user) = AuthEventAuthStateChanged;
}
