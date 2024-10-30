// lib/features/create_mission/widgets/pet_service_selection_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_cubit.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_state.dart';

class PetServiceSelectionWidget extends StatelessWidget {
  const PetServiceSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetServiceCubit, PetServiceState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (services, selectedServices) => ListView.builder(
            shrinkWrap: true,
            itemCount: services.length,
            itemBuilder: (context, index) {
              final service = services[index];
              final isSelected = selectedServices.contains(service);
              return ListTile(
                title: Text(service.name!),
                subtitle: Text('${service.description} - ${service.basePrice} €'),
                trailing: isSelected ? const Icon(Icons.check) : null,
                onTap: () => context.read<PetServiceCubit>().toggleServiceSelection(service),
              );
            },
          ),
          error: (message) => Center(child: Text('Erreur: $message')),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
