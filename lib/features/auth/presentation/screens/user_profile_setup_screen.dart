import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:petsitting/features/auth/presentation/widgets/user_creation_form_widget.dart';

class UserProfileSetupScreen extends StatelessWidget {
  const UserProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Vos informations',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: UserCreationFormWidget(
          onUserCreated: (user) {
            context.read<AuthBloc>().add(AuthEvent.createAccount(user: user));
          },
        ),
      ),
    );
  }
}
