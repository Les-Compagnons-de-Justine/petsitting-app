import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class StatusStepper extends StatelessWidget {
  final MissionsMission mission;

  const StatusStepper({
    super.key,
    required this.mission,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> steps = [
      {'status': MissionsStatus.statuspending, 'label': 'En attente'},
      {'status': MissionsStatus.statusconfirmed, 'label': 'Confirmé'},
      {'status': MissionsStatus.statusinprogress, 'label': 'En cours'},
      {'status': MissionsStatus.statuscompleted, 'label': 'Terminé'},
    ];

    int currentStep = steps.indexWhere((step) => step['status'] == mission.status);
    if (currentStep == -1) {
      currentStep = 0;
    }

    return EasyStepper(
      activeStep: currentStep,
      stepShape: StepShape.rRectangle,
      stepBorderRadius: 15,
      stepRadius: 26,
      padding: EdgeInsets.zero,
      finishedStepBorderColor: Colors.green,
      finishedStepTextColor: Colors.green,
      finishedStepBackgroundColor: Colors.green,
      activeStepIconColor: Colors.white,
      activeStepBorderColor: Colors.blue,
      activeStepBackgroundColor: Colors.blue,
      unreachedStepBorderColor: Colors.grey,
      unreachedStepTextColor: Colors.grey,
      unreachedStepBackgroundColor: Colors.grey[200],
      steps: steps.map((step) {
        return EasyStep(
          icon: const Icon(
            Icons.check,
            color: Colors.white,
            size: 16,
          ),
          title: step['label'],
        );
      }).toList(),
    );
  }
}
