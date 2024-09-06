import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/repositories/user/user_repository.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:petsitting/features/settings/presentation/widgets/user_edit_form_widget.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:quickalert/quickalert.dart';

class ProfileScreen extends HookWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = useMemoized(() => UserManager().currentUser);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Modifier le profil',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: UserManager().currentUser != null
              ? UserEditFormWidget(
                  user: user!,
                  onUserUpdated: (updatedUser) => _handleUserUpdate(context, updatedUser),
                )
              : Text('Vous devez être connecté pour accéder à cette page.'),
        ),
      ),
    );
  }

  void _handleUserUpdate(BuildContext context, UserUpdateDTO updatedUser) {
    context.read<UserRepository>().updateUser(updatedUser.id, updatedUser).then((_) {
      if (context.mounted) {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          text: 'Profil mis à jour avec succès',
          onConfirmBtnTap: () {
            context.read<AuthBloc>().add(const AuthEvent.checkStatus());
            Navigator.of(context).pop(); // Retour à l'écran précédent
            Navigator.of(context).pop(); // Ferme l'alerte
          },
        );
      }
    }).catchError((error) {
      if (context.mounted) {
        QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          text: 'Erreur lors de la mise à jour du profil: $error',
        );
      }
    });
  }
}
