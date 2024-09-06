import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_cubit.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_state.dart';
import 'package:petsitting/core/router/role_based_navigation.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/widgets/pet_service_card.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PetServiceListWidget extends StatelessWidget {
  const PetServiceListWidget({super.key});

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
                'Services pour animaux',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                  child: const Text(
                    'Voir tout',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    RoleBasedNavigation.navigateToPetServicesList(context);
                  }),
            ],
          ),
          BlocBuilder<PetServiceCubit, PetServiceState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: Text('Appuyez pour charger les services')),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (petServices, _) => _buildPetServiceContent(context, petServices),
                error: (message) => Center(child: Text('Erreur: $message')),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPetServiceContent(BuildContext context, List<PetServiceDTO> petServices) {
    if (petServices.isEmpty) {
      return _buildEmptyState(context);
    }
    return _buildHorizontalPetServiceList(context, petServices);
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(FontAwesomeIcons.paw, size: 50, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            'Aucun service disponible pour le moment',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalPetServiceList(BuildContext context, List<PetServiceDTO> petServices) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: petServices.length,
        itemBuilder: (context, index) {
          final petService = petServices[index];
          return PetServiceCard(
            petService: petService,
            onTap: () => context.push(RouteNames.petServiceId(petService.id!)),
          );
        },
      ),
    );
  }
}
