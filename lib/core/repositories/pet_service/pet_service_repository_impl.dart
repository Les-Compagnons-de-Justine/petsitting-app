import 'package:petsitting/core/repositories/pet_service/pet_service_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PetServiceRepositoryImpl implements PetServiceRepository {
  final PetSittingClient _apiClient;

  PetServiceRepositoryImpl(this._apiClient);

  @override
  Future<List<PetServicesPetService>> getAllPetServices() async {
    try {
      final response = await _apiClient.apiPetServicesGet();
      if (response.isSuccessful) {
        return response.bodyOrThrow;
      } else {
        throw Exception('Failed to load pet services: ${response.error}');
      }
    } catch (e) {
      throw Exception('Failed to load pet services: $e');
    }
  }

  @override
  Future<PetServicesPetService> getPetServiceById(String id) async {
    try {
      final response = await _apiClient.apiPetServicesIdGet(id: id);
      if (response.isSuccessful) {
        return response.bodyOrThrow;
      } else {
        throw Exception('Failed to load pet service: ${response.error}');
      }
    } catch (e) {
      throw Exception('Failed to load pet service: $e');
    }
  }

  @override
  Future<List<PetServicesPetService>> getPetServicesByCategory(PetServicesCategory category) async {
    try {
      final response = await _apiClient.apiPetServicesCategoryCategoryGet(category: category.name);
      if (response.isSuccessful) {
        return response.bodyOrThrow;
      } else {
        throw Exception('Failed to load pet services by category: ${response.error}');
      }
    } catch (e) {
      throw Exception('Failed to load pet services by category: $e');
    }
  }

  @override
  Future<PetServicesPetService> createPetService(PetServicesPetService service) async {
    try {
      final response = await _apiClient.apiPetServicesPost(service: service);
      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw Exception('Failed to create pet service: ${response.error}');
      }
    } catch (e) {
      throw Exception('Failed to create pet service: $e');
    }
  }

  @override
  Future<PetServicesPetService> updatePetService(String id, PetServicesPetService service) async {
    try {
      final response = await _apiClient.apiPetServicesIdPut(id: id, service: service);
      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw Exception('Failed to update pet service: ${response.error}');
      }
    } catch (e) {
      throw Exception('Failed to update pet service: $e');
    }
  }

  @override
  Future<void> deletePetService(String id) async {
    try {
      final response = await _apiClient.apiPetServicesIdDelete(id: id);
      if (!response.isSuccessful) {
        throw Exception('Failed to delete pet service: ${response.error}');
      }
    } catch (e) {
      throw Exception('Failed to delete pet service: $e');
    }
  }
}
