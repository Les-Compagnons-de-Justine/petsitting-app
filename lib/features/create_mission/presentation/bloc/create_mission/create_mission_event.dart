part of 'create_mission_bloc.dart';

@freezed
class CreateMissionEvent with _$CreateMissionEvent {
  const factory CreateMissionEvent.createMission(MissionCreation missionCreation) = _CreateMission;
  const factory CreateMissionEvent.updateInformation(MissionCreation missionCreation) = _UpdateInformation;
  const factory CreateMissionEvent.reset() = _Reset;
}
