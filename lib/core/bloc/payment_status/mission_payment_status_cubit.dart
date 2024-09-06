import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/bloc/payment_status/mission_payment_status_state.dart';
import 'package:petsitting/core/repositories/payment/mission_payment_status_repository.dart';

class MissionPaymentStatusCubit extends Cubit<MissionPaymentStatusState> {
  final MissionPaymentRepository _repository;
  final String missionId;

  MissionPaymentStatusCubit(this._repository, this.missionId) : super(const MissionPaymentStatusState.initial()) {
    getPaymentStatus();
  }

  Future<void> getPaymentStatus() async {
    emit(const MissionPaymentStatusState.loading());
    try {
      final status = await _repository.getMissionPaymentStatus(missionId);
      emit(MissionPaymentStatusState.loaded(status));
    } catch (e) {
      emit(MissionPaymentStatusState.error(e.toString()));
    }
  }
}
