import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_cubit.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_state.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/features/pet_services/presentation/widgets/pet_service_edit_widget.dart';

class PetServiceEditScreen extends StatelessWidget {
  final String petServiceId;

  const PetServiceEditScreen({super.key, required this.petServiceId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetServiceCubit, PetServiceState>(builder: (context, state) {
      final service = state.maybeWhen(
        loaded: (services, _) => services.firstWhere((service) => service.id == petServiceId),
        orElse: () => null,
      );

      return Scaffold(
        appBar: CustomAppBar(
          title: 'Service',
        ),
        body: PetServiceEditWidget(
          service: service,
          onSave: (_) {},
        ),
      );
    });
  }
}
