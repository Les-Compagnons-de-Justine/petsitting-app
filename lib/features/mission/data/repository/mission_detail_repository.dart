import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class MissionDetailRepository {
  Future<MissionDTO> getMissionDetail(String missionId);
}

class MissionDetailRepositoryImpl implements MissionDetailRepository {
  final PetSittingClient _client;

  MissionDetailRepositoryImpl(this._client);

  @override
  Future<MissionDTO> getMissionDetail(String missionId) async {
    final response = await _client.apiMissionsIdGet(id: missionId);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to load mission details');
    }
  }
}
