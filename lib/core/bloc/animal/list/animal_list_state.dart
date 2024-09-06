import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'animal_list_state.freezed.dart';
part 'animal_list_state.g.dart';

@freezed
class AnimalListState with _$AnimalListState {
  const factory AnimalListState.initial() = Initial;
  const factory AnimalListState.unauthenticated() = Unauthenticated;
  const factory AnimalListState.loading() = Loading;
  const factory AnimalListState.loaded(List<AnimalDTO> animals) = Loaded;
  const factory AnimalListState.error(String message) = Error;

  factory AnimalListState.fromJson(Map<String, dynamic> json) =>
      _$AnimalListStateFromJson(json);
}
