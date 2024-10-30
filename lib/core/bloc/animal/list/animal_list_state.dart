import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'animal_list_state.freezed.dart';

enum AnimalListStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class AnimalListState with _$AnimalListState {
  const factory AnimalListState({
    required AnimalListStatus status,
    required List<AnimalWithOwner> animals,
  }) = _AnimalListState;

  // Factory method for initial state
  factory AnimalListState.initial() => const AnimalListState(
        status: AnimalListStatus.initial,
        animals: [],
      );
}
