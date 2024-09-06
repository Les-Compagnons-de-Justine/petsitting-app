import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_state.dart';
import 'package:petsitting/core/repositories/animal/animal_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class AnimalListCubit extends Cubit<AnimalListState> {
  final AnimalRepository _animalRepository;

  AnimalListCubit(this._animalRepository)
      : super(const AnimalListState.initial());

  Future<void> loadAnimals(String? userId) async {
    if (userId == null) {
      emit(const AnimalListState.unauthenticated());
      return;
    }

    emit(const AnimalListState.loading());

    try {
      final animals = await _animalRepository.getAnimalsByOwnerId(userId);
      emit(AnimalListState.loaded(animals));
    } catch (e) {
      emit(AnimalListState.error(
          'Erreur lors du chargement des animaux: ${e.toString()}'));
    }
  }

  void addAnimalToList(AnimalDTO animal) {
    state.maybeWhen(
      loaded: (currentAnimals) {
        emit(AnimalListState.loaded([...currentAnimals, animal]));
      },
      orElse: () {
        emit(AnimalListState.loaded([animal]));
      },
    );
  }

  void updateAnimalInList(AnimalDTO updatedAnimal) {
    state.maybeWhen(
      loaded: (currentAnimals) {
        final updatedAnimals = currentAnimals
            .map((a) => a.id == updatedAnimal.id ? updatedAnimal : a)
            .toList();
        emit(AnimalListState.loaded(updatedAnimals));
      },
      orElse: () {},
    );
  }

  void removeAnimalFromList(String animalId) {
    state.maybeWhen(
      loaded: (currentAnimals) {
        final updatedAnimals =
            currentAnimals.where((a) => a.id != animalId).toList();
        emit(AnimalListState.loaded(updatedAnimals));
      },
      orElse: () {},
    );
  }
}
