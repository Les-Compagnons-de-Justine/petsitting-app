import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/core/repositories/user/user_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'user_search_cubit.freezed.dart';

class UserSearchCubit extends Cubit<UserSearchState> {
  final UserRepository _userRepository;
  List<UsersUser> _allUsers = [];

  UserSearchCubit(this._userRepository) : super(const UserSearchState.initial());

  Future<void> fetchAllUsers() async {
    emit(const UserSearchState.loading());

    try {
      _allUsers = await _userRepository.getAllUsers();
      emit(UserSearchState.loaded(_allUsers));
    } catch (e) {
      emit(UserSearchState.error(e.toString()));
    }
  }

  List<UsersUser> filterUsers(String query) {
    if (_allUsers.isEmpty) {
      emit(const UserSearchState.error("Users not loaded. Call fetchAllUsers first."));
      return List.empty();
    }

    final filteredUsers = _allUsers
        .where((user) =>
            user.firstname!.toLowerCase().contains(query.toLowerCase()) ||
            user.lastname!.toLowerCase().contains(query.toLowerCase()) ||
            user.email!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return filteredUsers;
  }
}

@freezed
class UserSearchState with _$UserSearchState {
  const factory UserSearchState.initial() = _Initial;
  const factory UserSearchState.loading() = _Loading;
  const factory UserSearchState.loaded(List<UsersUser> users) = _Loaded;
  const factory UserSearchState.error(String message) = _Error;
}
