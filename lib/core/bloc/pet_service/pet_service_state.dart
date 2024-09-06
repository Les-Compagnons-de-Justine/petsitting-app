import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'pet_service_state.freezed.dart';
part 'pet_service_state.g.dart';

@freezed
class PetServiceState with _$PetServiceState {
  const factory PetServiceState.initial() = Initial;
  const factory PetServiceState.loading() = Loading;
  const factory PetServiceState.loaded(
    List<PetServiceDTO> petServices, {
    @Default([]) List<PetServiceDTO> selectedServices,
  }) = Loaded;
  const factory PetServiceState.error(String message) = Error;

  factory PetServiceState.fromJson(Map<String, dynamic> json) => _$PetServiceStateFromJson(json);
}
