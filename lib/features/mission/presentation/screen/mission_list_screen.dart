import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/features/home/presentation/bloc/missions/missions_cubit.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class MissionListScreen extends HookWidget {
  const MissionListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedFilter = useState<String>('all');

    return Scaffold(
      body: Column(
        children: [
          _buildFilterChips(selectedFilter),
          Expanded(
            child: BlocBuilder<MissionsCubit, MissionsState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (missions) => _buildMissionsList(missions, selectedFilter.value),
                  error: (message) => Center(child: Text('Erreur: $message')),
                  Unauthenticated: () => Text("Vous devez être connecté pour accéder à cette page."),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChips(ValueNotifier<String> selectedFilter) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8.0,
        children: [
          FilterChip(
            label: const Text('Toutes'),
            selected: selectedFilter.value == 'all',
            onSelected: (bool selected) {
              selectedFilter.value = 'all';
            },
          ),
          FilterChip(
            label: const Text('À venir'),
            selected: selectedFilter.value == 'upcoming',
            onSelected: (bool selected) {
              selectedFilter.value = 'upcoming';
            },
          ),
          FilterChip(
            label: const Text('En cours'),
            selected: selectedFilter.value == 'ongoing',
            onSelected: (bool selected) {
              selectedFilter.value = 'ongoing';
            },
          ),
          FilterChip(
            label: const Text('Terminées'),
            selected: selectedFilter.value == 'completed',
            onSelected: (bool selected) {
              selectedFilter.value = 'completed';
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMissionsList(List<MissionsMission> missions, String filter) {
    final filteredMissions = _filterMissions(missions, filter);

    if (filteredMissions.isEmpty) {
      return _buildEmptyState(filter);
    }

    return ListView.builder(
      itemCount: filteredMissions.length,
      itemBuilder: (context, index) {
        final mission = filteredMissions[index];
        return _buildMissionCard(context, mission);
      },
    );
  }

  List<MissionsMission> _filterMissions(List<MissionsMission> missions, String filter) {
    final now = DateTime.now();
    switch (filter) {
      case 'upcoming':
        return missions.where((m) => DateTime.parse(m.startDate!).isAfter(now)).toList();
      case 'ongoing':
        return missions.where((m) => DateTime.parse(m.startDate!).isBefore(now) && DateTime.parse(m.endDate!).isAfter(now)).toList();
      case 'completed':
        return missions.where((m) => DateTime.parse(m.endDate!).isBefore(now)).toList();
      default:
        return missions;
    }
  }

  Widget _buildMissionCard(BuildContext context, MissionsMission mission) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        title: Text(mission.location?.formattedAddress ?? 'Adresse inconnue'),
        subtitle: Text('Du ${_formatDate(DateTime.parse(mission.startDate!))} au ${DateTime.parse(mission.endDate!)}'),
        // trailing: Text('${mission.price.toStringAsFixed(2)}€'),
        onTap: () {
          context.push(RouteNames.missionDetailId(mission.id!));
        },
      ),
    );
  }

  Widget _buildEmptyState(String filter) {
    String message;
    switch (filter) {
      case 'upcoming':
        message = 'Vous n\'avez pas de missions à venir.';
        break;
      case 'ongoing':
        message = 'Vous n\'avez pas de missions en cours.';
        break;
      case 'completed':
        message = 'Vous n\'avez pas de missions terminées.';
        break;
      default:
        message = 'Vous n\'avez pas de missions.';
    }

    return Center(
      child: Text(message, style: const TextStyle(fontSize: 18)),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
