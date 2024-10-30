// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_sitting_client.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalAnimal _$AnimalAnimalFromJson(Map<String, dynamic> json) => AnimalAnimal(
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      behaviorNotes: json['behaviorNotes'] as String?,
      birthDate: json['birthDate'] as String?,
      breed: json['breed'] as String?,
      childFriendly: json['childFriendly'] as bool?,
      energyLevel: animalEnergyLevelNullableFromJson(json['energyLevel']),
      feedingInstructions: json['feedingInstructions'] as String?,
      gender: animalGenderNullableFromJson(json['gender']),
      houseTrained: json['houseTrained'] as bool?,
      id: json['id'] as String?,
      lastVetVisit: json['lastVetVisit'] as String?,
      medicalConditions: json['medicalConditions'] as String?,
      medications: (json['medications'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      microchipNumber: json['microchipNumber'] as String?,
      name: json['name'] as String?,
      ownerId: json['ownerId'] as String?,
      petFriendly: json['petFriendly'] as bool?,
      photoUrl: json['photoUrl'] as String?,
      size: animalSizeNullableFromJson(json['size']),
      specialInstructions: json['specialInstructions'] as String?,
      specialNeeds: json['specialNeeds'] as String?,
      species: animalSpeciesNullableFromJson(json['species']),
      vaccinationsUpToDate: json['vaccinationsUpToDate'] as bool?,
      veterinarianContact: json['veterinarianContact'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AnimalAnimalToJson(AnimalAnimal instance) =>
    <String, dynamic>{
      'allergies': instance.allergies,
      'behaviorNotes': instance.behaviorNotes,
      'birthDate': instance.birthDate,
      'breed': instance.breed,
      'childFriendly': instance.childFriendly,
      'energyLevel': animalEnergyLevelNullableToJson(instance.energyLevel),
      'feedingInstructions': instance.feedingInstructions,
      'gender': animalGenderNullableToJson(instance.gender),
      'houseTrained': instance.houseTrained,
      'id': instance.id,
      'lastVetVisit': instance.lastVetVisit,
      'medicalConditions': instance.medicalConditions,
      'medications': instance.medications,
      'microchipNumber': instance.microchipNumber,
      'name': instance.name,
      'ownerId': instance.ownerId,
      'petFriendly': instance.petFriendly,
      'photoUrl': instance.photoUrl,
      'size': animalSizeNullableToJson(instance.size),
      'specialInstructions': instance.specialInstructions,
      'specialNeeds': instance.specialNeeds,
      'species': animalSpeciesNullableToJson(instance.species),
      'vaccinationsUpToDate': instance.vaccinationsUpToDate,
      'veterinarianContact': instance.veterinarianContact,
      'weight': instance.weight,
    };

AnimalErrorResponse _$AnimalErrorResponseFromJson(Map<String, dynamic> json) =>
    AnimalErrorResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AnimalErrorResponseToJson(
        AnimalErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

AnimalWithOwner _$AnimalWithOwnerFromJson(Map<String, dynamic> json) =>
    AnimalWithOwner(
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      behaviorNotes: json['behaviorNotes'] as String?,
      birthDate: json['birthDate'] as String?,
      breed: json['breed'] as String?,
      childFriendly: json['childFriendly'] as bool?,
      energyLevel: animalEnergyLevelNullableFromJson(json['energyLevel']),
      feedingInstructions: json['feedingInstructions'] as String?,
      gender: animalGenderNullableFromJson(json['gender']),
      houseTrained: json['houseTrained'] as bool?,
      id: json['id'] as String?,
      lastVetVisit: json['lastVetVisit'] as String?,
      medicalConditions: json['medicalConditions'] as String?,
      medications: (json['medications'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      microchipNumber: json['microchipNumber'] as String?,
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : UsersUser.fromJson(json['owner'] as Map<String, dynamic>),
      petFriendly: json['petFriendly'] as bool?,
      photoUrl: json['photoUrl'] as String?,
      size: animalSizeNullableFromJson(json['size']),
      specialInstructions: json['specialInstructions'] as String?,
      specialNeeds: json['specialNeeds'] as String?,
      species: animalSpeciesNullableFromJson(json['species']),
      vaccinationsUpToDate: json['vaccinationsUpToDate'] as bool?,
      veterinarianContact: json['veterinarianContact'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AnimalWithOwnerToJson(AnimalWithOwner instance) =>
    <String, dynamic>{
      'allergies': instance.allergies,
      'behaviorNotes': instance.behaviorNotes,
      'birthDate': instance.birthDate,
      'breed': instance.breed,
      'childFriendly': instance.childFriendly,
      'energyLevel': animalEnergyLevelNullableToJson(instance.energyLevel),
      'feedingInstructions': instance.feedingInstructions,
      'gender': animalGenderNullableToJson(instance.gender),
      'houseTrained': instance.houseTrained,
      'id': instance.id,
      'lastVetVisit': instance.lastVetVisit,
      'medicalConditions': instance.medicalConditions,
      'medications': instance.medications,
      'microchipNumber': instance.microchipNumber,
      'name': instance.name,
      'owner': instance.owner?.toJson(),
      'petFriendly': instance.petFriendly,
      'photoUrl': instance.photoUrl,
      'size': animalSizeNullableToJson(instance.size),
      'specialInstructions': instance.specialInstructions,
      'specialNeeds': instance.specialNeeds,
      'species': animalSpeciesNullableToJson(instance.species),
      'vaccinationsUpToDate': instance.vaccinationsUpToDate,
      'veterinarianContact': instance.veterinarianContact,
      'weight': instance.weight,
    };

MissionsAnimalService _$MissionsAnimalServiceFromJson(
        Map<String, dynamic> json) =>
    MissionsAnimalService(
      animalId: json['animalId'] as String?,
      date: json['date'] as String?,
      petServiceId: json['petServiceId'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MissionsAnimalServiceToJson(
        MissionsAnimalService instance) =>
    <String, dynamic>{
      'animalId': instance.animalId,
      'date': instance.date,
      'petServiceId': instance.petServiceId,
      'price': instance.price,
    };

MissionsAnimalServiceWithDetails _$MissionsAnimalServiceWithDetailsFromJson(
        Map<String, dynamic> json) =>
    MissionsAnimalServiceWithDetails(
      animal: json['animal'] == null
          ? null
          : AnimalWithOwner.fromJson(json['animal'] as Map<String, dynamic>),
      date: json['date'] as String?,
      petService: json['petService'] == null
          ? null
          : PetServicesPetService.fromJson(
              json['petService'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MissionsAnimalServiceWithDetailsToJson(
        MissionsAnimalServiceWithDetails instance) =>
    <String, dynamic>{
      'animal': instance.animal?.toJson(),
      'date': instance.date,
      'petService': instance.petService?.toJson(),
      'price': instance.price,
    };

MissionsCreateMissionRequest _$MissionsCreateMissionRequestFromJson(
        Map<String, dynamic> json) =>
    MissionsCreateMissionRequest(
      clientId: json['clientId'] as String,
      dailyServices: (json['dailyServices'] as List<dynamic>?)
              ?.map((e) =>
                  MissionsDailyService.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      endDate: json['endDate'] as String,
      location: PlaceDetails.fromJson(json['location'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      startDate: json['startDate'] as String,
    );

Map<String, dynamic> _$MissionsCreateMissionRequestToJson(
        MissionsCreateMissionRequest instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'dailyServices': instance.dailyServices.map((e) => e.toJson()).toList(),
      'endDate': instance.endDate,
      'location': instance.location.toJson(),
      'notes': instance.notes,
      'startDate': instance.startDate,
    };

MissionsDailyService _$MissionsDailyServiceFromJson(
        Map<String, dynamic> json) =>
    MissionsDailyService(
      date: json['date'] as String?,
      services: (json['services'] as List<dynamic>?)
              ?.map((e) =>
                  MissionsAnimalService.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MissionsDailyServiceToJson(
        MissionsDailyService instance) =>
    <String, dynamic>{
      'date': instance.date,
      'services': instance.services?.map((e) => e.toJson()).toList(),
    };

MissionsDailyServiceWithDetails _$MissionsDailyServiceWithDetailsFromJson(
        Map<String, dynamic> json) =>
    MissionsDailyServiceWithDetails(
      date: json['date'] as String?,
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => MissionsAnimalServiceWithDetails.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MissionsDailyServiceWithDetailsToJson(
        MissionsDailyServiceWithDetails instance) =>
    <String, dynamic>{
      'date': instance.date,
      'services': instance.services?.map((e) => e.toJson()).toList(),
    };

MissionsErrorResponse _$MissionsErrorResponseFromJson(
        Map<String, dynamic> json) =>
    MissionsErrorResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$MissionsErrorResponseToJson(
        MissionsErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

MissionsMission _$MissionsMissionFromJson(Map<String, dynamic> json) =>
    MissionsMission(
      clientId: json['clientId'] as String?,
      dailyServices: (json['dailyServices'] as List<dynamic>?)
              ?.map((e) =>
                  MissionsDailyService.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      endDate: json['endDate'] as String?,
      id: json['id'] as String?,
      location: json['location'] == null
          ? null
          : PlaceDetails.fromJson(json['location'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      startDate: json['startDate'] as String?,
      status: missionsStatusNullableFromJson(json['status']),
      vetAssistantId: json['vetAssistantId'] as String?,
    );

Map<String, dynamic> _$MissionsMissionToJson(MissionsMission instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'dailyServices': instance.dailyServices?.map((e) => e.toJson()).toList(),
      'endDate': instance.endDate,
      'id': instance.id,
      'location': instance.location?.toJson(),
      'notes': instance.notes,
      'startDate': instance.startDate,
      'status': missionsStatusNullableToJson(instance.status),
      'vetAssistantId': instance.vetAssistantId,
    };

MissionsMissionWithDetails _$MissionsMissionWithDetailsFromJson(
        Map<String, dynamic> json) =>
    MissionsMissionWithDetails(
      $client: json['client'] == null
          ? null
          : UsersUser.fromJson(json['client'] as Map<String, dynamic>),
      dailyServices: (json['dailyServices'] as List<dynamic>?)
              ?.map((e) => MissionsDailyServiceWithDetails.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      endDate: json['endDate'] as String?,
      id: json['id'] as String?,
      location: json['location'] == null
          ? null
          : PlaceDetails.fromJson(json['location'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      startDate: json['startDate'] as String?,
      status: missionsStatusNullableFromJson(json['status']),
      vetAssistant: json['vetAssistant'] == null
          ? null
          : UsersUser.fromJson(json['vetAssistant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MissionsMissionWithDetailsToJson(
        MissionsMissionWithDetails instance) =>
    <String, dynamic>{
      'client': instance.$client?.toJson(),
      'dailyServices': instance.dailyServices?.map((e) => e.toJson()).toList(),
      'endDate': instance.endDate,
      'id': instance.id,
      'location': instance.location?.toJson(),
      'notes': instance.notes,
      'startDate': instance.startDate,
      'status': missionsStatusNullableToJson(instance.status),
      'vetAssistant': instance.vetAssistant?.toJson(),
    };

MissionsUpdateMissionStatusRequest _$MissionsUpdateMissionStatusRequestFromJson(
        Map<String, dynamic> json) =>
    MissionsUpdateMissionStatusRequest(
      status: missionsStatusFromJson(json['status']),
    );

Map<String, dynamic> _$MissionsUpdateMissionStatusRequestToJson(
        MissionsUpdateMissionStatusRequest instance) =>
    <String, dynamic>{
      'status': missionsStatusToJson(instance.status),
    };

PetServicesErrorResponse _$PetServicesErrorResponseFromJson(
        Map<String, dynamic> json) =>
    PetServicesErrorResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PetServicesErrorResponseToJson(
        PetServicesErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

PetServicesPetService _$PetServicesPetServiceFromJson(
        Map<String, dynamic> json) =>
    PetServicesPetService(
      animalTypes:
          petServicesAnimalTypeListFromJson(json['animalTypes'] as List?),
      basePrice: (json['basePrice'] as num?)?.toDouble(),
      category: petServicesCategoryNullableFromJson(json['category']),
      description: json['description'] as String?,
      durationMinutes: (json['durationMinutes'] as num?)?.toInt(),
      id: json['id'] as String?,
      includedItems: (json['includedItems'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      isCustomDurationAllowed: json['isCustomDurationAllowed'] as bool?,
      isCustomPriceAllowed: json['isCustomPriceAllowed'] as bool?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PetServicesPetServiceToJson(
        PetServicesPetService instance) =>
    <String, dynamic>{
      'animalTypes': petServicesAnimalTypeListToJson(instance.animalTypes),
      'basePrice': instance.basePrice,
      'category': petServicesCategoryNullableToJson(instance.category),
      'description': instance.description,
      'durationMinutes': instance.durationMinutes,
      'id': instance.id,
      'includedItems': instance.includedItems,
      'isCustomDurationAllowed': instance.isCustomDurationAllowed,
      'isCustomPriceAllowed': instance.isCustomPriceAllowed,
      'name': instance.name,
    };

PlaceDetails _$PlaceDetailsFromJson(Map<String, dynamic> json) => PlaceDetails(
      formattedAddress: json['formattedAddress'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PlaceDetailsToJson(PlaceDetails instance) =>
    <String, dynamic>{
      'formattedAddress': instance.formattedAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'name': instance.name,
    };

PlaceErrorResponse _$PlaceErrorResponseFromJson(Map<String, dynamic> json) =>
    PlaceErrorResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PlaceErrorResponseToJson(PlaceErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

PlaceSuggestion _$PlaceSuggestionFromJson(Map<String, dynamic> json) =>
    PlaceSuggestion(
      description: json['description'] as String?,
      placeId: json['placeId'] as String?,
    );

Map<String, dynamic> _$PlaceSuggestionToJson(PlaceSuggestion instance) =>
    <String, dynamic>{
      'description': instance.description,
      'placeId': instance.placeId,
    };

UsersCreateUserRequest _$UsersCreateUserRequestFromJson(
        Map<String, dynamic> json) =>
    UsersCreateUserRequest(
      address: PlaceDetails.fromJson(json['address'] as Map<String, dynamic>),
      creationDate: json['creationDate'] as String?,
      email: json['email'] as String,
      emergencyContact: json['emergencyContact'] as String?,
      firebaseUid: json['firebaseUid'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      notes: json['notes'] as String?,
      phone: json['phone'] as String,
      photoURL: json['photoURL'] as String?,
      preferredCommunicationMethod:
          json['preferredCommunicationMethod'] as String?,
      role: usersUserRoleFromJson(json['role']),
    );

Map<String, dynamic> _$UsersCreateUserRequestToJson(
        UsersCreateUserRequest instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'creationDate': instance.creationDate,
      'email': instance.email,
      'emergencyContact': instance.emergencyContact,
      'firebaseUid': instance.firebaseUid,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'notes': instance.notes,
      'phone': instance.phone,
      'photoURL': instance.photoURL,
      'preferredCommunicationMethod': instance.preferredCommunicationMethod,
      'role': usersUserRoleToJson(instance.role),
    };

UsersErrorResponse _$UsersErrorResponseFromJson(Map<String, dynamic> json) =>
    UsersErrorResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UsersErrorResponseToJson(UsersErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

UsersUpdateUserRequest _$UsersUpdateUserRequestFromJson(
        Map<String, dynamic> json) =>
    UsersUpdateUserRequest(
      address: json['address'] == null
          ? null
          : PlaceDetails.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      emergencyContact: json['emergencyContact'] as String?,
      firebaseUid: json['firebaseUid'] as String?,
      firstname: json['firstname'] as String?,
      id: json['id'] as String?,
      lastname: json['lastname'] as String?,
      notes: json['notes'] as String?,
      phone: json['phone'] as String?,
      photoURL: json['photoURL'] as String?,
      preferredCommunicationMethod:
          json['preferredCommunicationMethod'] as String?,
      updateDate: json['updateDate'] as String?,
    );

Map<String, dynamic> _$UsersUpdateUserRequestToJson(
        UsersUpdateUserRequest instance) =>
    <String, dynamic>{
      'address': instance.address?.toJson(),
      'email': instance.email,
      'emergencyContact': instance.emergencyContact,
      'firebaseUid': instance.firebaseUid,
      'firstname': instance.firstname,
      'id': instance.id,
      'lastname': instance.lastname,
      'notes': instance.notes,
      'phone': instance.phone,
      'photoURL': instance.photoURL,
      'preferredCommunicationMethod': instance.preferredCommunicationMethod,
      'updateDate': instance.updateDate,
    };

UsersUser _$UsersUserFromJson(Map<String, dynamic> json) => UsersUser(
      address: json['address'] == null
          ? null
          : PlaceDetails.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      emergencyContact: json['emergencyContact'] as String?,
      firebaseId: json['firebaseId'] as String?,
      firstname: json['firstname'] as String?,
      id: json['id'] as String?,
      isVerified: json['isVerified'] as bool?,
      lastname: json['lastname'] as String?,
      notes: json['notes'] as String?,
      phone: json['phone'] as String?,
      photoUrl: json['photoUrl'] as String?,
      preferredCommunicationMethod:
          json['preferredCommunicationMethod'] as String?,
      registrationDate: json['registrationDate'] as String?,
      role: usersUserRoleNullableFromJson(json['role']),
    );

Map<String, dynamic> _$UsersUserToJson(UsersUser instance) => <String, dynamic>{
      'address': instance.address?.toJson(),
      'email': instance.email,
      'emergencyContact': instance.emergencyContact,
      'firebaseId': instance.firebaseId,
      'firstname': instance.firstname,
      'id': instance.id,
      'isVerified': instance.isVerified,
      'lastname': instance.lastname,
      'notes': instance.notes,
      'phone': instance.phone,
      'photoUrl': instance.photoUrl,
      'preferredCommunicationMethod': instance.preferredCommunicationMethod,
      'registrationDate': instance.registrationDate,
      'role': usersUserRoleNullableToJson(instance.role),
    };
