import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_cubit.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_state.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/features/pet_management/presentation/widgets/pet_component.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class AnimalListScreen extends HookWidget {
  const AnimalListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserManager().currentUser;

    useEffect(() {
      if (context.read<AnimalListCubit>().state.status == AnimalListStatus.initial) {
        context.read<AnimalListCubit>().loadAnimals(user?.id);
      }
      return null;
    }, []);

    return Scaffold(
      body: BlocConsumer<AnimalListCubit, AnimalListState>(
        listener: (context, state) {
          if (state.status == AnimalListStatus.error) {
            QuickAlert.show(
              context: context,
              type: QuickAlertType.error,
              text: 'Erreur lors du chargement des animaux.',
            );
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ResponsiveGridList(
              minItemWidth: 220,
              children: state.animals.map((animal) {
                return PetComponent(
                  animal: animal,
                  onTap: () {
                    context.navigate(RouteNames.animalDetailId(animal.id!));
                  },
                );
              }).toList(),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.navigate(RouteNames.createAnimal);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
