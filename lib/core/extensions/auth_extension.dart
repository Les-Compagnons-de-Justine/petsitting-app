import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_state.dart';

extension AuthExtension on Widget {
  Widget displayWhenAuth(BuildContext context) {
    final authBloc = context.watch<AuthBloc>();
    return authBloc.state is Authenticated ? this : const SizedBox.shrink();
  }
}
