import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class MissionRepository {
  Future<MissionsMissionWithDetails> createMission(MissionsCreateMissionRequest mission);

  Future<MissionsMissionWithDetails> getMissionById(String id);

  Future<List<MissionsMission>> getMissionsByClientId(String clientId);

  Future<List<MissionsMissionWithDetails>> getMissionsByVetAssistantId(String vetAssistantId);

  Future<List<MissionsMissionWithDetails>> getMissionsByDateRange(DateTime startDate, DateTime endDate);

  Future<MissionsMissionWithDetails> startMission(String missionId);

  Future<MissionsMissionWithDetails> confirmMission(String missionId);

  Future<MissionsMissionWithDetails> completeMission(String missionId);
}
