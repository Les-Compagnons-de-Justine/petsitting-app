import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';

extension AuthExtension on Widget {
  Widget displayWhenAuth(BuildContext context) {
    final authBloc = context.watch<AuthBloc>();
    return authBloc.state.maybeWhen(
      authenticated: (_) => this,
      orElse: () => const SizedBox.shrink(),
    );
  }
}