import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class PetServiceRepository {
  Future<List<PetServiceDTO>> getAllPetServices();
  Future<List<PetServiceDTO>> getPetServicesByCategory(PetServiceDTOCategory category);
  Future<PetServiceDTO> getPetServiceById(String id);
  Future<PetServiceDTO> createPetService(PetServiceDTO service);
  Future<PetServiceDTO> updatePetService(String id, PetServiceDTO service);
  Future<void> deletePetService(String id);
}
