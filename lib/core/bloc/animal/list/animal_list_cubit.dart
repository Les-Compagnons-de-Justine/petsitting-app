import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_state.dart';
import 'package:petsitting/core/repositories/animal/animal_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class AnimalListCubit extends Cubit<AnimalListState> {
  final AnimalRepository _animalRepository;

  AnimalListCubit(this._animalRepository) : super(AnimalListState.initial());

  Future<void> loadAnimals(String? userId) async {
    if (userId == null) {
      emit(state.copyWith(status: AnimalListStatus.error));
      return;
    }

    emit(state.copyWith(status: AnimalListStatus.loading));

    try {
      final animals = await _animalRepository.getAnimalsByOwnerId(userId);
      emit(state.copyWith(status: AnimalListStatus.loaded, animals: animals));
    } catch (e) {
      emit(state.copyWith(status: AnimalListStatus.error));
    }
  }

  void addAnimalToList(AnimalWithOwner animal) {
    emit(state.copyWith(status: AnimalListStatus.loaded, animals: [...state.animals, animal]));
  }

  void updateAnimalInList(AnimalWithOwner updatedAnimal) {
    emit(state.copyWith(
      status: AnimalListStatus.loaded,
      animals: state.animals.map((a) => a.id == updatedAnimal.id ? updatedAnimal : a).toList(),
    ));
  }

  void removeAnimalFromList(String animalId) {
    emit(state.copyWith(
      status: AnimalListStatus.loaded,
      animals: state.animals.where((a) => a.id != animalId).toList(),
    ));
  }
}
