import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/extensions/string_extension.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/widgets/status_stepper.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class MissionItem extends StatelessWidget {
  const MissionItem({super.key, required this.mission});

  final MissionsMission mission;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(RouteNames.missionDetailId(mission.id!)),
      child: material.Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildMissionHeader(mission),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: StatusStepper(mission: mission),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMissionHeader(MissionsMission mission) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.blue[100],
          child: FaIcon(
            FontAwesomeIcons.paw,
            color: Colors.blue[700],
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            'Mission du ${mission.startDate!.toStandardDate()} au ${mission.endDate!.toStandardDate()}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
