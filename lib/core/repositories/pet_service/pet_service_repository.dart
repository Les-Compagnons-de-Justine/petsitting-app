import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class PetServiceRepository {
  Future<List<PetServicesPetService>> getAllPetServices();
  Future<List<PetServicesPetService>> getPetServicesByCategory(PetServicesCategory category);
  Future<PetServicesPetService> getPetServiceById(String id);
  Future<PetServicesPetService> createPetService(PetServicesPetService service);
  Future<PetServicesPetService> updatePetService(String id, PetServicesPetService service);
  Future<void> deletePetService(String id);
}
