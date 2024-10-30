import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/core/repositories/mission/mission_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'missions_cubit.freezed.dart';

class MissionsCubit extends Cubit<MissionsState> {
  final MissionRepository _missionRepository;

  MissionsCubit(this._missionRepository) : super(const MissionsState.initial());

  Future<void> fetchMissions(String? clientId) async {
    if (clientId == null) {
      emit(const MissionsState.Unauthenticated());
      return;
    }

    emit(const MissionsState.loading());
    try {
      final missions = await _missionRepository.getMissionsByClientId(clientId);
      emit(MissionsState.loaded(missions));
    } catch (e) {
      emit(MissionsState.error(e.toString()));
    }
  }
}

@freezed
class MissionsState with _$MissionsState {
  const factory MissionsState.initial() = _Initial;
  const factory MissionsState.loading() = _Loading;
  const factory MissionsState.loaded(List<MissionsMission> missions) = _Loaded;
  const factory MissionsState.error(String message) = _Error;
  const factory MissionsState.Unauthenticated() = _Unauthenticated;
}
