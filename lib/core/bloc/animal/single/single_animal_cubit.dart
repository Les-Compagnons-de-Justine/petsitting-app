import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/bloc/animal/single/single_animal_state.dart';
import 'package:petsitting/core/repositories/animal/animal_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class SingleAnimalCubit extends Cubit<SingleAnimalState> {
  final AnimalRepository _animalRepository;

  SingleAnimalCubit(this._animalRepository) : super(Initial());

  Future<void> addAnimal(AnimalAnimal animal) async {
    emit(Loading());

    try {
      final createdAnimal = await _animalRepository.createAnimal(animal);
      emit(Added(createdAnimal));
    } catch (e) {
      emit(Error('Erreur lors de l\'ajout de l\'animal: ${e.toString()}'));
    }
  }

  Future<void> updateAnimal(AnimalAnimal animal) async {
    emit(Loading());

    try {
      final updatedAnimal = await _animalRepository.updateAnimal(animal);
      emit(Updated(updatedAnimal));
    } catch (e) {
      emit(Error('Erreur lors de la mise à jour de l\'animal: ${e.toString()}'));
    }
  }

  Future<void> deleteAnimal(String animalId) async {
    emit(Loading());

    try {
      await _animalRepository.deleteAnimal(animalId);
      emit(Deleted());
    } catch (e) {
      emit(Error('Erreur lors de la suppression de l\'animal: ${e.toString()}'));
    }
  }
}
