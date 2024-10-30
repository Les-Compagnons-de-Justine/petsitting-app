import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petsitting/core/extensions/user_extension.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/features/auth/domain/repositories/auth_repository.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart' as client;

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  StreamSubscription<User?>? _authSubscription;

  AuthBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(Initial()) {
    on<AuthEventAuthStateChanged>(_onAuthStateChanged);
    on<AuthEventSignIn>(_onSignIn);
    on<AuthEventSignUp>(_onSignUp);
    on<AuthEventSignOut>(_onSignOut);
    on<AuthEventCreateAccount>(_onCreateAccount);

    // Écoute les changements d'état d'authentification
    _authSubscription = FirebaseAuth.instance.authStateChanges().listen((firebaseUser) {
      add(AuthEventAuthStateChanged(firebaseUser));
    });
  }

  Future<void> _onAuthStateChanged(AuthEventAuthStateChanged event, Emitter<AuthState> emit) async {
    if (event.user != null && !event.user!.emailVerified) {
      emit(EmailUnverified());
      return;
    }

    emit(Checking());

    try {
      final firebaseUser = event.user;
      if (firebaseUser != null) {
        final user = await _authRepository.getCurrentUser();
        if (user != null) {
          emit(Authenticated(user));
          UserManager().setUser(user);
        } else {
          emit(PartiallyAuthenticated());
        }
      } else {
        emit(Unauthenticated());
        UserManager().clearUser();
      }
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  Future<void> _onSignIn(AuthEventSignIn event, Emitter<AuthState> emit) async {
    emit(Loading());
    try {
      final firebaseUser = FirebaseAuth.instance.currentUser;
      if (firebaseUser == null) {
        emit(Error('Aucun utilisateur connecté à Firebase'));
        return;
      }

      final bffUser = await _authRepository.getCurrentUser();
      if (bffUser != null) {
        emit(Authenticated(bffUser));
        UserManager().setUser(bffUser);
      } else {
        emit(PartiallyAuthenticated());
      }
    } catch (e) {
      debugPrint('Caught error: $e');
      emit(Error(e.toString()));
    }
  }

  Future<void> _onSignOut(AuthEventSignOut event, Emitter<AuthState> emit) async {
    await _authRepository.signOut();
    emit(Unauthenticated());
    UserManager().clearUser();
  }

  Future<void> _onSignUp(AuthEventSignUp event, Emitter<AuthState> emit) async {
    emit(Loading());
    try {
      final existingUser = await _authRepository.getUserFromBff(event.user.email!);

      if (existingUser != null) {
        // L'utilisateur existe déjà dans le BFF, mettons à jour son firebaseUid
        final updatedUser = existingUser.toUpdateDTO(event.user.uid);

        final linkedUser = await _authRepository.updateUserInBff(updatedUser);
        emit(Authenticated(linkedUser));
      } else {
        // Aucun utilisateur existant dans le BFF, on passe à l'état partiallyAuthenticated
        // pour que l'utilisateur puisse compléter son profil
        emit(PartiallyAuthenticated());
      }
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  Future<void> _onCreateAccount(AuthEventCreateAccount event, Emitter<AuthState> emit) async {
    emit(Loading());

    try {
      final firebaseUser = FirebaseAuth.instance.currentUser;
      if (firebaseUser == null) {
        emit(Error('Aucun utilisateur Firebase connecté'));
        return;
      }

      final updatedUser = event.user.copyWith(
        firebaseUid: firebaseUser.uid,
        email: firebaseUser.email,
      );

      final createdUser = await _authRepository.createUserInBff(firebaseUser, updatedUser);

      emit(Authenticated(createdUser));
      UserManager().setUser(createdUser);
    } catch (e) {
      emit(CreateUserError(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }
}
