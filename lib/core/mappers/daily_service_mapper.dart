import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

extension DailyServiceMapper on DailyServiceDTO {
  DailyServiceCreationDTO toCreationDTO() {
    return DailyServiceCreationDTO(
      date: date,
      services: services.map((MissionAnimalServiceDTO service) => service.toCreationDTO()).toList(),
    );
  }
}

extension MissionAnimalServiceMapper on MissionAnimalServiceDTO {
  MissionAnimalServiceCreationDTO toCreationDTO() {
    return MissionAnimalServiceCreationDTO(
      animalId: animal.id!,
      petServiceId: petService.id!,
      price: price,
      date: date,
    );
  }
}
