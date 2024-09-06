import 'package:petsitting/core/repositories/mission/mission_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class MissionRepositoryImpl implements MissionRepository {
  final PetSittingClient _client;

  MissionRepositoryImpl(this._client);

  @override
  Future<MissionDTO> createMission(MissionCreationDTO missionCreationDTO) async {
    final response = await _client.apiMissionsPost(body: missionCreationDTO);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to create mission: ${response.error}');
    }
  }

  @override
  Future<MissionDTO> getMissionById(String id) async {
    final response = await _client.apiMissionsIdGet(id: id);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get mission: ${response.error}');
    }
  }

  @override
  Future<List<MissionDTO>> getMissionsByClientId(String clientId) async {
    final response = await _client.apiMissionsClientClientIdGet(clientId: clientId);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get missions for client: ${response.error}');
    }
  }

  @override
  Future<List<MissionDTO>> getMissionsByVetAssistantId(String vetAssistantId) async {
    final response = await _client.apiMissionsVetAssistantVetAssistantIdGet(vetAssistantId: vetAssistantId);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get missions for vet assistant: ${response.error}');
    }
  }

  @override
  Future<List<MissionDTO>> getMissionsByDateRange(DateTime startDate, DateTime endDate) async {
    final response = await _client.apiMissionsDateRangeGet(
      startDate: startDate.toIso8601String(),
      endDate: endDate.toIso8601String(),
    );
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get missions by date range: ${response.error}');
    }
  }

  @override
  Future<MissionDTO> startMission(String missionId) async {
    final response = await _client.apiMissionsStatusMissionIdStartPost(missionId: missionId);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to update mission: ${response.error}');
    }
  }

  @override
  Future<MissionDTO> confirmMission(String missionId) async {
    final response = await _client.apiMissionsStatusMissionIdConfirmPost(missionId: missionId);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to update mission: ${response.error}');
    }
  }

  @override
  Future<MissionDTO> completeMission(String missionId) async {
    final response = await _client.apiMissionsStatusMissionIdConfirmPost(missionId: missionId);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to update mission: ${response.error}');
    }
  }
}
