import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petsitting/core/extensions/user_extension.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/features/auth/domain/repositories/auth_repository.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart' as client;

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  StreamSubscription<User?>? _authSubscription;

  AuthBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState.initial()) {
    on<AuthEventAuthStateChanged>(_onAuthStateChanged);
    on<AuthEventSignIn>(_onSignIn);
    on<AuthEventSignUp>(_onSignUp);
    on<AuthEventSignOut>(_onSignOut);
    on<AuthEventCreateAccount>(_onCreateAccount);

    // Écoute les changements d'état d'authentification
    _authSubscription = FirebaseAuth.instance.authStateChanges().listen((firebaseUser) {
      add(AuthEvent.authStateChanged(firebaseUser));
    });
  }

  Future<void> _onAuthStateChanged(AuthEventAuthStateChanged event, Emitter<AuthState> emit) async {
    if (event.user != null && !event.user!.emailVerified) {
      emit(const AuthState.emailUnverified());
      return;
    }

    emit(const AuthState.checking());

    try {
      final firebaseUser = event.user;
      if (firebaseUser != null) {
        final user = await _authRepository.getCurrentUser();
        if (user != null) {
          emit(AuthState.authenticated(user));
          UserManager().setUser(user);
        } else {
          emit(const AuthState.partiallyAuthenticated());
        }
      } else {
        emit(const AuthState.unauthenticated());
        UserManager().clearUser();
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onSignIn(AuthEventSignIn event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final firebaseUser = FirebaseAuth.instance.currentUser;
      if (firebaseUser == null) {
        emit(const AuthState.error('Aucun utilisateur connecté à Firebase'));
        return;
      }

      final bffUser = await _authRepository.getCurrentUser();
      if (bffUser != null) {
        emit(AuthState.authenticated(bffUser));
        UserManager().setUser(bffUser);
      } else {
        emit(const AuthState.partiallyAuthenticated());
      }
    } catch (e) {
      debugPrint('Caught error: $e');
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onSignOut(AuthEventSignOut event, Emitter<AuthState> emit) async {
    await _authRepository.signOut();
    emit(const AuthState.unauthenticated());
    UserManager().clearUser();
  }

  Future<void> _onSignUp(AuthEventSignUp event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final existingUser = await _authRepository.getUserFromBff(event.user.email!);

      if (existingUser != null) {
        // L'utilisateur existe déjà dans le BFF, mettons à jour son firebaseUid
        final updatedUser = existingUser.toUpdateDTO(event.user.uid);

        final linkedUser = await _authRepository.updateUserInBff(updatedUser);
        emit(AuthState.authenticated(linkedUser));
      } else {
        // Aucun utilisateur existant dans le BFF, on passe à l'état partiallyAuthenticated
        // pour que l'utilisateur puisse compléter son profil
        emit(const AuthState.partiallyAuthenticated());
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onCreateAccount(AuthEventCreateAccount event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      final firebaseUser = FirebaseAuth.instance.currentUser;
      if (firebaseUser == null) {
        emit(const AuthState.error('Aucun utilisateur Firebase connecté'));
        return;
      }

      final updatedUser = event.user.copyWith(
        firebaseUid: firebaseUser.uid,
        email: firebaseUser.email,
      );

      final createdUser = await _authRepository.createUserInBff(firebaseUser, updatedUser);

      emit(AuthState.authenticated(createdUser));
      UserManager().setUser(createdUser);
    } catch (e) {
      emit(AuthState.createUserError(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }
}
