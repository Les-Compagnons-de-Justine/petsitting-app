import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class MissionRepository {
  Future<MissionDTO> createMission(MissionCreationDTO missionCreationDTO);

  Future<MissionDTO> getMissionById(String id);

  Future<List<MissionDTO>> getMissionsByClientId(String clientId);

  Future<List<MissionDTO>> getMissionsByVetAssistantId(String vetAssistantId);

  Future<List<MissionDTO>> getMissionsByDateRange(DateTime startDate, DateTime endDate);

  Future<MissionDTO> startMission(String missionId);

  Future<MissionDTO> confirmMission(String missionId);

  Future<MissionDTO> completeMission(String missionId);
}
