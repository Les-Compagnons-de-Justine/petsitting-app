part of 'create_mission_bloc.dart';

@freezed
class CreateMissionState with _$CreateMissionState {
  const factory CreateMissionState.initial() = _Initial;
  const factory CreateMissionState.editing(MissionCreation missionCreation) = _Editing;
  const factory CreateMissionState.loading() = _Loading;
  const factory CreateMissionState.success(MissionDTO mission) = _Success;
  const factory CreateMissionState.failure(String error) = _Failure;
}
