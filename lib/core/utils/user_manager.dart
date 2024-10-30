import 'dart:async';

import 'package:petsitting/swagger_generated_code/pet_sitting_client.enums.swagger.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart' as client;

class UserManager {
  static final UserManager _instance = UserManager._internal();

  factory UserManager() {
    return _instance;
  }

  UserManager._internal();

  client.UsersUser? _currentUser;
  final _userController = StreamController<client.UsersUser?>.broadcast();

  Stream<client.UsersUser?> get userStream => _userController.stream;

  client.UsersUser? get currentUser => _currentUser;

  bool get isAuthenticated => _currentUser != null;

  bool get isVetAssistant => _currentUser?.role == UsersUserRole.roleadmin;

  void setUser(client.UsersUser user) {
    _currentUser = user;
    _userController.add(_currentUser);
  }

  void clearUser() {
    _currentUser = null;
    _userController.add(_currentUser);
  }

  void updateUser(Function(client.UsersUser) updateFunction) {
    if (_currentUser != null) {
      _currentUser = updateFunction(_currentUser!);
      _userController.add(_currentUser);
    }
  }

  void dispose() {
    _userController.close();
  }
}
