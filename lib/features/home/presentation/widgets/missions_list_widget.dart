import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/features/home/presentation/bloc/missions/missions_cubit.dart';
import 'package:petsitting/features/home/presentation/widgets/mission_item.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class MissionsListWidget extends StatelessWidget {
  const MissionsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Missions en cours',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextButton(onPressed: () => context.push(RouteNames.missions), child: Text("Voir tout")),
            ],
          ),
          const SizedBox(height: 16),
          BlocBuilder<MissionsCubit, MissionsState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (missions) => missions.isEmpty ? _buildEmptyState() : _buildMissionsList(missions, context),
                Unauthenticated: () => Text("Vous devez être connecté pour accéder à cette page."),
                error: (message) => Center(child: Text('Erreur: $message')),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return SizedBox(
      height: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.calendarXmark, size: 50, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              'Aucune mission en cours',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMissionsList(List<MissionDTO> missions, BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        itemCount: missions.length,
        controller: PageController(viewportFraction: 1),
        itemBuilder: (context, index) => MissionItem(mission: missions[index]),
      ),
    );
  }
}
