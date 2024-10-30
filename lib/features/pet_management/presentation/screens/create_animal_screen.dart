import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_cubit.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_state.dart';
import 'package:petsitting/core/bloc/animal/single/single_animal_cubit.dart';
import 'package:petsitting/core/mapper/animal_mapper.dart';
import 'package:petsitting/core/repositories/animal/animal_repository.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/features/pet_management/presentation/widgets/animal_form_widget.dart';
import 'package:quickalert/quickalert.dart';

class CreateAnimalScreen extends StatelessWidget {
  const CreateAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserManager().currentUser;

    return BlocProvider(
      create: (context) => AnimalListCubit(
        RepositoryProvider.of<AnimalRepository>(context),
      ),
      child: BlocListener<AnimalListCubit, AnimalListState>(
        listener: (context, state) {
          if (state.status == AnimalListStatus.error) {
            QuickAlert.show(
              context: context,
              type: QuickAlertType.error,
              text: 'Erreur lors du chargement des animaux.',
            );
          }
        },
        child: Scaffold(
          appBar: CustomAppBar(
            title: 'Créer un animal',
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: AnimalFormWidget(
              ownerId: user!.id!,
              onCreate: (animalCreateDTO) {
                context.read<SingleAnimalCubit>().addAnimal(AnimalMapper.mapAnimalWithOwnerToAnimalAnimal(animalCreateDTO));
              },
            ),
          ),
        ),
      ),
    );
  }
}
