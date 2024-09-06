import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/create_mission/create_mission_bloc.dart';
import 'package:petsitting/features/create_mission/presentation/models/mission_creation.dart';
import 'package:petsitting/features/create_mission/presentation/views/create_mission_information_view.dart';
import 'package:petsitting/features/create_mission/presentation/views/create_mission_services_view.dart';
import 'package:petsitting/features/home/presentation/bloc/missions/missions_cubit.dart';
import 'package:quickalert/quickalert.dart';

class CreateMissionScreen extends HookWidget {
  final String step;

  const CreateMissionScreen({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      if (step == 'information') {
        // TODO : fix
        context.read<CreateMissionBloc>().add(const CreateMissionEvent.reset());
      }
      return null;
    }, []);

    return BlocConsumer<CreateMissionBloc, CreateMissionState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            QuickAlert.show(
              context: context,
              title: 'Chargement',
              text: 'Création de la mission en cours...',
              type: QuickAlertType.loading,
            );
          },
          success: (mission) {
            QuickAlert.show(
              context: context,
              title: 'Succès',
              text: 'La mission a été créée avec succès',
              type: QuickAlertType.success,
              confirmBtnText: "OK",
              onConfirmBtnTap: () {
                context.read<MissionsCubit>().fetchMissions(mission.$client.id);
                context.go(RouteNames.home);
              },
            );
          },
          failure: (message) {
            QuickAlert.show(
              context: context,
              title: 'Erreur',
              text: message,
              type: QuickAlertType.error,
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final missionCreation = state.maybeWhen(
          editing: (mission) => mission,
          orElse: () => const MissionCreation(),
        );

        return Scaffold(
          appBar: CustomAppBar(
            title: _getAppBarTitle(step),
            leading: _buildBackButton(context, step),
          ),
          body: _buildStep(context, missionCreation),
        );
      },
    );
  }

  Widget _buildStep(BuildContext context, MissionCreation missionCreation) {
    switch (step) {
      case 'information':
        return CreateMissionInformationView(
          initialData: missionCreation,
          onMissionInformationSubmitted: (updatedMission) {
            context.read<CreateMissionBloc>().add(CreateMissionEvent.updateInformation(updatedMission));
            context.go(RouteNames.createMissionServices);
          },
        );
      case 'services':
        return CreateMissionServicesView(
          missionCreation: missionCreation,
          onSubmit: (finalMission) {
            context.read<CreateMissionBloc>().add(CreateMissionEvent.createMission(finalMission));
          },
        );
      default:
        return const Center(child: Text('Étape inconnue'));
    }
  }

  String _getAppBarTitle(String step) {
    switch (step) {
      case 'information':
        return 'Informations de la mission';
      case 'services':
        return 'Services de la mission';
      default:
        return 'Créer une mission';
    }
  }

  Widget? _buildBackButton(BuildContext context, String step) {
    if (step == 'information') {
      return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => context.go(RouteNames.home),
      );
    } else if (step == 'services') {
      return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => context.go(RouteNames.createMission),
      );
    }
    return null;
  }
}
