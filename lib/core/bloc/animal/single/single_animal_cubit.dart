import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/bloc/animal/single/single_animal_state.dart';
import 'package:petsitting/core/repositories/animal/animal_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class SingleAnimalCubit extends Cubit<SingleAnimalState> {
  final AnimalRepository _animalRepository;

  SingleAnimalCubit(this._animalRepository)
      : super(const SingleAnimalState.initial());

  Future<void> addAnimal(AnimalCreateDTO animal) async {
    emit(SingleAnimalState.loading());

    try {
      final createdAnimal = await _animalRepository.createAnimal(animal);
      emit(SingleAnimalState.added(createdAnimal));
    } catch (e) {
      emit(SingleAnimalState.error(
          'Erreur lors de l\'ajout de l\'animal: ${e.toString()}'));
    }
  }

  Future<void> updateAnimal(AnimalUpdateDTO animal) async {
    emit(SingleAnimalState.loading());

    try {
      final updatedAnimal = await _animalRepository.updateAnimal(animal);
      emit(SingleAnimalState.updated(updatedAnimal));
    } catch (e) {
      emit(SingleAnimalState.error(
          'Erreur lors de la mise à jour de l\'animal: ${e.toString()}'));
    }
  }

  Future<void> deleteAnimal(String animalId) async {
    emit(SingleAnimalState.loading());

    try {
      await _animalRepository.deleteAnimal(animalId);
      emit(SingleAnimalState.deleted());
    } catch (e) {
      emit(SingleAnimalState.error(
          'Erreur lors de la suppression de l\'animal: ${e.toString()}'));
    }
  }
}
