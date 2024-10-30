import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

part 'mission_creation.freezed.dart';

@freezed
class MissionCreation with _$MissionCreation {
  const factory MissionCreation({
    UsersUser? customer,
    DateTime? startDate,
    DateTime? endDate,
    List<MissionsDailyService>? dailyServices,
    String? notes,
    PlaceDetails? location,
  }) = _MissionCreation;
}
