part of 'user_creation_cubit.dart';

@freezed
class UserCreationState with _$UserCreationState {
  const factory UserCreationState.initial() = _Initial;
  const factory UserCreationState.loading() = _Loading;
  const factory UserCreationState.success(UsersUser createdUser) = _Success;
  const factory UserCreationState.failure(String error) = _Failure;
}
