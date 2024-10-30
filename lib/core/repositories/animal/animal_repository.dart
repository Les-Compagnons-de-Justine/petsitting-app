import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

abstract class AnimalRepository {
  Future<List<AnimalWithOwner>> getAnimalsByOwnerId(String ownerId);
  Future<AnimalWithOwner> getAnimalById(String id);
  Future<AnimalWithOwner> createAnimal(AnimalAnimal animal);
  Future<AnimalWithOwner> updateAnimal(AnimalAnimal animal);
  Future<void> deleteAnimal(String id);
}
