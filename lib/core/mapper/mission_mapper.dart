import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

extension MissionMapper on MissionsMissionWithDetails {
  MissionsMission toMission() {
    return MissionsMission(
      id: id,
      clientId: $client!.id,
      vetAssistantId: vetAssistant!.id,
      startDate: startDate,
      endDate: endDate,
      status: status,
      location: location,
      dailyServices: dailyServices!.map((e) => e.toDailyService()).toList(),
    );
  }
}

extension MissionsDailyServiceWithDetailsMapper on MissionsDailyServiceWithDetails {
  MissionsDailyService toDailyService() {
    return MissionsDailyService(
      date: date,
      services: services!.map((e) => e.toService()).toList(),
    );
  }
}

extension MissionsAnimalServiceWithDetailsMapper on MissionsAnimalServiceWithDetails {
  MissionsAnimalService toService() {
    return MissionsAnimalService(
      animalId: animal!.id,
      date: date,
      petServiceId: petService!.id,
      price: price,
    );
  }
}
