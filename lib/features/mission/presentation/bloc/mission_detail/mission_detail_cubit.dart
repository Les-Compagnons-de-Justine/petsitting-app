import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/features/mission/data/repository/mission_detail_repository.dart';
import 'package:petsitting/features/mission/presentation/bloc/mission_detail/mission_detail_state.dart';

class MissionDetailCubit extends Cubit<MissionDetailState> {
  final MissionDetailRepository _repository;

  MissionDetailCubit(this._repository) : super(Initial());

  Future<void> loadMissionDetail(String missionId) async {
    emit(Loading());
    try {
      final mission = await _repository.getMissionDetail(missionId);
      emit(Loaded(mission: mission));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }
}
