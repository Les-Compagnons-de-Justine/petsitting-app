import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:quickalert/quickalert.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) => _buildSettingsContent(context, user),
          unauthenticated: () => _unauthenticated(context),
          partiallyAuthenticated: () => _unauthenticated(context),
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget _buildSettingsContent(BuildContext context, UserDTO user) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Paramètres du compte",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        ListTile(
          title: const Text("Modifier le profil"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () => context.push(RouteNames.editProfile),
        ),
        const Divider(),
        ListTile(
          title: const Text("Déconnexion"),
          trailing: const Icon(Icons.exit_to_app),
          onTap: () => _handleSignOut(context),
        ),
      ],
    );
  }

  void _handleSignOut(BuildContext context) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      text: 'Êtes-vous sûr de vouloir vous déconnecter ?',
      confirmBtnText: 'Oui',
      cancelBtnText: 'Non',
      onConfirmBtnTap: () {
        context.read<AuthBloc>().add(const AuthEvent.signOut());
        Navigator.of(context).pop(); // Close the alert
      },
    );
  }

  Widget _unauthenticated(BuildContext context) {
    return ListTile(
      title: TextButton(
        onPressed: () {
          context.go(RouteNames.login);
        },
        child: const Text('Connexion'),
      ),
    );
  }
}
