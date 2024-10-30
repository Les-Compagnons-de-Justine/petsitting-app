// lib/core/repositories/animal/animal_repository_impl.dart

import 'package:petsitting/core/repositories/animal/animal_repository.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class AnimalRepositoryImpl implements AnimalRepository {
  final PetSittingClient _client;

  AnimalRepositoryImpl(this._client);

  @override
  Future<List<AnimalWithOwner>> getAnimalsByOwnerId(String ownerId) async {
    final response = await _client.apiAnimalsOwnerOwnerIdGet(ownerId: ownerId);
    if (response.isSuccessful) {
      return response.body ?? [];
    } else {
      throw Exception('Failed to load animals: ${response.error}');
    }
  }

  @override
  Future<AnimalWithOwner> getAnimalById(String id) async {
    final response = await _client.apiAnimalsIdGet(id: id);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to load animal: ${response.error}');
    }
  }

  @override
  Future<AnimalWithOwner> createAnimal(AnimalAnimal animal) async {
    final response = await _client.apiAnimalsPost(animal: animal);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to create animal: ${response.error}');
    }
  }

  @override
  Future<AnimalWithOwner> updateAnimal(AnimalAnimal animal) async {
    final response = await _client.apiAnimalsPut(animal: animal);
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to update animal: ${response.error}');
    }
  }

  @override
  Future<void> deleteAnimal(String id) async {
    final response = await _client.apiAnimalsIdDelete(id: id);
    if (!response.isSuccessful) {
      throw Exception('Failed to delete animal: ${response.error}');
    }
  }
}
