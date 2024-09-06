import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.checking() = Checking;
  const factory AuthState.emailUnverified() = EmailUnverified;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.partiallyAuthenticated() = PartiallyAuthenticated;
  const factory AuthState.authenticated(UserDTO user) = Authenticated;
  const factory AuthState.createUserError(String message) = CreateUserError;
  const factory AuthState.loading() = Loading;
  const factory AuthState.error(String message) = Error;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}
