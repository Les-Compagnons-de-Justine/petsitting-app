import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'single_animal_state.freezed.dart';
part 'single_animal_state.g.dart';

@freezed
class SingleAnimalState with _$SingleAnimalState {
  const factory SingleAnimalState.initial() = Initial;
  const factory SingleAnimalState.loading() = Loading;
  const factory SingleAnimalState.added(AnimalDTO animal) = Added;
  const factory SingleAnimalState.updated(AnimalDTO animal) = Updated;
  const factory SingleAnimalState.deleted() = Deleted;
  const factory SingleAnimalState.error(String message) = Error;

  factory SingleAnimalState.fromJson(Map<String, dynamic> json) =>
      _$SingleAnimalStateFromJson(json);
}