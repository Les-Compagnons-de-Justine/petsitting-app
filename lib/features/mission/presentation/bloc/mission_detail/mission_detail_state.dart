import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'mission_detail_state.freezed.dart';

@freezed
class MissionDetailState with _$MissionDetailState {
  const factory MissionDetailState.initial() = Initial;
  const factory MissionDetailState.loading() = Loading;
  const factory MissionDetailState.loaded({required MissionsMissionWithDetails mission}) = Loaded;
  const factory MissionDetailState.error(String message) = Error;
}
