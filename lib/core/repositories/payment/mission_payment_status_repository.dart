import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class MissionPaymentRepository {
  Future<ApiMissionsIdPaymentStatusGet$Response> getMissionPaymentStatus(String missionId);
}

class MissionPaymentRepositoryImpl implements MissionPaymentRepository {
  final PetSittingClient _client;

  MissionPaymentRepositoryImpl(this._client);

  @override
  Future<ApiMissionsIdPaymentStatusGet$Response> getMissionPaymentStatus(String missionId) async {
    try {
      final response = await _client.apiMissionsIdPaymentStatusGet(id: missionId);
      if (response.isSuccessful) {
        return _convertStringToEnum(response.bodyOrThrow);
      } else {
        throw Exception('Failed to get payment status: ${response.error}');
      }
    } catch (e) {
      throw Exception('Error getting payment status: $e');
    }
  }
}

ApiMissionsIdPaymentStatusGet$Response _convertStringToEnum(String status) {
  switch (status.toUpperCase()) {
    case 'SUCCEEDED':
      return ApiMissionsIdPaymentStatusGet$Response.succeeded;
    case 'PROCESSING':
      return ApiMissionsIdPaymentStatusGet$Response.processing;
    case 'REQUIRES_PAYMENT_METHOD':
      return ApiMissionsIdPaymentStatusGet$Response.requiresPaymentMethod;
    case 'REQUIRES_CONFIRMATION':
      return ApiMissionsIdPaymentStatusGet$Response.requiresConfirmation;
    case 'CANCELED':
      return ApiMissionsIdPaymentStatusGet$Response.canceled;
    default:
      return ApiMissionsIdPaymentStatusGet$Response.unknown;
  }
}
