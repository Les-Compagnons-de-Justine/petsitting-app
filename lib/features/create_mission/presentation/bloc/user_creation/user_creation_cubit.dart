import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/core/repositories/user/user_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'user_creation_cubit.freezed.dart';
part 'user_creation_state.dart';

class UserCreationCubit extends Cubit<UserCreationState> {
  final UserRepository _userRepository;

  UserCreationCubit(this._userRepository) : super(const UserCreationState.initial());

  Future<void> createUser(UsersCreateUserRequest userCreationDTO) async {
    emit(const UserCreationState.loading());

    try {
      final createdUser = await _userRepository.createUser(userCreationDTO);
      emit(UserCreationState.success(createdUser));
    } catch (e) {
      emit(UserCreationState.failure(e.toString()));
    }
  }
}
