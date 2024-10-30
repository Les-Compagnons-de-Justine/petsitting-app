import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jiffy/jiffy.dart';
import 'package:petsitting/core/mapper/mission_mapper.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/core/widgets/place_detail_map.dart';
import 'package:petsitting/core/widgets/status_stepper.dart';
import 'package:petsitting/features/mission/data/repository/mission_detail_repository.dart';
import 'package:petsitting/features/mission/presentation/bloc/mission_detail/mission_detail_cubit.dart';
import 'package:petsitting/features/mission/presentation/bloc/mission_detail/mission_detail_state.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class MissionDetailScreen extends HookWidget {
  final String id;

  const MissionDetailScreen({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MissionDetailCubit(context.read<MissionDetailRepository>())..loadMissionDetail(id),
      child: BlocBuilder<MissionDetailCubit, MissionDetailState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              title: 'Détails de la mission',
            ),
            body: Builder(
              builder: (_) {
                if (state is Initial) {
                  return const SizedBox.shrink();
                } else if (state is Loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is Loaded) {
                  return _buildContent(context, state.mission);
                } else if (state is Error) {
                  return Center(child: Text('Erreur: ${state.message}'));
                }
                return const SizedBox.shrink();
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, MissionsMissionWithDetails mission) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMissionHeader(context, mission),
          const SizedBox(height: 24),
          PlaceDetailsMap(placeDetails: mission.location!),
          const SizedBox(height: 24),
          StatusStepper(mission: mission.toMission()),
          _buildMissionDetails(context, mission),
          const SizedBox(height: 24),
          _buildDailyServices(context, mission),
          const SizedBox(height: 24),
          _buildPaymentSection(context, mission),
        ],
      ),
    );
  }

  Widget _buildMissionHeader(BuildContext context, MissionsMissionWithDetails mission) {
    return SizedBox(
      width: double.infinity,
      child: material.Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mission du ${DateTime.parse(mission.startDate!)} au ${DateTime.parse(mission.endDate!)}',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text('Client: ${mission.$client?.firstname} ${mission.$client?.lastname}'),
              if (mission.vetAssistant != null) Text('ASV: ${mission.vetAssistant!.firstname} ${mission.vetAssistant!.lastname}'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMissionDetails(BuildContext context, MissionsMissionWithDetails mission) {
    return material.Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Détails de la mission', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('Adresse: ${mission.location?.formattedAddress}'),
            if (mission.notes != null && mission.notes!.isNotEmpty) Text('Notes: ${mission.notes}'),
            const SizedBox(height: 8),
            // Text('Prix total: ${mission.price.toStringAsFixed(2)} €', style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildDailyServices(BuildContext context, MissionsMissionWithDetails mission) {
    final groupedDailyService = mission.dailyServices!.groupBy((mission) => mission.date);

    return material.Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Services quotidiens', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            for (var entry in groupedDailyService.entries) _buildDailyServiceGroup(context, DateTime.parse(entry.key!), entry.value),
          ],
        ),
      ),
    );
  }

  Widget _buildDailyServiceGroup(BuildContext context, DateTime date, List<MissionsDailyServiceWithDetails> services) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_formatDate(date!), style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 4),
        for (var dailyService in services)
          for (var service in dailyService.services ?? [])
            Text(
              '${service.animal.name} - ${service.petService.name}: ${service.price.toStringAsFixed(2)} €',
            ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildPaymentSection(BuildContext context, MissionsMissionWithDetails mission) {
    return material.Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Paiement', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return Jiffy.parseFromDateTime(date).format(pattern: 'dd/MM/yyyy');
  }
}
