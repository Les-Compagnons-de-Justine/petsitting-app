import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'mission_service_state.freezed.dart';
part 'mission_service_state.g.dart';

@freezed
class MissionServiceState with _$MissionServiceState {
  const factory MissionServiceState.initial() = _Initial;
  const factory MissionServiceState.loaded(List<MissionsAnimalServiceWithDetails> services) = _Loaded;

  factory MissionServiceState.fromJson(Map<String, dynamic> json) => _$MissionServiceStateFromJson(json);
}
