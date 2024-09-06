import "package:collection/collection.dart";
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_cubit.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_state.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_cubit.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_state.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/create_mission/create_mission_bloc.dart';
import 'package:petsitting/features/create_mission/presentation/models/mission_creation.dart';
import 'package:petsitting/features/create_mission/widgets/add_service_form.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class CreateMissionServicesView extends HookWidget {
  final MissionCreation missionCreation;
  final Function(MissionCreation) onSubmit;

  const CreateMissionServicesView({
    super.key,
    required this.missionCreation,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final dailyServicesNotifier = useState<List<DailyServiceDTO>>([]);

    useEffect(() {
      context.read<AnimalListCubit>().loadAnimals(missionCreation.customer!.id);
      context.read<PetServiceCubit>().loadPetServices();
      return null;
    }, []);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Ajouter des services',
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          BlocBuilder<PetServiceCubit, PetServiceState>(
            builder: (context, petServiceState) {
              final petServices = petServiceState.maybeWhen(
                loaded: (values, _) => values,
                orElse: () => <PetServiceDTO>[],
              );

              return BlocBuilder<AnimalListCubit, AnimalListState>(
                builder: (context, animalState) {
                  return animalState.maybeWhen(
                    error: (error) {
                      return Text('Erreur : $error');
                    },
                    loaded: (values) {
                      return ElevatedButton(
                        onPressed: () {
                          _showAddServiceForm(
                            context,
                            dailyServicesNotifier,
                            values,
                            petServices,
                          );
                        },
                        child: const Text('Ajouter un service'),
                      );
                    },
                    orElse: () {
                      return const Text("Aucun animal disponible.");
                    },
                  );
                },
              );
            },
          ),
          const SizedBox(height: 16),
          _buildDailyServicesList(dailyServicesNotifier.value),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () =>
                _submitMission(context, dailyServicesNotifier.value),
            child: const Text('Créer la mission'),
          ),
        ],
      ),
    );
  }

  void _showAddServiceForm(
    BuildContext context,
    ValueNotifier<List<DailyServiceDTO>> dailyServicesNotifier,
    List<AnimalDTO> animals,
    List<PetServiceDTO> petServices,
  ) {
    showBarModalBottomSheet(
      context: context,
      builder: (context) {
        return AddServiceForm(
          dailyServicesNotifier: dailyServicesNotifier,
          missionStartDate: missionCreation.startDate!,
          missionEndDate: missionCreation.endDate!,
          animals: animals,
          petServices: petServices,
        );
      },
    );
  }

  Widget _buildDailyServicesList(List<DailyServiceDTO> dailyServices) {
    if (dailyServices.isEmpty) {
      return const Text("Aucun service ajouté.");
    }

    // Group the daily services by date for better readability
    final groupedServices = groupBy(
        dailyServices, (DailyServiceDTO dailyService) => dailyService.date);

    return Column(
      children: groupedServices.entries.map((entry) {
        // For each group of services on the same date
        final date = entry.key;
        final servicesOnDate = entry.value;

        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date : ${date.toLocal().toString().split(' ')[0]}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ...servicesOnDate.expand(
                    (dailyService) => dailyService.services.map((service) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: ListTile(
                              title: Text(
                                  '${service.petService.name} - ${service.price.toStringAsFixed(2)} €'),
                              leading: const Icon(Icons
                                  .pets), // Optionnel, icône pour plus de visuel
                            ),
                          );
                        })),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  // Méthode pour soumettre la mission avec tous les services
  void _submitMission(
      BuildContext context, List<DailyServiceDTO> dailyServices) {
    context
        .read<CreateMissionBloc>()
        .add(CreateMissionEvent.createMission(missionCreation));
  }
}
