import 'package:petsitting/core/repositories/mission/mission_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class MissionRepositoryImpl implements MissionRepository {
  final PetSittingClient _client;

  MissionRepositoryImpl(this._client);

  @override
  Future<MissionsMissionWithDetails> createMission(MissionsCreateMissionRequest mission) async {
    final response = await _client.apiMissionsPost(mission: mission);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to create mission: ${response.error}');
    }
  }

  @override
  Future<MissionsMissionWithDetails> getMissionById(String id) async {
    final response = await _client.apiMissionsIdGet(id: id);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get mission: ${response.error}');
    }
  }

  @override
  Future<List<MissionsMission>> getMissionsByClientId(String clientId) async {
    final response = await _client.apiMissionsClientClientIdGet(clientId: clientId);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get missions for client: ${response.error}');
    }
  }

  @override
  Future<List<MissionsMissionWithDetails>> getMissionsByVetAssistantId(String vetAssistantId) async {
    final response = await _client.apiMissionsVetAssistantVetAssistantIdGet(vetAssistantId: vetAssistantId);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to get missions for vet assistant: ${response.error}');
    }
  }

  @override
  Future<List<MissionsMissionWithDetails>> getMissionsByDateRange(DateTime startDate, DateTime endDate) async {
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
  Future<MissionsMissionWithDetails> startMission(String missionId) async {
    final response = await _client.apiMissionsIdStatusPut(
      id: missionId,
      status: MissionsUpdateMissionStatusRequest(status: MissionsStatus.statuspending),
    );
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to update mission: ${response.error}');
    }
  }

  @override
  Future<MissionsMissionWithDetails> confirmMission(String missionId) async {
    final response = await _client.apiMissionsIdStatusPut(
      id: missionId,
      status: MissionsUpdateMissionStatusRequest(status: MissionsStatus.statusconfirmed),
    );
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to update mission: ${response.error}');
    }
  }

  @override
  Future<MissionsMissionWithDetails> completeMission(String missionId) async {
    final response = await _client.apiMissionsIdStatusPut(
      id: missionId,
      status: MissionsUpdateMissionStatusRequest(status: MissionsStatus.statuscompleted),
    );
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to update mission: ${response.error}');
    }
  }
}
