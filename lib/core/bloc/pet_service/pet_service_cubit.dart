// lib/cubits/pet_service_cubit.dart
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_state.dart';
import 'package:petsitting/core/repositories/pet_service/pet_service_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PetServiceCubit extends HydratedCubit<PetServiceState> {
  final PetServiceRepository _petServiceRepository;

  PetServiceCubit(this._petServiceRepository) : super(const PetServiceState.initial());

  Future<void> loadPetServices({
    PetServiceDTOCategory? category,
    List<PetServiceDTOAnimalTypes>? animalTypes,
  }) async {
    emit(const PetServiceState.loading());
    try {
      List<PetServiceDTO> services;
      if (category != null) {
        services = await _petServiceRepository.getPetServicesByCategory(category);
      } else {
        services = await _petServiceRepository.getAllPetServices();
      }

      if (animalTypes != null && animalTypes.isNotEmpty) {
        services = services.where((service) => service.animalTypes.any((type) => animalTypes.contains(type))).toList();
      }

      emit(PetServiceState.loaded(services, selectedServices: []));
    } catch (e) {
      emit(PetServiceState.error(e.toString()));
    }
  }

  Future<void> loadPetServicesByCategory(PetServiceDTOCategory category) async {
    emit(const PetServiceState.loading());
    try {
      final petServices = await _petServiceRepository.getPetServicesByCategory(category);
      emit(PetServiceState.loaded(petServices, selectedServices: []));
    } catch (e) {
      emit(PetServiceState.error(e.toString()));
    }
  }

  void toggleServiceSelection(PetServiceDTO service) {
    final currentState = state;
    if (currentState is Loaded) {
      final selectedServices = List<PetServiceDTO>.from(currentState.selectedServices);
      if (selectedServices.contains(service)) {
        selectedServices.remove(service);
      } else {
        selectedServices.add(service);
      }
      emit(currentState.copyWith(selectedServices: selectedServices));
    }
  }

  void clearSelection() {
    final currentState = state;
    if (currentState is Loaded) {
      emit(currentState.copyWith(selectedServices: []));
    }
  }

  Future<void> createPetService(PetServiceDTO service) async {
    try {
      await _petServiceRepository.createPetService(service);
      loadPetServices();
    } catch (e) {
      emit(PetServiceState.error(e.toString()));
    }
  }

  Future<void> updatePetService(PetServiceDTO service) async {
    try {
      await _petServiceRepository.updatePetService(service.id!, service);
      loadPetServices();
    } catch (e) {
      emit(PetServiceState.error(e.toString()));
    }
  }

  Future<void> deletePetService(String id) async {
    try {
      await _petServiceRepository.deletePetService(id);
      loadPetServices();
    } catch (e) {
      emit(PetServiceState.error(e.toString()));
    }
  }

  @override
  PetServiceState? fromJson(Map<String, dynamic> json) {
    return PetServiceState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PetServiceState state) {
    return state.toJson();
  }
}
