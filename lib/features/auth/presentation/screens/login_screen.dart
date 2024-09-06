import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, state) {
        state.maybeWhen(
          authenticated: (_) {
            context.go(RouteNames.home);
          },
          orElse: () {},
        );
      },
      child: firebase_ui.SignInScreen(
        providers: [
          firebase_ui.EmailAuthProvider(),
        ],
        auth: FirebaseAuth.instance,
        actions: [
          firebase_ui.AuthStateChangeAction((context, state) {}),
        ],
      ),
    );
  }
}
