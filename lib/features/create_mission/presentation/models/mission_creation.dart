import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'mission_creation.freezed.dart';

@freezed
class MissionCreation with _$MissionCreation {
  const factory MissionCreation({
    UserDTO? customer,
    DateTime? startDate,
    DateTime? endDate,
    List<DailyServiceCreationDTO>? dailyServices,
    String? notes,
    PlaceDetailsDTO? location,
  }) = _MissionCreation;
}
