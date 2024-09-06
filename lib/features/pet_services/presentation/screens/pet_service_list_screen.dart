import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_cubit.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_state.dart';
import 'package:petsitting/core/extensions/pet_services_extension.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PetServicesListScreen extends HookWidget {
  const PetServicesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCategory = useState<PetServiceDTOCategory?>(null);
    final selectedAnimalTypes = useState<List<PetServiceDTOAnimalTypes>>([]);

    useEffect(() {
      context.read<PetServiceCubit>().loadPetServices();
      return null;
    }, []);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Services pour animaux',
      ),
      body: Column(
        children: [
          _buildFilters(context, selectedCategory, selectedAnimalTypes),
          Expanded(
            child: BlocBuilder<PetServiceCubit, PetServiceState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text('Chargement initial...')),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (services, _) => _buildServiceList(context, services, selectedCategory.value, selectedAnimalTypes.value),
                  error: (message) => Center(child: Text('Erreur: $message')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilters(
    BuildContext context,
    ValueNotifier<PetServiceDTOCategory?> selectedCategory,
    ValueNotifier<List<PetServiceDTOAnimalTypes>> selectedAnimalTypes,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          DropdownButton<PetServiceDTOCategory>(
            isExpanded: true,
            value: selectedCategory.value,
            hint: const Text('Filtrer par catégorie'),
            onChanged: (PetServiceDTOCategory? newValue) {
              selectedCategory.value = newValue;
              _applyFilters(context, selectedCategory.value, selectedAnimalTypes.value);
            },
            items: PetServiceDTOCategory.values.filteredValues.map((category) {
              return DropdownMenuItem<PetServiceDTOCategory>(
                value: category,
                child: Text(category.toReadableString),
              );
            }).toList(),
          ),
          Wrap(
            spacing: 8.0,
            children: PetServiceDTOAnimalTypes.values.filteredValues.map((type) {
              return FilterChip(
                label: Text(type.toReadableString),
                selected: selectedAnimalTypes.value.contains(type),
                onSelected: (bool selected) {
                  if (selected) {
                    selectedAnimalTypes.value = [...selectedAnimalTypes.value, type];
                  } else {
                    selectedAnimalTypes.value = selectedAnimalTypes.value.where((t) => t != type).toList();
                  }
                  _applyFilters(context, selectedCategory.value, selectedAnimalTypes.value);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceList(
    BuildContext context,
    List<PetServiceDTO> services,
    PetServiceDTOCategory? category,
    List<PetServiceDTOAnimalTypes> animalTypes,
  ) {
    final filteredServices = services.where((service) {
      bool categoryMatch = category == null || service.category == category;
      bool animalTypeMatch = animalTypes.isEmpty || animalTypes.any((type) => service.animalTypes.contains(type));
      return categoryMatch && animalTypeMatch;
    }).toList();

    return ListView.builder(
      itemCount: filteredServices.length,
      itemBuilder: (context, index) {
        final service = filteredServices[index];
        return ListTile(
          title: Text(service.name),
          subtitle: Text('${service.basePrice}€ - ${service.durationMinutes} min'),
          onTap: () => context.push(RouteNames.petServiceId(service.id!)),
        );
      },
    );
  }

  void _applyFilters(
    BuildContext context,
    PetServiceDTOCategory? category,
    List<PetServiceDTOAnimalTypes> animalTypes,
  ) {
    context.read<PetServiceCubit>().loadPetServices(
          category: category,
          animalTypes: animalTypes,
        );
  }
}
