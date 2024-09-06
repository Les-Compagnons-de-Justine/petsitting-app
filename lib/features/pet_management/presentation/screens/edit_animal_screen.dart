import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_cubit.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_state.dart';
import 'package:petsitting/core/bloc/animal/single/single_animal_cubit.dart';
import 'package:petsitting/core/bloc/animal/single/single_animal_state.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/features/pet_management/presentation/widgets/animal_form_widget.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class EditAnimalScreen extends StatelessWidget {
  final String petId;

  const EditAnimalScreen({
    super.key,
    required this.petId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Modifier l\'animal',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocListener<SingleAnimalCubit, SingleAnimalState>(
          listener: (context, state) {
            state.maybeWhen(
              loading: () => QuickAlert.show(
                context: context,
                type: QuickAlertType.loading,
              ),
              updated: (animal) {
                // close the loading dialog
                context.closeDialog();
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.success,
                  text: "Animal mis à jour avec succès",
                  confirmBtnText: 'OK',
                  onConfirmBtnTap: () {
                    context.closeDialog();
                    context
                        .read<AnimalListCubit>()
                        .loadAnimals(UserManager().currentUser!.id);
                    GoRouter.of(context).go(RouteNames.animals);
                  },
                );
              },
              error: (message) {
                // close the loading dialog
                context.closeDialog();
                return QuickAlert.show(
                  context: context,
                  type: QuickAlertType.error,
                  text: message,
                  confirmBtnText: 'OK',
                  onConfirmBtnTap: () {
                    context.closeDialog();
                  },
                );
              },
              orElse: () {},
            );
          },
          child: BlocBuilder<AnimalListCubit, AnimalListState>(
            builder: (context, state) {
              final AnimalDTO? animal = state.maybeWhen(
                loaded: (animals) =>
                    animals.firstWhere((animal) => animal.id == petId),
                orElse: () => null,
              );

              return AnimalFormWidget(
                animal: animal,
                ownerId: animal!.owner.id,
                onUpdate: (updatedAnimal) {
                  context.read<SingleAnimalCubit>().updateAnimal(updatedAnimal);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}