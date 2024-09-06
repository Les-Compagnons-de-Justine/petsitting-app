import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.enums.swagger.dart';

part 'mission_payment_status_state.freezed.dart';

@freezed
class MissionPaymentStatusState with _$MissionPaymentStatusState {
  const factory MissionPaymentStatusState.initial() = Initial;
  const factory MissionPaymentStatusState.loading() = Loading;
  const factory MissionPaymentStatusState.loaded(ApiMissionsIdPaymentStatusGet$Response status) = Loaded;
  const factory MissionPaymentStatusState.error(String message) = Error;
}