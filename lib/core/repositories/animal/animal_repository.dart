import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class AnimalRepository {
  Future<List<AnimalDTO>> getAnimalsByOwnerId(String ownerId);
  Future<AnimalDTO> getAnimalById(String id);
  Future<AnimalDTO> createAnimal(AnimalCreateDTO animal);
  Future<AnimalDTO> updateAnimal(AnimalUpdateDTO animal);
  Future<void> deleteAnimal(String id);
}
