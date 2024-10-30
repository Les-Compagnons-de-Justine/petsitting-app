import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petsitting/core/repositories/mission/mission_repository.dart';
import 'package:petsitting/features/create_mission/presentation/models/mission_creation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'create_mission_bloc.freezed.dart';
part 'create_mission_event.dart';
part 'create_mission_state.dart';

class CreateMissionBloc extends Bloc<CreateMissionEvent, CreateMissionState> {
  final MissionRepository _missionRepository;

  CreateMissionBloc({required MissionRepository missionRepository})
      : _missionRepository = missionRepository,
        super(const CreateMissionState.initial()) {
    on<CreateMissionEvent>(_onEvent);
  }

  Future<void> _onEvent(
    CreateMissionEvent event,
    Emitter<CreateMissionState> emit,
  ) async {
    await event.map(
      updateInformation: (e) => _updateInformation(e, emit),
      createMission: (e) => _createMission(e, emit),
      reset: (e) => _reset(emit),
    );
  }

  Future<void> _updateInformation(
    _UpdateInformation event,
    Emitter<CreateMissionState> emit,
  ) async {
    emit(CreateMissionState.editing(event.missionCreation));
  }

  Future<void> _createMission(
    _CreateMission event,
    Emitter<CreateMissionState> emit,
  ) async {
    emit(const CreateMissionState.loading());

    try {
      final missionCreationDTO = _convertToMissionCreationDTO(event.missionCreation);
      final mission = await _missionRepository.createMission(missionCreationDTO);
      emit(CreateMissionState.success(mission));
    } catch (e) {
      emit(CreateMissionState.failure(e.toString()));
    }
  }

  Future<void> _reset(Emitter<CreateMissionState> emit) async {
    emit(const CreateMissionState.initial());
  }

  MissionsCreateMissionRequest _convertToMissionCreationDTO(MissionCreation missionCreation) {
    return MissionsCreateMissionRequest(
      startDate: missionCreation.startDate!.toIso8601String(),
      endDate: missionCreation.endDate!.toIso8601String(),
      dailyServices: missionCreation.dailyServices!,
      notes: missionCreation.notes,
      location: missionCreation.location!,
      clientId: missionCreation.customer!.id!,
    );
  }
}
