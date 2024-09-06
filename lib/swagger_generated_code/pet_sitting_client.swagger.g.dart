// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_sitting_client.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetailsDTO _$PlaceDetailsDTOFromJson(Map<String, dynamic> json) =>
    PlaceDetailsDTO(
      name: json['name'] as String,
      formattedAddress: json['formattedAddress'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$PlaceDetailsDTOToJson(PlaceDetailsDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'formattedAddress': instance.formattedAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

UserUpdateDTO _$UserUpdateDTOFromJson(Map<String, dynamic> json) =>
    UserUpdateDTO(
      id: json['id'] as String,
      firebaseUid: json['firebaseUid'] as String,
      lastname: json['lastname'] as String,
      firstname: json['firstname'] as String,
      email: json['email'] as String,
      address:
          PlaceDetailsDTO.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      role: userUpdateDTORoleFromJson(json['role']),
      photoUrl: json['photoUrl'] as String?,
      emergencyContact: json['emergencyContact'] as String?,
      preferredCommunicationMethod:
          json['preferredCommunicationMethod'] as String?,
      isVerified: json['isVerified'] as bool,
      registrationDate: DateTime.parse(json['registrationDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$UserUpdateDTOToJson(UserUpdateDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firebaseUid': instance.firebaseUid,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'email': instance.email,
      'address': instance.address.toJson(),
      'phone': instance.phone,
      'role': userUpdateDTORoleToJson(instance.role),
      'photoUrl': instance.photoUrl,
      'emergencyContact': instance.emergencyContact,
      'preferredCommunicationMethod': instance.preferredCommunicationMethod,
      'isVerified': instance.isVerified,
      'registrationDate': _dateToJson(instance.registrationDate),
      'notes': instance.notes,
    };

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => UserDTO(
      id: json['id'] as String,
      firebaseId: json['firebaseId'] as String?,
      lastname: json['lastname'] as String,
      firstname: json['firstname'] as String,
      email: json['email'] as String,
      address:
          PlaceDetailsDTO.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      role: userDTORoleFromJson(json['role']),
      photoUrl: json['photoUrl'] as String?,
      emergencyContact: json['emergencyContact'] as String?,
      preferredCommunicationMethod:
          json['preferredCommunicationMethod'] as String?,
      isVerified: json['isVerified'] as bool,
      registrationDate: DateTime.parse(json['registrationDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$UserDTOToJson(UserDTO instance) => <String, dynamic>{
      'id': instance.id,
      'firebaseId': instance.firebaseId,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'email': instance.email,
      'address': instance.address.toJson(),
      'phone': instance.phone,
      'role': userDTORoleToJson(instance.role),
      'photoUrl': instance.photoUrl,
      'emergencyContact': instance.emergencyContact,
      'preferredCommunicationMethod': instance.preferredCommunicationMethod,
      'isVerified': instance.isVerified,
      'registrationDate': _dateToJson(instance.registrationDate),
      'notes': instance.notes,
    };

LocalTime _$LocalTimeFromJson(Map<String, dynamic> json) => LocalTime(
      hour: (json['hour'] as num?)?.toInt(),
      minute: (json['minute'] as num?)?.toInt(),
      second: (json['second'] as num?)?.toInt(),
      nano: (json['nano'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LocalTimeToJson(LocalTime instance) => <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
      'second': instance.second,
      'nano': instance.nano,
    };

PlaceDetails _$PlaceDetailsFromJson(Map<String, dynamic> json) => PlaceDetails(
      name: json['name'] as String,
      formattedAddress: json['formattedAddress'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$PlaceDetailsToJson(PlaceDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'formattedAddress': instance.formattedAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

RecurringScheduleDTO _$RecurringScheduleDTOFromJson(
        Map<String, dynamic> json) =>
    RecurringScheduleDTO(
      id: json['id'] as String?,
      vetAssistant: User.fromJson(json['vetAssistant'] as Map<String, dynamic>),
      dayOfWeek: recurringScheduleDTODayOfWeekFromJson(json['dayOfWeek']),
      startTime: LocalTime.fromJson(json['startTime'] as Map<String, dynamic>),
      endTime: LocalTime.fromJson(json['endTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecurringScheduleDTOToJson(
        RecurringScheduleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vetAssistant': instance.vetAssistant.toJson(),
      'dayOfWeek': recurringScheduleDTODayOfWeekToJson(instance.dayOfWeek),
      'startTime': instance.startTime.toJson(),
      'endTime': instance.endTime.toJson(),
    };

Timestamp _$TimestampFromJson(Map<String, dynamic> json) => Timestamp(
      seconds: (json['seconds'] as num?)?.toInt(),
      nanos: (json['nanos'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TimestampToJson(Timestamp instance) => <String, dynamic>{
      'seconds': instance.seconds,
      'nanos': instance.nanos,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String?,
      firebaseId: json['firebaseId'] as String?,
      lastname: json['lastname'] as String,
      firstname: json['firstname'] as String,
      email: json['email'] as String,
      address: PlaceDetails.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      role: userRoleFromJson(json['role']),
      photoUrl: json['photoUrl'] as String?,
      emergencyContact: json['emergencyContact'] as String?,
      preferredCommunicationMethod:
          json['preferredCommunicationMethod'] as String?,
      isVerified: json['isVerified'] as bool,
      registrationDate:
          Timestamp.fromJson(json['registrationDate'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'firebaseId': instance.firebaseId,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'email': instance.email,
      'address': instance.address.toJson(),
      'phone': instance.phone,
      'role': userRoleToJson(instance.role),
      'photoUrl': instance.photoUrl,
      'emergencyContact': instance.emergencyContact,
      'preferredCommunicationMethod': instance.preferredCommunicationMethod,
      'isVerified': instance.isVerified,
      'registrationDate': instance.registrationDate.toJson(),
      'notes': instance.notes,
    };

PetServiceDTO _$PetServiceDTOFromJson(Map<String, dynamic> json) =>
    PetServiceDTO(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      basePrice: (json['basePrice'] as num).toDouble(),
      category: petServiceDTOCategoryFromJson(json['category']),
      animalTypes:
          petServiceDTOAnimalTypesListFromJson(json['animalTypes'] as List?),
      isCustomPriceAllowed: json['isCustomPriceAllowed'] as bool,
      isCustomDurationAllowed: json['isCustomDurationAllowed'] as bool,
      includedItems: (json['includedItems'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$PetServiceDTOToJson(PetServiceDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'durationMinutes': instance.durationMinutes,
      'basePrice': instance.basePrice,
      'category': petServiceDTOCategoryToJson(instance.category),
      'animalTypes': petServiceDTOAnimalTypesListToJson(instance.animalTypes),
      'isCustomPriceAllowed': instance.isCustomPriceAllowed,
      'isCustomDurationAllowed': instance.isCustomDurationAllowed,
      'includedItems': instance.includedItems,
    };

AnimalUpdateDTO _$AnimalUpdateDTOFromJson(Map<String, dynamic> json) =>
    AnimalUpdateDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      ownerId: json['ownerId'] as String,
      species: animalUpdateDTOSpeciesFromJson(json['species']),
      breed: json['breed'] as String?,
      gender: animalUpdateDTOGenderNullableFromJson(json['gender']),
      birthDate: DateTime.parse(json['birthDate'] as String),
      weight: (json['weight'] as num?)?.toDouble(),
      size: animalUpdateDTOSizeNullableFromJson(json['size']),
      microchipNumber: json['microchipNumber'] as String?,
      vaccinationsUpToDate: json['vaccinationsUpToDate'] as bool?,
      medicalConditions: json['medicalConditions'] as String?,
      medications: (json['medications'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      specialNeeds: json['specialNeeds'] as String?,
      feedingInstructions: json['feedingInstructions'] as String?,
      behaviorNotes: json['behaviorNotes'] as String?,
      energyLevel:
          animalUpdateDTOEnergyLevelNullableFromJson(json['energyLevel']),
      houseTrained: json['houseTrained'] as bool?,
      petFriendly: json['petFriendly'] as bool?,
      childFriendly: json['childFriendly'] as bool?,
      photoUrl: json['photoUrl'] as String?,
      veterinarianContact: json['veterinarianContact'] as String?,
      lastVetVisit: json['lastVetVisit'] == null
          ? null
          : DateTime.parse(json['lastVetVisit'] as String),
      specialInstructions: json['specialInstructions'] as String?,
    );

Map<String, dynamic> _$AnimalUpdateDTOToJson(AnimalUpdateDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ownerId': instance.ownerId,
      'species': animalUpdateDTOSpeciesToJson(instance.species),
      'breed': instance.breed,
      'gender': animalUpdateDTOGenderNullableToJson(instance.gender),
      'birthDate': _dateToJson(instance.birthDate),
      'weight': instance.weight,
      'size': animalUpdateDTOSizeNullableToJson(instance.size),
      'microchipNumber': instance.microchipNumber,
      'vaccinationsUpToDate': instance.vaccinationsUpToDate,
      'medicalConditions': instance.medicalConditions,
      'medications': instance.medications,
      'allergies': instance.allergies,
      'specialNeeds': instance.specialNeeds,
      'feedingInstructions': instance.feedingInstructions,
      'behaviorNotes': instance.behaviorNotes,
      'energyLevel':
          animalUpdateDTOEnergyLevelNullableToJson(instance.energyLevel),
      'houseTrained': instance.houseTrained,
      'petFriendly': instance.petFriendly,
      'childFriendly': instance.childFriendly,
      'photoUrl': instance.photoUrl,
      'veterinarianContact': instance.veterinarianContact,
      'lastVetVisit': _dateToJson(instance.lastVetVisit),
      'specialInstructions': instance.specialInstructions,
    };

AnimalDTO _$AnimalDTOFromJson(Map<String, dynamic> json) => AnimalDTO(
      id: json['id'] as String?,
      name: json['name'] as String,
      species: animalDTOSpeciesFromJson(json['species']),
      breed: json['breed'] as String?,
      gender: animalDTOGenderNullableFromJson(json['gender']),
      birthDate: DateTime.parse(json['birthDate'] as String),
      weight: (json['weight'] as num?)?.toDouble(),
      size: animalDTOSizeNullableFromJson(json['size']),
      microchipNumber: json['microchipNumber'] as String?,
      vaccinationsUpToDate: json['vaccinationsUpToDate'] as bool?,
      medicalConditions: json['medicalConditions'] as String?,
      medications: (json['medications'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      specialNeeds: json['specialNeeds'] as String?,
      feedingInstructions: json['feedingInstructions'] as String?,
      behaviorNotes: json['behaviorNotes'] as String?,
      energyLevel: animalDTOEnergyLevelNullableFromJson(json['energyLevel']),
      houseTrained: json['houseTrained'] as bool?,
      petFriendly: json['petFriendly'] as bool?,
      childFriendly: json['childFriendly'] as bool?,
      photoUrl: json['photoUrl'] as String?,
      veterinarianContact: json['veterinarianContact'] as String?,
      lastVetVisit: json['lastVetVisit'] == null
          ? null
          : DateTime.parse(json['lastVetVisit'] as String),
      specialInstructions: json['specialInstructions'] as String?,
      owner: UserDTO.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimalDTOToJson(AnimalDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'species': animalDTOSpeciesToJson(instance.species),
      'breed': instance.breed,
      'gender': animalDTOGenderNullableToJson(instance.gender),
      'birthDate': _dateToJson(instance.birthDate),
      'weight': instance.weight,
      'size': animalDTOSizeNullableToJson(instance.size),
      'microchipNumber': instance.microchipNumber,
      'vaccinationsUpToDate': instance.vaccinationsUpToDate,
      'medicalConditions': instance.medicalConditions,
      'medications': instance.medications,
      'allergies': instance.allergies,
      'specialNeeds': instance.specialNeeds,
      'feedingInstructions': instance.feedingInstructions,
      'behaviorNotes': instance.behaviorNotes,
      'energyLevel': animalDTOEnergyLevelNullableToJson(instance.energyLevel),
      'houseTrained': instance.houseTrained,
      'petFriendly': instance.petFriendly,
      'childFriendly': instance.childFriendly,
      'photoUrl': instance.photoUrl,
      'veterinarianContact': instance.veterinarianContact,
      'lastVetVisit': _dateToJson(instance.lastVetVisit),
      'specialInstructions': instance.specialInstructions,
      'owner': instance.owner.toJson(),
    };

UserCreationDTO _$UserCreationDTOFromJson(Map<String, dynamic> json) =>
    UserCreationDTO(
      firebaseUid: json['firebaseUid'] as String?,
      lastname: json['lastname'] as String,
      firstname: json['firstname'] as String,
      email: json['email'] as String,
      address:
          PlaceDetailsDTO.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      role: userCreationDTORoleFromJson(json['role']),
      photoUrl: json['photoUrl'] as String?,
      emergencyContact: json['emergencyContact'] as String?,
      preferredCommunicationMethod:
          json['preferredCommunicationMethod'] as String?,
      isVerified: json['isVerified'] as bool,
      registrationDate: DateTime.parse(json['registrationDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$UserCreationDTOToJson(UserCreationDTO instance) =>
    <String, dynamic>{
      'firebaseUid': instance.firebaseUid,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'email': instance.email,
      'address': instance.address.toJson(),
      'phone': instance.phone,
      'role': userCreationDTORoleToJson(instance.role),
      'photoUrl': instance.photoUrl,
      'emergencyContact': instance.emergencyContact,
      'preferredCommunicationMethod': instance.preferredCommunicationMethod,
      'isVerified': instance.isVerified,
      'registrationDate': _dateToJson(instance.registrationDate),
      'notes': instance.notes,
    };

DailyServiceCreationDTO _$DailyServiceCreationDTOFromJson(
        Map<String, dynamic> json) =>
    DailyServiceCreationDTO(
      date: DateTime.parse(json['date'] as String),
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => MissionAnimalServiceCreationDTO.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DailyServiceCreationDTOToJson(
        DailyServiceCreationDTO instance) =>
    <String, dynamic>{
      'date': _dateToJson(instance.date),
      'services': instance.services.map((e) => e.toJson()).toList(),
    };

MissionAnimalServiceCreationDTO _$MissionAnimalServiceCreationDTOFromJson(
        Map<String, dynamic> json) =>
    MissionAnimalServiceCreationDTO(
      animalId: json['animalId'] as String,
      petServiceId: json['petServiceId'] as String,
      date: DateTime.parse(json['date'] as String),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$MissionAnimalServiceCreationDTOToJson(
        MissionAnimalServiceCreationDTO instance) =>
    <String, dynamic>{
      'animalId': instance.animalId,
      'petServiceId': instance.petServiceId,
      'date': _dateToJson(instance.date),
      'price': instance.price,
    };

MissionCreationDTO _$MissionCreationDTOFromJson(Map<String, dynamic> json) =>
    MissionCreationDTO(
      clientId: json['clientId'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      dailyServices: (json['dailyServices'] as List<dynamic>?)
              ?.map((e) =>
                  DailyServiceCreationDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      notes: json['notes'] as String?,
      location:
          PlaceDetailsDTO.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MissionCreationDTOToJson(MissionCreationDTO instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'startDate': _dateToJson(instance.startDate),
      'endDate': _dateToJson(instance.endDate),
      'dailyServices': instance.dailyServices.map((e) => e.toJson()).toList(),
      'notes': instance.notes,
      'location': instance.location.toJson(),
    };

DailyServiceDTO _$DailyServiceDTOFromJson(Map<String, dynamic> json) =>
    DailyServiceDTO(
      date: DateTime.parse(json['date'] as String),
      services: (json['services'] as List<dynamic>?)
              ?.map((e) =>
                  MissionAnimalServiceDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DailyServiceDTOToJson(DailyServiceDTO instance) =>
    <String, dynamic>{
      'date': _dateToJson(instance.date),
      'services': instance.services.map((e) => e.toJson()).toList(),
    };

MissionAnimalServiceDTO _$MissionAnimalServiceDTOFromJson(
        Map<String, dynamic> json) =>
    MissionAnimalServiceDTO(
      animal: AnimalDTO.fromJson(json['animal'] as Map<String, dynamic>),
      petService:
          PetServiceDTO.fromJson(json['petService'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$MissionAnimalServiceDTOToJson(
        MissionAnimalServiceDTO instance) =>
    <String, dynamic>{
      'animal': instance.animal.toJson(),
      'petService': instance.petService.toJson(),
      'date': instance.date.toIso8601String(),
      'price': instance.price,
    };

MissionDTO _$MissionDTOFromJson(Map<String, dynamic> json) => MissionDTO(
      id: json['id'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      $client: UserDTO.fromJson(json['client'] as Map<String, dynamic>),
      vetAssistant: json['vetAssistant'] == null
          ? null
          : UserDTO.fromJson(json['vetAssistant'] as Map<String, dynamic>),
      dailyServices: (json['dailyServices'] as List<dynamic>?)
              ?.map((e) => DailyServiceDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      missionStatus: missionDTOMissionStatusFromJson(json['missionStatus']),
      paymentIntentClientSecret: json['paymentIntentClientSecret'] as String?,
      notes: json['notes'] as String?,
      price: (json['price'] as num).toDouble(),
      location:
          PlaceDetailsDTO.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MissionDTOToJson(MissionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': _dateToJson(instance.startDate),
      'endDate': _dateToJson(instance.endDate),
      'client': instance.$client.toJson(),
      'vetAssistant': instance.vetAssistant?.toJson(),
      'dailyServices': instance.dailyServices.map((e) => e.toJson()).toList(),
      'missionStatus': missionDTOMissionStatusToJson(instance.missionStatus),
      'paymentIntentClientSecret': instance.paymentIntentClientSecret,
      'notes': instance.notes,
      'price': instance.price,
      'location': instance.location.toJson(),
    };

AnimalCreateDTO _$AnimalCreateDTOFromJson(Map<String, dynamic> json) =>
    AnimalCreateDTO(
      name: json['name'] as String,
      ownerId: json['ownerId'] as String,
      species: animalCreateDTOSpeciesFromJson(json['species']),
      breed: json['breed'] as String?,
      gender: animalCreateDTOGenderNullableFromJson(json['gender']),
      birthDate: DateTime.parse(json['birthDate'] as String),
      weight: (json['weight'] as num?)?.toDouble(),
      size: animalCreateDTOSizeNullableFromJson(json['size']),
      microchipNumber: json['microchipNumber'] as String?,
      vaccinationsUpToDate: json['vaccinationsUpToDate'] as bool?,
      medicalConditions: json['medicalConditions'] as String?,
      medications: (json['medications'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      specialNeeds: json['specialNeeds'] as String?,
      feedingInstructions: json['feedingInstructions'] as String?,
      behaviorNotes: json['behaviorNotes'] as String?,
      energyLevel:
          animalCreateDTOEnergyLevelNullableFromJson(json['energyLevel']),
      houseTrained: json['houseTrained'] as bool?,
      petFriendly: json['petFriendly'] as bool?,
      childFriendly: json['childFriendly'] as bool?,
      photoUrl: json['photoUrl'] as String?,
      veterinarianContact: json['veterinarianContact'] as String?,
      lastVetVisit: json['lastVetVisit'] == null
          ? null
          : DateTime.parse(json['lastVetVisit'] as String),
      specialInstructions: json['specialInstructions'] as String?,
    );

Map<String, dynamic> _$AnimalCreateDTOToJson(AnimalCreateDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ownerId': instance.ownerId,
      'species': animalCreateDTOSpeciesToJson(instance.species),
      'breed': instance.breed,
      'gender': animalCreateDTOGenderNullableToJson(instance.gender),
      'birthDate': _dateToJson(instance.birthDate),
      'weight': instance.weight,
      'size': animalCreateDTOSizeNullableToJson(instance.size),
      'microchipNumber': instance.microchipNumber,
      'vaccinationsUpToDate': instance.vaccinationsUpToDate,
      'medicalConditions': instance.medicalConditions,
      'medications': instance.medications,
      'allergies': instance.allergies,
      'specialNeeds': instance.specialNeeds,
      'feedingInstructions': instance.feedingInstructions,
      'behaviorNotes': instance.behaviorNotes,
      'energyLevel':
          animalCreateDTOEnergyLevelNullableToJson(instance.energyLevel),
      'houseTrained': instance.houseTrained,
      'petFriendly': instance.petFriendly,
      'childFriendly': instance.childFriendly,
      'photoUrl': instance.photoUrl,
      'veterinarianContact': instance.veterinarianContact,
      'lastVetVisit': _dateToJson(instance.lastVetVisit),
      'specialInstructions': instance.specialInstructions,
    };

PlaceSuggestion _$PlaceSuggestionFromJson(Map<String, dynamic> json) =>
    PlaceSuggestion(
      placeId: json['placeId'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$PlaceSuggestionToJson(PlaceSuggestion instance) =>
    <String, dynamic>{
      'placeId': instance.placeId,
      'description': instance.description,
    };
