import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/bloc/payment_status/mission_payment_status_cubit.dart';
import 'package:petsitting/core/bloc/payment_status/mission_payment_status_state.dart';
import 'package:petsitting/core/extensions/datetime_ext.dart';
import 'package:petsitting/core/repositories/payment/mission_payment_status_repository.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/widgets/status_stepper.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class MissionItem extends StatelessWidget {
  const MissionItem({super.key, required this.mission});

  final MissionDTO mission;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MissionPaymentStatusCubit(
        context.read<MissionPaymentRepository>(),
        mission.id!,
      ),
      child: BlocBuilder<MissionPaymentStatusCubit, MissionPaymentStatusState>(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: InkWell(
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
                    Text(
                      'ASV: ${mission.vetAssistant?.firstname ?? ''} ${mission.vetAssistant?.lastname ?? ''}',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: SingleChildScrollView(
                        child: StatusStepper(mission: mission),
                      ),
                    ),
                    state.maybeWhen(
                      loaded: (status) {
                        if (status is PaymentIntentsStatus != PaymentIntentsStatus.Succeeded) {
                          return Text(
                            'Paiement en attente',
                            style: TextStyle(color: Colors.red[700]),
                          );
                        } else {
                          return Text(
                            'Paiement effectué',
                            style: TextStyle(color: Colors.green[700]),
                          );
                        }
                      },
                      orElse: () => SizedBox.shrink(),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${mission.price.toStringAsFixed(2)} €',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              color: Colors.green[700],
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildMissionHeader(MissionDTO mission) {
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
            'Mission du ${mission.startDate.formatDate()} au ${mission.endDate.formatDate()}',
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
