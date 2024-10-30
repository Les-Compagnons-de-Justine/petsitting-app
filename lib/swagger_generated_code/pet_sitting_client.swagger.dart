// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'pet_sitting_client.enums.swagger.dart' as enums;
export 'pet_sitting_client.enums.swagger.dart';

part 'pet_sitting_client.swagger.chopper.dart';
part 'pet_sitting_client.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class PetSittingClient extends ChopperService {
  static PetSittingClient create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$PetSittingClient(client);
    }

    final newClient = ChopperClient(
        services: [_$PetSittingClient()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http:///api'));
    return _$PetSittingClient(newClient);
  }

  ///Update an animal
  ///@param animal Updated animal data
  Future<chopper.Response<AnimalWithOwner>> apiAnimalsPut(
      {required AnimalAnimal? animal}) {
    generatedMapping.putIfAbsent(
        AnimalAnimal, () => AnimalAnimal.fromJsonFactory);
    generatedMapping.putIfAbsent(
        AnimalWithOwner, () => AnimalWithOwner.fromJsonFactory);

    return _apiAnimalsPut(animal: animal);
  }

  ///Update an animal
  ///@param animal Updated animal data
  @Put(path: '/api/animals')
  Future<chopper.Response<AnimalWithOwner>> _apiAnimalsPut(
      {@Body() required AnimalAnimal? animal});

  ///Create a new animal
  ///@param animal Animal data
  Future<chopper.Response<AnimalWithOwner>> apiAnimalsPost(
      {required AnimalAnimal? animal}) {
    generatedMapping.putIfAbsent(
        AnimalAnimal, () => AnimalAnimal.fromJsonFactory);
    generatedMapping.putIfAbsent(
        AnimalWithOwner, () => AnimalWithOwner.fromJsonFactory);

    return _apiAnimalsPost(animal: animal);
  }

  ///Create a new animal
  ///@param animal Animal data
  @Post(path: '/api/animals')
  Future<chopper.Response<AnimalWithOwner>> _apiAnimalsPost(
      {@Body() required AnimalAnimal? animal});

  ///Get animals by owner ID
  ///@param ownerId Owner ID
  Future<chopper.Response<List<AnimalWithOwner>>> apiAnimalsOwnerOwnerIdGet(
      {required String? ownerId}) {
    generatedMapping.putIfAbsent(
        AnimalWithOwner, () => AnimalWithOwner.fromJsonFactory);

    return _apiAnimalsOwnerOwnerIdGet(ownerId: ownerId);
  }

  ///Get animals by owner ID
  ///@param ownerId Owner ID
  @Get(path: '/api/animals/owner/{ownerId}')
  Future<chopper.Response<List<AnimalWithOwner>>> _apiAnimalsOwnerOwnerIdGet(
      {@Path('ownerId') required String? ownerId});

  ///Get an animal by ID
  ///@param id Animal ID
  Future<chopper.Response<AnimalWithOwner>> apiAnimalsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AnimalWithOwner, () => AnimalWithOwner.fromJsonFactory);

    return _apiAnimalsIdGet(id: id);
  }

  ///Get an animal by ID
  ///@param id Animal ID
  @Get(path: '/api/animals/{id}')
  Future<chopper.Response<AnimalWithOwner>> _apiAnimalsIdGet(
      {@Path('id') required String? id});

  ///Delete an animal by ID
  ///@param id Animal ID
  Future<chopper.Response> apiAnimalsIdDelete({required String? id}) {
    return _apiAnimalsIdDelete(id: id);
  }

  ///Delete an animal by ID
  ///@param id Animal ID
  @Delete(path: '/api/animals/{id}')
  Future<chopper.Response> _apiAnimalsIdDelete(
      {@Path('id') required String? id});

  ///Create a new mission
  ///@param mission Mission data
  Future<chopper.Response<MissionsMissionWithDetails>> apiMissionsPost(
      {required MissionsCreateMissionRequest? mission}) {
    generatedMapping.putIfAbsent(MissionsCreateMissionRequest,
        () => MissionsCreateMissionRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsPost(mission: mission);
  }

  ///Create a new mission
  ///@param mission Mission data
  @Post(path: '/api/missions')
  Future<chopper.Response<MissionsMissionWithDetails>> _apiMissionsPost(
      {@Body() required MissionsCreateMissionRequest? mission});

  ///Get missions by client ID
  ///@param clientId Client ID
  Future<chopper.Response<List<MissionsMission>>> apiMissionsClientClientIdGet(
      {required String? clientId}) {
    generatedMapping.putIfAbsent(
        MissionsMission, () => MissionsMission.fromJsonFactory);

    return _apiMissionsClientClientIdGet(clientId: clientId);
  }

  ///Get missions by client ID
  ///@param clientId Client ID
  @Get(path: '/api/missions/client/{clientId}')
  Future<chopper.Response<List<MissionsMission>>> _apiMissionsClientClientIdGet(
      {@Path('clientId') required String? clientId});

  ///Get missions by client ID
  ///@param clientId Client ID
  Future<chopper.Response<List<MissionsMissionWithDetails>>>
      apiMissionsClientClientIdDetailsGet({required String? clientId}) {
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsClientClientIdDetailsGet(clientId: clientId);
  }

  ///Get missions by client ID
  ///@param clientId Client ID
  @Get(path: '/api/missions/client/{clientId}/details')
  Future<chopper.Response<List<MissionsMissionWithDetails>>>
      _apiMissionsClientClientIdDetailsGet(
          {@Path('clientId') required String? clientId});

  ///Get missions within a date range
  ///@param startDate Start Date in format YYYY-MM-DD
  ///@param endDate End Date in format YYYY-MM-DD
  Future<chopper.Response<List<MissionsMissionWithDetails>>>
      apiMissionsDateRangeGet({
    required String? startDate,
    required String? endDate,
  }) {
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsDateRangeGet(startDate: startDate, endDate: endDate);
  }

  ///Get missions within a date range
  ///@param startDate Start Date in format YYYY-MM-DD
  ///@param endDate End Date in format YYYY-MM-DD
  @Get(path: '/api/missions/date-range')
  Future<chopper.Response<List<MissionsMissionWithDetails>>>
      _apiMissionsDateRangeGet({
    @Query('startDate') required String? startDate,
    @Query('endDate') required String? endDate,
  });

  ///Get missions by vet assistant ID
  ///@param vetAssistantId Vet Assistant ID
  Future<chopper.Response<List<MissionsMissionWithDetails>>>
      apiMissionsVetAssistantVetAssistantIdGet(
          {required String? vetAssistantId}) {
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsVetAssistantVetAssistantIdGet(
        vetAssistantId: vetAssistantId);
  }

  ///Get missions by vet assistant ID
  ///@param vetAssistantId Vet Assistant ID
  @Get(path: '/api/missions/vet-assistant/{vetAssistantId}')
  Future<chopper.Response<List<MissionsMissionWithDetails>>>
      _apiMissionsVetAssistantVetAssistantIdGet(
          {@Path('vetAssistantId') required String? vetAssistantId});

  ///Get a mission by ID
  ///@param id Mission ID
  Future<chopper.Response<MissionsMissionWithDetails>> apiMissionsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsIdGet(id: id);
  }

  ///Get a mission by ID
  ///@param id Mission ID
  @Get(path: '/api/missions/{id}')
  Future<chopper.Response<MissionsMissionWithDetails>> _apiMissionsIdGet(
      {@Path('id') required String? id});

  ///Assign a vet assistant to a mission
  ///@param id Mission ID
  ///@param vetAssistantId Vet Assistant ID
  Future<chopper.Response<MissionsMissionWithDetails>>
      apiMissionsIdAssignVetAssistantIdPut({
    required String? id,
    required String? vetAssistantId,
  }) {
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsIdAssignVetAssistantIdPut(
        id: id, vetAssistantId: vetAssistantId);
  }

  ///Assign a vet assistant to a mission
  ///@param id Mission ID
  ///@param vetAssistantId Vet Assistant ID
  @Put(
    path: '/api/missions/{id}/assign/{vetAssistantId}',
    optionalBody: true,
  )
  Future<chopper.Response<MissionsMissionWithDetails>>
      _apiMissionsIdAssignVetAssistantIdPut({
    @Path('id') required String? id,
    @Path('vetAssistantId') required String? vetAssistantId,
  });

  ///Cancel a mission
  ///@param id Mission ID
  Future<chopper.Response<MissionsMissionWithDetails>> apiMissionsIdCancelPut(
      {required String? id}) {
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsIdCancelPut(id: id);
  }

  ///Cancel a mission
  ///@param id Mission ID
  @Put(
    path: '/api/missions/{id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<MissionsMissionWithDetails>> _apiMissionsIdCancelPut(
      {@Path('id') required String? id});

  ///Complete a mission
  ///@param id Mission ID
  Future<chopper.Response<MissionsMissionWithDetails>> apiMissionsIdCompletePut(
      {required String? id}) {
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsIdCompletePut(id: id);
  }

  ///Complete a mission
  ///@param id Mission ID
  @Put(
    path: '/api/missions/{id}/complete',
    optionalBody: true,
  )
  Future<chopper.Response<MissionsMissionWithDetails>>
      _apiMissionsIdCompletePut({@Path('id') required String? id});

  ///Confirm a mission
  ///@param id Mission ID
  Future<chopper.Response<MissionsMissionWithDetails>> apiMissionsIdConfirmPut(
      {required String? id}) {
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsIdConfirmPut(id: id);
  }

  ///Confirm a mission
  ///@param id Mission ID
  @Put(
    path: '/api/missions/{id}/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<MissionsMissionWithDetails>> _apiMissionsIdConfirmPut(
      {@Path('id') required String? id});

  ///Mark a mission as paid
  ///@param id Mission ID
  Future<chopper.Response<MissionsMissionWithDetails>> apiMissionsIdMarkPaidPut(
      {required String? id}) {
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsIdMarkPaidPut(id: id);
  }

  ///Mark a mission as paid
  ///@param id Mission ID
  @Put(
    path: '/api/missions/{id}/mark-paid',
    optionalBody: true,
  )
  Future<chopper.Response<MissionsMissionWithDetails>>
      _apiMissionsIdMarkPaidPut({@Path('id') required String? id});

  ///Update mission status
  ///@param id Mission ID
  ///@param status New status
  Future<chopper.Response<MissionsMissionWithDetails>> apiMissionsIdStatusPut({
    required String? id,
    required MissionsUpdateMissionStatusRequest? status,
  }) {
    generatedMapping.putIfAbsent(MissionsUpdateMissionStatusRequest,
        () => MissionsUpdateMissionStatusRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(MissionsMissionWithDetails,
        () => MissionsMissionWithDetails.fromJsonFactory);

    return _apiMissionsIdStatusPut(id: id, status: status);
  }

  ///Update mission status
  ///@param id Mission ID
  ///@param status New status
  @Put(path: '/api/missions/{id}/status')
  Future<chopper.Response<MissionsMissionWithDetails>> _apiMissionsIdStatusPut({
    @Path('id') required String? id,
    @Body() required MissionsUpdateMissionStatusRequest? status,
  });

  ///Get all pet services
  Future<chopper.Response<List<PetServicesPetService>>> apiPetServicesGet() {
    generatedMapping.putIfAbsent(
        PetServicesPetService, () => PetServicesPetService.fromJsonFactory);

    return _apiPetServicesGet();
  }

  ///Get all pet services
  @Get(path: '/api/pet-services')
  Future<chopper.Response<List<PetServicesPetService>>> _apiPetServicesGet();

  ///Create a new pet service
  ///@param service Pet Service data
  Future<chopper.Response<PetServicesPetService>> apiPetServicesPost(
      {required PetServicesPetService? service}) {
    generatedMapping.putIfAbsent(
        PetServicesPetService, () => PetServicesPetService.fromJsonFactory);

    return _apiPetServicesPost(service: service);
  }

  ///Create a new pet service
  ///@param service Pet Service data
  @Post(path: '/api/pet-services')
  Future<chopper.Response<PetServicesPetService>> _apiPetServicesPost(
      {@Body() required PetServicesPetService? service});

  ///Get pet services by animal type
  ///@param animalType Animal Type
  Future<chopper.Response<List<PetServicesPetService>>>
      apiPetServicesAnimalTypeAnimalTypeGet({required String? animalType}) {
    generatedMapping.putIfAbsent(
        PetServicesPetService, () => PetServicesPetService.fromJsonFactory);

    return _apiPetServicesAnimalTypeAnimalTypeGet(animalType: animalType);
  }

  ///Get pet services by animal type
  ///@param animalType Animal Type
  @Get(path: '/api/pet-services/animal-type/{animalType}')
  Future<chopper.Response<List<PetServicesPetService>>>
      _apiPetServicesAnimalTypeAnimalTypeGet(
          {@Path('animalType') required String? animalType});

  ///Get pet services by category
  ///@param category Pet Service Category
  Future<chopper.Response<List<PetServicesPetService>>>
      apiPetServicesCategoryCategoryGet({required String? category}) {
    generatedMapping.putIfAbsent(
        PetServicesPetService, () => PetServicesPetService.fromJsonFactory);

    return _apiPetServicesCategoryCategoryGet(category: category);
  }

  ///Get pet services by category
  ///@param category Pet Service Category
  @Get(path: '/api/pet-services/category/{category}')
  Future<chopper.Response<List<PetServicesPetService>>>
      _apiPetServicesCategoryCategoryGet(
          {@Path('category') required String? category});

  ///Get a pet service by ID
  ///@param id Service ID
  Future<chopper.Response<PetServicesPetService>> apiPetServicesIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        PetServicesPetService, () => PetServicesPetService.fromJsonFactory);

    return _apiPetServicesIdGet(id: id);
  }

  ///Get a pet service by ID
  ///@param id Service ID
  @Get(path: '/api/pet-services/{id}')
  Future<chopper.Response<PetServicesPetService>> _apiPetServicesIdGet(
      {@Path('id') required String? id});

  ///Update a pet service by ID
  ///@param id Service ID
  ///@param service Updated pet service data
  Future<chopper.Response<PetServicesPetService>> apiPetServicesIdPut({
    required String? id,
    required PetServicesPetService? service,
  }) {
    generatedMapping.putIfAbsent(
        PetServicesPetService, () => PetServicesPetService.fromJsonFactory);

    return _apiPetServicesIdPut(id: id, service: service);
  }

  ///Update a pet service by ID
  ///@param id Service ID
  ///@param service Updated pet service data
  @Put(path: '/api/pet-services/{id}')
  Future<chopper.Response<PetServicesPetService>> _apiPetServicesIdPut({
    @Path('id') required String? id,
    @Body() required PetServicesPetService? service,
  });

  ///Delete a pet service by ID
  ///@param id Service ID
  Future<chopper.Response> apiPetServicesIdDelete({required String? id}) {
    return _apiPetServicesIdDelete(id: id);
  }

  ///Delete a pet service by ID
  ///@param id Service ID
  @Delete(path: '/api/pet-services/{id}')
  Future<chopper.Response> _apiPetServicesIdDelete(
      {@Path('id') required String? id});

  ///Get place details
  ///@param placeId Place ID
  Future<chopper.Response<PlaceDetails>> apiPlacesDetailsPlaceIdGet(
      {required String? placeId}) {
    generatedMapping.putIfAbsent(
        PlaceDetails, () => PlaceDetails.fromJsonFactory);

    return _apiPlacesDetailsPlaceIdGet(placeId: placeId);
  }

  ///Get place details
  ///@param placeId Place ID
  @Get(path: '/api/places/details/{placeId}')
  Future<chopper.Response<PlaceDetails>> _apiPlacesDetailsPlaceIdGet(
      {@Path('placeId') required String? placeId});

  ///Get place suggestions
  ///@param query Search query
  Future<chopper.Response<List<PlaceSuggestion>>> apiPlacesSuggestionsGet(
      {required String? query}) {
    generatedMapping.putIfAbsent(
        PlaceSuggestion, () => PlaceSuggestion.fromJsonFactory);

    return _apiPlacesSuggestionsGet(query: query);
  }

  ///Get place suggestions
  ///@param query Search query
  @Get(path: '/api/places/suggestions')
  Future<chopper.Response<List<PlaceSuggestion>>> _apiPlacesSuggestionsGet(
      {@Query('query') required String? query});

  ///Get all users
  Future<chopper.Response<List<UsersUser>>> apiUsersGet() {
    generatedMapping.putIfAbsent(UsersUser, () => UsersUser.fromJsonFactory);

    return _apiUsersGet();
  }

  ///Get all users
  @Get(path: '/api/users')
  Future<chopper.Response<List<UsersUser>>> _apiUsersGet();

  ///Create a new user
  ///@param user User data
  Future<chopper.Response<UsersUser>> apiUsersPost(
      {required UsersCreateUserRequest? user}) {
    generatedMapping.putIfAbsent(
        UsersCreateUserRequest, () => UsersCreateUserRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(UsersUser, () => UsersUser.fromJsonFactory);

    return _apiUsersPost(user: user);
  }

  ///Create a new user
  ///@param user User data
  @Post(path: '/api/users')
  Future<chopper.Response<UsersUser>> _apiUsersPost(
      {@Body() required UsersCreateUserRequest? user});

  ///Get a user by email
  ///@param email User email
  Future<chopper.Response<UsersUser>> apiUsersEmailEmailGet(
      {required String? email}) {
    generatedMapping.putIfAbsent(UsersUser, () => UsersUser.fromJsonFactory);

    return _apiUsersEmailEmailGet(email: email);
  }

  ///Get a user by email
  ///@param email User email
  @Get(path: '/api/users/email/{email}')
  Future<chopper.Response<UsersUser>> _apiUsersEmailEmailGet(
      {@Path('email') required String? email});

  ///Get the current user
  Future<chopper.Response<UsersUser>> apiUsersMeGet() {
    generatedMapping.putIfAbsent(UsersUser, () => UsersUser.fromJsonFactory);

    return _apiUsersMeGet();
  }

  ///Get the current user
  @Get(path: '/api/users/me')
  Future<chopper.Response<UsersUser>> _apiUsersMeGet();

  ///Get a user by ID
  ///@param id User ID
  Future<chopper.Response<UsersUser>> apiUsersIdGet({required String? id}) {
    generatedMapping.putIfAbsent(UsersUser, () => UsersUser.fromJsonFactory);

    return _apiUsersIdGet(id: id);
  }

  ///Get a user by ID
  ///@param id User ID
  @Get(path: '/api/users/{id}')
  Future<chopper.Response<UsersUser>> _apiUsersIdGet(
      {@Path('id') required String? id});

  ///Update a user by ID
  ///@param id User ID
  ///@param user Updated user data
  Future<chopper.Response<UsersUser>> apiUsersIdPut({
    required String? id,
    required UsersUpdateUserRequest? user,
  }) {
    generatedMapping.putIfAbsent(
        UsersUpdateUserRequest, () => UsersUpdateUserRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(UsersUser, () => UsersUser.fromJsonFactory);

    return _apiUsersIdPut(id: id, user: user);
  }

  ///Update a user by ID
  ///@param id User ID
  ///@param user Updated user data
  @Put(path: '/api/users/{id}')
  Future<chopper.Response<UsersUser>> _apiUsersIdPut({
    @Path('id') required String? id,
    @Body() required UsersUpdateUserRequest? user,
  });

  ///Delete a user by ID
  ///@param id User ID
  Future<chopper.Response> apiUsersIdDelete({required String? id}) {
    return _apiUsersIdDelete(id: id);
  }

  ///Delete a user by ID
  ///@param id User ID
  @Delete(path: '/api/users/{id}')
  Future<chopper.Response> _apiUsersIdDelete({@Path('id') required String? id});
}

@JsonSerializable(explicitToJson: true)
class AnimalAnimal {
  const AnimalAnimal({
    this.allergies,
    this.behaviorNotes,
    this.birthDate,
    this.breed,
    this.childFriendly,
    this.energyLevel,
    this.feedingInstructions,
    this.gender,
    this.houseTrained,
    this.id,
    this.lastVetVisit,
    this.medicalConditions,
    this.medications,
    this.microchipNumber,
    this.name,
    this.ownerId,
    this.petFriendly,
    this.photoUrl,
    this.size,
    this.specialInstructions,
    this.specialNeeds,
    this.species,
    this.vaccinationsUpToDate,
    this.veterinarianContact,
    this.weight,
  });

  factory AnimalAnimal.fromJson(Map<String, dynamic> json) =>
      _$AnimalAnimalFromJson(json);

  static const toJsonFactory = _$AnimalAnimalToJson;
  Map<String, dynamic> toJson() => _$AnimalAnimalToJson(this);

  @JsonKey(name: 'allergies', defaultValue: <String>[])
  final List<String>? allergies;
  @JsonKey(name: 'behaviorNotes')
  final String? behaviorNotes;
  @JsonKey(name: 'birthDate')
  final String? birthDate;
  @JsonKey(name: 'breed')
  final String? breed;
  @JsonKey(name: 'childFriendly')
  final bool? childFriendly;
  @JsonKey(
    name: 'energyLevel',
    toJson: animalEnergyLevelNullableToJson,
    fromJson: animalEnergyLevelNullableFromJson,
  )
  final enums.AnimalEnergyLevel? energyLevel;
  @JsonKey(name: 'feedingInstructions')
  final String? feedingInstructions;
  @JsonKey(
    name: 'gender',
    toJson: animalGenderNullableToJson,
    fromJson: animalGenderNullableFromJson,
  )
  final enums.AnimalGender? gender;
  @JsonKey(name: 'houseTrained')
  final bool? houseTrained;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'lastVetVisit')
  final String? lastVetVisit;
  @JsonKey(name: 'medicalConditions')
  final String? medicalConditions;
  @JsonKey(name: 'medications', defaultValue: <String>[])
  final List<String>? medications;
  @JsonKey(name: 'microchipNumber')
  final String? microchipNumber;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'ownerId')
  final String? ownerId;
  @JsonKey(name: 'petFriendly')
  final bool? petFriendly;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(
    name: 'size',
    toJson: animalSizeNullableToJson,
    fromJson: animalSizeNullableFromJson,
  )
  final enums.AnimalSize? size;
  @JsonKey(name: 'specialInstructions')
  final String? specialInstructions;
  @JsonKey(name: 'specialNeeds')
  final String? specialNeeds;
  @JsonKey(
    name: 'species',
    toJson: animalSpeciesNullableToJson,
    fromJson: animalSpeciesNullableFromJson,
  )
  final enums.AnimalSpecies? species;
  @JsonKey(name: 'vaccinationsUpToDate')
  final bool? vaccinationsUpToDate;
  @JsonKey(name: 'veterinarianContact')
  final String? veterinarianContact;
  @JsonKey(name: 'weight')
  final double? weight;
  static const fromJsonFactory = _$AnimalAnimalFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AnimalAnimal &&
            (identical(other.allergies, allergies) ||
                const DeepCollectionEquality()
                    .equals(other.allergies, allergies)) &&
            (identical(other.behaviorNotes, behaviorNotes) ||
                const DeepCollectionEquality()
                    .equals(other.behaviorNotes, behaviorNotes)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.breed, breed) ||
                const DeepCollectionEquality().equals(other.breed, breed)) &&
            (identical(other.childFriendly, childFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.childFriendly, childFriendly)) &&
            (identical(other.energyLevel, energyLevel) ||
                const DeepCollectionEquality()
                    .equals(other.energyLevel, energyLevel)) &&
            (identical(other.feedingInstructions, feedingInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.feedingInstructions, feedingInstructions)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.houseTrained, houseTrained) ||
                const DeepCollectionEquality()
                    .equals(other.houseTrained, houseTrained)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastVetVisit, lastVetVisit) ||
                const DeepCollectionEquality()
                    .equals(other.lastVetVisit, lastVetVisit)) &&
            (identical(other.medicalConditions, medicalConditions) ||
                const DeepCollectionEquality()
                    .equals(other.medicalConditions, medicalConditions)) &&
            (identical(other.medications, medications) ||
                const DeepCollectionEquality()
                    .equals(other.medications, medications)) &&
            (identical(other.microchipNumber, microchipNumber) ||
                const DeepCollectionEquality()
                    .equals(other.microchipNumber, microchipNumber)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.petFriendly, petFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.petFriendly, petFriendly)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.specialInstructions, specialInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.specialInstructions, specialInstructions)) &&
            (identical(other.specialNeeds, specialNeeds) ||
                const DeepCollectionEquality()
                    .equals(other.specialNeeds, specialNeeds)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.vaccinationsUpToDate, vaccinationsUpToDate) ||
                const DeepCollectionEquality().equals(
                    other.vaccinationsUpToDate, vaccinationsUpToDate)) &&
            (identical(other.veterinarianContact, veterinarianContact) ||
                const DeepCollectionEquality()
                    .equals(other.veterinarianContact, veterinarianContact)) &&
            (identical(other.weight, weight) || const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(allergies) ^
      const DeepCollectionEquality().hash(behaviorNotes) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(breed) ^
      const DeepCollectionEquality().hash(childFriendly) ^
      const DeepCollectionEquality().hash(energyLevel) ^
      const DeepCollectionEquality().hash(feedingInstructions) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(houseTrained) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastVetVisit) ^
      const DeepCollectionEquality().hash(medicalConditions) ^
      const DeepCollectionEquality().hash(medications) ^
      const DeepCollectionEquality().hash(microchipNumber) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(petFriendly) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(specialInstructions) ^
      const DeepCollectionEquality().hash(specialNeeds) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(vaccinationsUpToDate) ^
      const DeepCollectionEquality().hash(veterinarianContact) ^
      const DeepCollectionEquality().hash(weight) ^
      runtimeType.hashCode;
}

extension $AnimalAnimalExtension on AnimalAnimal {
  AnimalAnimal copyWith(
      {List<String>? allergies,
      String? behaviorNotes,
      String? birthDate,
      String? breed,
      bool? childFriendly,
      enums.AnimalEnergyLevel? energyLevel,
      String? feedingInstructions,
      enums.AnimalGender? gender,
      bool? houseTrained,
      String? id,
      String? lastVetVisit,
      String? medicalConditions,
      List<String>? medications,
      String? microchipNumber,
      String? name,
      String? ownerId,
      bool? petFriendly,
      String? photoUrl,
      enums.AnimalSize? size,
      String? specialInstructions,
      String? specialNeeds,
      enums.AnimalSpecies? species,
      bool? vaccinationsUpToDate,
      String? veterinarianContact,
      double? weight}) {
    return AnimalAnimal(
        allergies: allergies ?? this.allergies,
        behaviorNotes: behaviorNotes ?? this.behaviorNotes,
        birthDate: birthDate ?? this.birthDate,
        breed: breed ?? this.breed,
        childFriendly: childFriendly ?? this.childFriendly,
        energyLevel: energyLevel ?? this.energyLevel,
        feedingInstructions: feedingInstructions ?? this.feedingInstructions,
        gender: gender ?? this.gender,
        houseTrained: houseTrained ?? this.houseTrained,
        id: id ?? this.id,
        lastVetVisit: lastVetVisit ?? this.lastVetVisit,
        medicalConditions: medicalConditions ?? this.medicalConditions,
        medications: medications ?? this.medications,
        microchipNumber: microchipNumber ?? this.microchipNumber,
        name: name ?? this.name,
        ownerId: ownerId ?? this.ownerId,
        petFriendly: petFriendly ?? this.petFriendly,
        photoUrl: photoUrl ?? this.photoUrl,
        size: size ?? this.size,
        specialInstructions: specialInstructions ?? this.specialInstructions,
        specialNeeds: specialNeeds ?? this.specialNeeds,
        species: species ?? this.species,
        vaccinationsUpToDate: vaccinationsUpToDate ?? this.vaccinationsUpToDate,
        veterinarianContact: veterinarianContact ?? this.veterinarianContact,
        weight: weight ?? this.weight);
  }

  AnimalAnimal copyWithWrapped(
      {Wrapped<List<String>?>? allergies,
      Wrapped<String?>? behaviorNotes,
      Wrapped<String?>? birthDate,
      Wrapped<String?>? breed,
      Wrapped<bool?>? childFriendly,
      Wrapped<enums.AnimalEnergyLevel?>? energyLevel,
      Wrapped<String?>? feedingInstructions,
      Wrapped<enums.AnimalGender?>? gender,
      Wrapped<bool?>? houseTrained,
      Wrapped<String?>? id,
      Wrapped<String?>? lastVetVisit,
      Wrapped<String?>? medicalConditions,
      Wrapped<List<String>?>? medications,
      Wrapped<String?>? microchipNumber,
      Wrapped<String?>? name,
      Wrapped<String?>? ownerId,
      Wrapped<bool?>? petFriendly,
      Wrapped<String?>? photoUrl,
      Wrapped<enums.AnimalSize?>? size,
      Wrapped<String?>? specialInstructions,
      Wrapped<String?>? specialNeeds,
      Wrapped<enums.AnimalSpecies?>? species,
      Wrapped<bool?>? vaccinationsUpToDate,
      Wrapped<String?>? veterinarianContact,
      Wrapped<double?>? weight}) {
    return AnimalAnimal(
        allergies: (allergies != null ? allergies.value : this.allergies),
        behaviorNotes:
            (behaviorNotes != null ? behaviorNotes.value : this.behaviorNotes),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        breed: (breed != null ? breed.value : this.breed),
        childFriendly:
            (childFriendly != null ? childFriendly.value : this.childFriendly),
        energyLevel:
            (energyLevel != null ? energyLevel.value : this.energyLevel),
        feedingInstructions: (feedingInstructions != null
            ? feedingInstructions.value
            : this.feedingInstructions),
        gender: (gender != null ? gender.value : this.gender),
        houseTrained:
            (houseTrained != null ? houseTrained.value : this.houseTrained),
        id: (id != null ? id.value : this.id),
        lastVetVisit:
            (lastVetVisit != null ? lastVetVisit.value : this.lastVetVisit),
        medicalConditions: (medicalConditions != null
            ? medicalConditions.value
            : this.medicalConditions),
        medications:
            (medications != null ? medications.value : this.medications),
        microchipNumber: (microchipNumber != null
            ? microchipNumber.value
            : this.microchipNumber),
        name: (name != null ? name.value : this.name),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        petFriendly:
            (petFriendly != null ? petFriendly.value : this.petFriendly),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        size: (size != null ? size.value : this.size),
        specialInstructions: (specialInstructions != null
            ? specialInstructions.value
            : this.specialInstructions),
        specialNeeds:
            (specialNeeds != null ? specialNeeds.value : this.specialNeeds),
        species: (species != null ? species.value : this.species),
        vaccinationsUpToDate: (vaccinationsUpToDate != null
            ? vaccinationsUpToDate.value
            : this.vaccinationsUpToDate),
        veterinarianContact: (veterinarianContact != null
            ? veterinarianContact.value
            : this.veterinarianContact),
        weight: (weight != null ? weight.value : this.weight));
  }
}

@JsonSerializable(explicitToJson: true)
class AnimalErrorResponse {
  const AnimalErrorResponse({
    this.message,
  });

  factory AnimalErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimalErrorResponseFromJson(json);

  static const toJsonFactory = _$AnimalErrorResponseToJson;
  Map<String, dynamic> toJson() => _$AnimalErrorResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$AnimalErrorResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AnimalErrorResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $AnimalErrorResponseExtension on AnimalErrorResponse {
  AnimalErrorResponse copyWith({String? message}) {
    return AnimalErrorResponse(message: message ?? this.message);
  }

  AnimalErrorResponse copyWithWrapped({Wrapped<String?>? message}) {
    return AnimalErrorResponse(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class AnimalWithOwner {
  const AnimalWithOwner({
    this.allergies,
    this.behaviorNotes,
    this.birthDate,
    this.breed,
    this.childFriendly,
    this.energyLevel,
    this.feedingInstructions,
    this.gender,
    this.houseTrained,
    this.id,
    this.lastVetVisit,
    this.medicalConditions,
    this.medications,
    this.microchipNumber,
    this.name,
    this.owner,
    this.petFriendly,
    this.photoUrl,
    this.size,
    this.specialInstructions,
    this.specialNeeds,
    this.species,
    this.vaccinationsUpToDate,
    this.veterinarianContact,
    this.weight,
  });

  factory AnimalWithOwner.fromJson(Map<String, dynamic> json) =>
      _$AnimalWithOwnerFromJson(json);

  static const toJsonFactory = _$AnimalWithOwnerToJson;
  Map<String, dynamic> toJson() => _$AnimalWithOwnerToJson(this);

  @JsonKey(name: 'allergies', defaultValue: <String>[])
  final List<String>? allergies;
  @JsonKey(name: 'behaviorNotes')
  final String? behaviorNotes;
  @JsonKey(name: 'birthDate')
  final String? birthDate;
  @JsonKey(name: 'breed')
  final String? breed;
  @JsonKey(name: 'childFriendly')
  final bool? childFriendly;
  @JsonKey(
    name: 'energyLevel',
    toJson: animalEnergyLevelNullableToJson,
    fromJson: animalEnergyLevelNullableFromJson,
  )
  final enums.AnimalEnergyLevel? energyLevel;
  @JsonKey(name: 'feedingInstructions')
  final String? feedingInstructions;
  @JsonKey(
    name: 'gender',
    toJson: animalGenderNullableToJson,
    fromJson: animalGenderNullableFromJson,
  )
  final enums.AnimalGender? gender;
  @JsonKey(name: 'houseTrained')
  final bool? houseTrained;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'lastVetVisit')
  final String? lastVetVisit;
  @JsonKey(name: 'medicalConditions')
  final String? medicalConditions;
  @JsonKey(name: 'medications', defaultValue: <String>[])
  final List<String>? medications;
  @JsonKey(name: 'microchipNumber')
  final String? microchipNumber;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'owner')
  final UsersUser? owner;
  @JsonKey(name: 'petFriendly')
  final bool? petFriendly;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(
    name: 'size',
    toJson: animalSizeNullableToJson,
    fromJson: animalSizeNullableFromJson,
  )
  final enums.AnimalSize? size;
  @JsonKey(name: 'specialInstructions')
  final String? specialInstructions;
  @JsonKey(name: 'specialNeeds')
  final String? specialNeeds;
  @JsonKey(
    name: 'species',
    toJson: animalSpeciesNullableToJson,
    fromJson: animalSpeciesNullableFromJson,
  )
  final enums.AnimalSpecies? species;
  @JsonKey(name: 'vaccinationsUpToDate')
  final bool? vaccinationsUpToDate;
  @JsonKey(name: 'veterinarianContact')
  final String? veterinarianContact;
  @JsonKey(name: 'weight')
  final double? weight;
  static const fromJsonFactory = _$AnimalWithOwnerFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AnimalWithOwner &&
            (identical(other.allergies, allergies) ||
                const DeepCollectionEquality()
                    .equals(other.allergies, allergies)) &&
            (identical(other.behaviorNotes, behaviorNotes) ||
                const DeepCollectionEquality()
                    .equals(other.behaviorNotes, behaviorNotes)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.breed, breed) ||
                const DeepCollectionEquality().equals(other.breed, breed)) &&
            (identical(other.childFriendly, childFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.childFriendly, childFriendly)) &&
            (identical(other.energyLevel, energyLevel) ||
                const DeepCollectionEquality()
                    .equals(other.energyLevel, energyLevel)) &&
            (identical(other.feedingInstructions, feedingInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.feedingInstructions, feedingInstructions)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.houseTrained, houseTrained) ||
                const DeepCollectionEquality()
                    .equals(other.houseTrained, houseTrained)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastVetVisit, lastVetVisit) ||
                const DeepCollectionEquality()
                    .equals(other.lastVetVisit, lastVetVisit)) &&
            (identical(other.medicalConditions, medicalConditions) ||
                const DeepCollectionEquality()
                    .equals(other.medicalConditions, medicalConditions)) &&
            (identical(other.medications, medications) ||
                const DeepCollectionEquality()
                    .equals(other.medications, medications)) &&
            (identical(other.microchipNumber, microchipNumber) ||
                const DeepCollectionEquality()
                    .equals(other.microchipNumber, microchipNumber)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.petFriendly, petFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.petFriendly, petFriendly)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.specialInstructions, specialInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.specialInstructions, specialInstructions)) &&
            (identical(other.specialNeeds, specialNeeds) ||
                const DeepCollectionEquality()
                    .equals(other.specialNeeds, specialNeeds)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.vaccinationsUpToDate, vaccinationsUpToDate) ||
                const DeepCollectionEquality().equals(
                    other.vaccinationsUpToDate, vaccinationsUpToDate)) &&
            (identical(other.veterinarianContact, veterinarianContact) ||
                const DeepCollectionEquality()
                    .equals(other.veterinarianContact, veterinarianContact)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(allergies) ^
      const DeepCollectionEquality().hash(behaviorNotes) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(breed) ^
      const DeepCollectionEquality().hash(childFriendly) ^
      const DeepCollectionEquality().hash(energyLevel) ^
      const DeepCollectionEquality().hash(feedingInstructions) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(houseTrained) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastVetVisit) ^
      const DeepCollectionEquality().hash(medicalConditions) ^
      const DeepCollectionEquality().hash(medications) ^
      const DeepCollectionEquality().hash(microchipNumber) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(petFriendly) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(specialInstructions) ^
      const DeepCollectionEquality().hash(specialNeeds) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(vaccinationsUpToDate) ^
      const DeepCollectionEquality().hash(veterinarianContact) ^
      const DeepCollectionEquality().hash(weight) ^
      runtimeType.hashCode;
}

extension $AnimalWithOwnerExtension on AnimalWithOwner {
  AnimalWithOwner copyWith(
      {List<String>? allergies,
      String? behaviorNotes,
      String? birthDate,
      String? breed,
      bool? childFriendly,
      enums.AnimalEnergyLevel? energyLevel,
      String? feedingInstructions,
      enums.AnimalGender? gender,
      bool? houseTrained,
      String? id,
      String? lastVetVisit,
      String? medicalConditions,
      List<String>? medications,
      String? microchipNumber,
      String? name,
      UsersUser? owner,
      bool? petFriendly,
      String? photoUrl,
      enums.AnimalSize? size,
      String? specialInstructions,
      String? specialNeeds,
      enums.AnimalSpecies? species,
      bool? vaccinationsUpToDate,
      String? veterinarianContact,
      double? weight}) {
    return AnimalWithOwner(
        allergies: allergies ?? this.allergies,
        behaviorNotes: behaviorNotes ?? this.behaviorNotes,
        birthDate: birthDate ?? this.birthDate,
        breed: breed ?? this.breed,
        childFriendly: childFriendly ?? this.childFriendly,
        energyLevel: energyLevel ?? this.energyLevel,
        feedingInstructions: feedingInstructions ?? this.feedingInstructions,
        gender: gender ?? this.gender,
        houseTrained: houseTrained ?? this.houseTrained,
        id: id ?? this.id,
        lastVetVisit: lastVetVisit ?? this.lastVetVisit,
        medicalConditions: medicalConditions ?? this.medicalConditions,
        medications: medications ?? this.medications,
        microchipNumber: microchipNumber ?? this.microchipNumber,
        name: name ?? this.name,
        owner: owner ?? this.owner,
        petFriendly: petFriendly ?? this.petFriendly,
        photoUrl: photoUrl ?? this.photoUrl,
        size: size ?? this.size,
        specialInstructions: specialInstructions ?? this.specialInstructions,
        specialNeeds: specialNeeds ?? this.specialNeeds,
        species: species ?? this.species,
        vaccinationsUpToDate: vaccinationsUpToDate ?? this.vaccinationsUpToDate,
        veterinarianContact: veterinarianContact ?? this.veterinarianContact,
        weight: weight ?? this.weight);
  }

  AnimalWithOwner copyWithWrapped(
      {Wrapped<List<String>?>? allergies,
      Wrapped<String?>? behaviorNotes,
      Wrapped<String?>? birthDate,
      Wrapped<String?>? breed,
      Wrapped<bool?>? childFriendly,
      Wrapped<enums.AnimalEnergyLevel?>? energyLevel,
      Wrapped<String?>? feedingInstructions,
      Wrapped<enums.AnimalGender?>? gender,
      Wrapped<bool?>? houseTrained,
      Wrapped<String?>? id,
      Wrapped<String?>? lastVetVisit,
      Wrapped<String?>? medicalConditions,
      Wrapped<List<String>?>? medications,
      Wrapped<String?>? microchipNumber,
      Wrapped<String?>? name,
      Wrapped<UsersUser?>? owner,
      Wrapped<bool?>? petFriendly,
      Wrapped<String?>? photoUrl,
      Wrapped<enums.AnimalSize?>? size,
      Wrapped<String?>? specialInstructions,
      Wrapped<String?>? specialNeeds,
      Wrapped<enums.AnimalSpecies?>? species,
      Wrapped<bool?>? vaccinationsUpToDate,
      Wrapped<String?>? veterinarianContact,
      Wrapped<double?>? weight}) {
    return AnimalWithOwner(
        allergies: (allergies != null ? allergies.value : this.allergies),
        behaviorNotes:
            (behaviorNotes != null ? behaviorNotes.value : this.behaviorNotes),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        breed: (breed != null ? breed.value : this.breed),
        childFriendly:
            (childFriendly != null ? childFriendly.value : this.childFriendly),
        energyLevel:
            (energyLevel != null ? energyLevel.value : this.energyLevel),
        feedingInstructions: (feedingInstructions != null
            ? feedingInstructions.value
            : this.feedingInstructions),
        gender: (gender != null ? gender.value : this.gender),
        houseTrained:
            (houseTrained != null ? houseTrained.value : this.houseTrained),
        id: (id != null ? id.value : this.id),
        lastVetVisit:
            (lastVetVisit != null ? lastVetVisit.value : this.lastVetVisit),
        medicalConditions: (medicalConditions != null
            ? medicalConditions.value
            : this.medicalConditions),
        medications:
            (medications != null ? medications.value : this.medications),
        microchipNumber: (microchipNumber != null
            ? microchipNumber.value
            : this.microchipNumber),
        name: (name != null ? name.value : this.name),
        owner: (owner != null ? owner.value : this.owner),
        petFriendly:
            (petFriendly != null ? petFriendly.value : this.petFriendly),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        size: (size != null ? size.value : this.size),
        specialInstructions: (specialInstructions != null
            ? specialInstructions.value
            : this.specialInstructions),
        specialNeeds:
            (specialNeeds != null ? specialNeeds.value : this.specialNeeds),
        species: (species != null ? species.value : this.species),
        vaccinationsUpToDate: (vaccinationsUpToDate != null
            ? vaccinationsUpToDate.value
            : this.vaccinationsUpToDate),
        veterinarianContact: (veterinarianContact != null
            ? veterinarianContact.value
            : this.veterinarianContact),
        weight: (weight != null ? weight.value : this.weight));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionsAnimalService {
  const MissionsAnimalService({
    this.animalId,
    this.date,
    this.petServiceId,
    this.price,
  });

  factory MissionsAnimalService.fromJson(Map<String, dynamic> json) =>
      _$MissionsAnimalServiceFromJson(json);

  static const toJsonFactory = _$MissionsAnimalServiceToJson;
  Map<String, dynamic> toJson() => _$MissionsAnimalServiceToJson(this);

  @JsonKey(name: 'animalId')
  final String? animalId;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'petServiceId')
  final String? petServiceId;
  @JsonKey(name: 'price')
  final double? price;
  static const fromJsonFactory = _$MissionsAnimalServiceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionsAnimalService &&
            (identical(other.animalId, animalId) ||
                const DeepCollectionEquality()
                    .equals(other.animalId, animalId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.petServiceId, petServiceId) ||
                const DeepCollectionEquality()
                    .equals(other.petServiceId, petServiceId)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(animalId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(petServiceId) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $MissionsAnimalServiceExtension on MissionsAnimalService {
  MissionsAnimalService copyWith(
      {String? animalId, String? date, String? petServiceId, double? price}) {
    return MissionsAnimalService(
        animalId: animalId ?? this.animalId,
        date: date ?? this.date,
        petServiceId: petServiceId ?? this.petServiceId,
        price: price ?? this.price);
  }

  MissionsAnimalService copyWithWrapped(
      {Wrapped<String?>? animalId,
      Wrapped<String?>? date,
      Wrapped<String?>? petServiceId,
      Wrapped<double?>? price}) {
    return MissionsAnimalService(
        animalId: (animalId != null ? animalId.value : this.animalId),
        date: (date != null ? date.value : this.date),
        petServiceId:
            (petServiceId != null ? petServiceId.value : this.petServiceId),
        price: (price != null ? price.value : this.price));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionsAnimalServiceWithDetails {
  const MissionsAnimalServiceWithDetails({
    this.animal,
    this.date,
    this.petService,
    this.price,
  });

  factory MissionsAnimalServiceWithDetails.fromJson(
          Map<String, dynamic> json) =>
      _$MissionsAnimalServiceWithDetailsFromJson(json);

  static const toJsonFactory = _$MissionsAnimalServiceWithDetailsToJson;
  Map<String, dynamic> toJson() =>
      _$MissionsAnimalServiceWithDetailsToJson(this);

  @JsonKey(name: 'animal')
  final AnimalWithOwner? animal;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'petService')
  final PetServicesPetService? petService;
  @JsonKey(name: 'price')
  final double? price;
  static const fromJsonFactory = _$MissionsAnimalServiceWithDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionsAnimalServiceWithDetails &&
            (identical(other.animal, animal) ||
                const DeepCollectionEquality().equals(other.animal, animal)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.petService, petService) ||
                const DeepCollectionEquality()
                    .equals(other.petService, petService)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(animal) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(petService) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $MissionsAnimalServiceWithDetailsExtension
    on MissionsAnimalServiceWithDetails {
  MissionsAnimalServiceWithDetails copyWith(
      {AnimalWithOwner? animal,
      String? date,
      PetServicesPetService? petService,
      double? price}) {
    return MissionsAnimalServiceWithDetails(
        animal: animal ?? this.animal,
        date: date ?? this.date,
        petService: petService ?? this.petService,
        price: price ?? this.price);
  }

  MissionsAnimalServiceWithDetails copyWithWrapped(
      {Wrapped<AnimalWithOwner?>? animal,
      Wrapped<String?>? date,
      Wrapped<PetServicesPetService?>? petService,
      Wrapped<double?>? price}) {
    return MissionsAnimalServiceWithDetails(
        animal: (animal != null ? animal.value : this.animal),
        date: (date != null ? date.value : this.date),
        petService: (petService != null ? petService.value : this.petService),
        price: (price != null ? price.value : this.price));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionsCreateMissionRequest {
  const MissionsCreateMissionRequest({
    required this.clientId,
    required this.dailyServices,
    required this.endDate,
    required this.location,
    this.notes,
    required this.startDate,
  });

  factory MissionsCreateMissionRequest.fromJson(Map<String, dynamic> json) =>
      _$MissionsCreateMissionRequestFromJson(json);

  static const toJsonFactory = _$MissionsCreateMissionRequestToJson;
  Map<String, dynamic> toJson() => _$MissionsCreateMissionRequestToJson(this);

  @JsonKey(name: 'clientId')
  final String clientId;
  @JsonKey(name: 'dailyServices', defaultValue: <MissionsDailyService>[])
  final List<MissionsDailyService> dailyServices;
  @JsonKey(name: 'endDate')
  final String endDate;
  @JsonKey(name: 'location')
  final PlaceDetails location;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'startDate')
  final String startDate;
  static const fromJsonFactory = _$MissionsCreateMissionRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionsCreateMissionRequest &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.dailyServices, dailyServices) ||
                const DeepCollectionEquality()
                    .equals(other.dailyServices, dailyServices)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(dailyServices) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(startDate) ^
      runtimeType.hashCode;
}

extension $MissionsCreateMissionRequestExtension
    on MissionsCreateMissionRequest {
  MissionsCreateMissionRequest copyWith(
      {String? clientId,
      List<MissionsDailyService>? dailyServices,
      String? endDate,
      PlaceDetails? location,
      String? notes,
      String? startDate}) {
    return MissionsCreateMissionRequest(
        clientId: clientId ?? this.clientId,
        dailyServices: dailyServices ?? this.dailyServices,
        endDate: endDate ?? this.endDate,
        location: location ?? this.location,
        notes: notes ?? this.notes,
        startDate: startDate ?? this.startDate);
  }

  MissionsCreateMissionRequest copyWithWrapped(
      {Wrapped<String>? clientId,
      Wrapped<List<MissionsDailyService>>? dailyServices,
      Wrapped<String>? endDate,
      Wrapped<PlaceDetails>? location,
      Wrapped<String?>? notes,
      Wrapped<String>? startDate}) {
    return MissionsCreateMissionRequest(
        clientId: (clientId != null ? clientId.value : this.clientId),
        dailyServices:
            (dailyServices != null ? dailyServices.value : this.dailyServices),
        endDate: (endDate != null ? endDate.value : this.endDate),
        location: (location != null ? location.value : this.location),
        notes: (notes != null ? notes.value : this.notes),
        startDate: (startDate != null ? startDate.value : this.startDate));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionsDailyService {
  const MissionsDailyService({
    this.date,
    this.services,
  });

  factory MissionsDailyService.fromJson(Map<String, dynamic> json) =>
      _$MissionsDailyServiceFromJson(json);

  static const toJsonFactory = _$MissionsDailyServiceToJson;
  Map<String, dynamic> toJson() => _$MissionsDailyServiceToJson(this);

  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'services', defaultValue: <MissionsAnimalService>[])
  final List<MissionsAnimalService>? services;
  static const fromJsonFactory = _$MissionsDailyServiceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionsDailyService &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(services) ^
      runtimeType.hashCode;
}

extension $MissionsDailyServiceExtension on MissionsDailyService {
  MissionsDailyService copyWith(
      {String? date, List<MissionsAnimalService>? services}) {
    return MissionsDailyService(
        date: date ?? this.date, services: services ?? this.services);
  }

  MissionsDailyService copyWithWrapped(
      {Wrapped<String?>? date,
      Wrapped<List<MissionsAnimalService>?>? services}) {
    return MissionsDailyService(
        date: (date != null ? date.value : this.date),
        services: (services != null ? services.value : this.services));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionsDailyServiceWithDetails {
  const MissionsDailyServiceWithDetails({
    this.date,
    this.services,
  });

  factory MissionsDailyServiceWithDetails.fromJson(Map<String, dynamic> json) =>
      _$MissionsDailyServiceWithDetailsFromJson(json);

  static const toJsonFactory = _$MissionsDailyServiceWithDetailsToJson;
  Map<String, dynamic> toJson() =>
      _$MissionsDailyServiceWithDetailsToJson(this);

  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'services', defaultValue: <MissionsAnimalServiceWithDetails>[])
  final List<MissionsAnimalServiceWithDetails>? services;
  static const fromJsonFactory = _$MissionsDailyServiceWithDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionsDailyServiceWithDetails &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(services) ^
      runtimeType.hashCode;
}

extension $MissionsDailyServiceWithDetailsExtension
    on MissionsDailyServiceWithDetails {
  MissionsDailyServiceWithDetails copyWith(
      {String? date, List<MissionsAnimalServiceWithDetails>? services}) {
    return MissionsDailyServiceWithDetails(
        date: date ?? this.date, services: services ?? this.services);
  }

  MissionsDailyServiceWithDetails copyWithWrapped(
      {Wrapped<String?>? date,
      Wrapped<List<MissionsAnimalServiceWithDetails>?>? services}) {
    return MissionsDailyServiceWithDetails(
        date: (date != null ? date.value : this.date),
        services: (services != null ? services.value : this.services));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionsErrorResponse {
  const MissionsErrorResponse({
    this.message,
  });

  factory MissionsErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$MissionsErrorResponseFromJson(json);

  static const toJsonFactory = _$MissionsErrorResponseToJson;
  Map<String, dynamic> toJson() => _$MissionsErrorResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$MissionsErrorResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionsErrorResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $MissionsErrorResponseExtension on MissionsErrorResponse {
  MissionsErrorResponse copyWith({String? message}) {
    return MissionsErrorResponse(message: message ?? this.message);
  }

  MissionsErrorResponse copyWithWrapped({Wrapped<String?>? message}) {
    return MissionsErrorResponse(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionsMission {
  const MissionsMission({
    this.clientId,
    this.dailyServices,
    this.endDate,
    this.id,
    this.location,
    this.notes,
    this.startDate,
    this.status,
    this.vetAssistantId,
  });

  factory MissionsMission.fromJson(Map<String, dynamic> json) =>
      _$MissionsMissionFromJson(json);

  static const toJsonFactory = _$MissionsMissionToJson;
  Map<String, dynamic> toJson() => _$MissionsMissionToJson(this);

  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: 'dailyServices', defaultValue: <MissionsDailyService>[])
  final List<MissionsDailyService>? dailyServices;
  @JsonKey(name: 'endDate')
  final String? endDate;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'location')
  final PlaceDetails? location;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'startDate')
  final String? startDate;
  @JsonKey(
    name: 'status',
    toJson: missionsStatusNullableToJson,
    fromJson: missionsStatusNullableFromJson,
  )
  final enums.MissionsStatus? status;
  @JsonKey(name: 'vetAssistantId')
  final String? vetAssistantId;
  static const fromJsonFactory = _$MissionsMissionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionsMission &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.dailyServices, dailyServices) ||
                const DeepCollectionEquality()
                    .equals(other.dailyServices, dailyServices)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.vetAssistantId, vetAssistantId) ||
                const DeepCollectionEquality()
                    .equals(other.vetAssistantId, vetAssistantId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(dailyServices) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(vetAssistantId) ^
      runtimeType.hashCode;
}

extension $MissionsMissionExtension on MissionsMission {
  MissionsMission copyWith(
      {String? clientId,
      List<MissionsDailyService>? dailyServices,
      String? endDate,
      String? id,
      PlaceDetails? location,
      String? notes,
      String? startDate,
      enums.MissionsStatus? status,
      String? vetAssistantId}) {
    return MissionsMission(
        clientId: clientId ?? this.clientId,
        dailyServices: dailyServices ?? this.dailyServices,
        endDate: endDate ?? this.endDate,
        id: id ?? this.id,
        location: location ?? this.location,
        notes: notes ?? this.notes,
        startDate: startDate ?? this.startDate,
        status: status ?? this.status,
        vetAssistantId: vetAssistantId ?? this.vetAssistantId);
  }

  MissionsMission copyWithWrapped(
      {Wrapped<String?>? clientId,
      Wrapped<List<MissionsDailyService>?>? dailyServices,
      Wrapped<String?>? endDate,
      Wrapped<String?>? id,
      Wrapped<PlaceDetails?>? location,
      Wrapped<String?>? notes,
      Wrapped<String?>? startDate,
      Wrapped<enums.MissionsStatus?>? status,
      Wrapped<String?>? vetAssistantId}) {
    return MissionsMission(
        clientId: (clientId != null ? clientId.value : this.clientId),
        dailyServices:
            (dailyServices != null ? dailyServices.value : this.dailyServices),
        endDate: (endDate != null ? endDate.value : this.endDate),
        id: (id != null ? id.value : this.id),
        location: (location != null ? location.value : this.location),
        notes: (notes != null ? notes.value : this.notes),
        startDate: (startDate != null ? startDate.value : this.startDate),
        status: (status != null ? status.value : this.status),
        vetAssistantId: (vetAssistantId != null
            ? vetAssistantId.value
            : this.vetAssistantId));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionsMissionWithDetails {
  const MissionsMissionWithDetails({
    this.$client,
    this.dailyServices,
    this.endDate,
    this.id,
    this.location,
    this.notes,
    this.startDate,
    this.status,
    this.vetAssistant,
  });

  factory MissionsMissionWithDetails.fromJson(Map<String, dynamic> json) =>
      _$MissionsMissionWithDetailsFromJson(json);

  static const toJsonFactory = _$MissionsMissionWithDetailsToJson;
  Map<String, dynamic> toJson() => _$MissionsMissionWithDetailsToJson(this);

  @JsonKey(name: 'client')
  final UsersUser? $client;
  @JsonKey(
      name: 'dailyServices', defaultValue: <MissionsDailyServiceWithDetails>[])
  final List<MissionsDailyServiceWithDetails>? dailyServices;
  @JsonKey(name: 'endDate')
  final String? endDate;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'location')
  final PlaceDetails? location;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'startDate')
  final String? startDate;
  @JsonKey(
    name: 'status',
    toJson: missionsStatusNullableToJson,
    fromJson: missionsStatusNullableFromJson,
  )
  final enums.MissionsStatus? status;
  @JsonKey(name: 'vetAssistant')
  final UsersUser? vetAssistant;
  static const fromJsonFactory = _$MissionsMissionWithDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionsMissionWithDetails &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality()
                    .equals(other.$client, $client)) &&
            (identical(other.dailyServices, dailyServices) ||
                const DeepCollectionEquality()
                    .equals(other.dailyServices, dailyServices)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.vetAssistant, vetAssistant) ||
                const DeepCollectionEquality()
                    .equals(other.vetAssistant, vetAssistant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(dailyServices) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(vetAssistant) ^
      runtimeType.hashCode;
}

extension $MissionsMissionWithDetailsExtension on MissionsMissionWithDetails {
  MissionsMissionWithDetails copyWith(
      {UsersUser? $client,
      List<MissionsDailyServiceWithDetails>? dailyServices,
      String? endDate,
      String? id,
      PlaceDetails? location,
      String? notes,
      String? startDate,
      enums.MissionsStatus? status,
      UsersUser? vetAssistant}) {
    return MissionsMissionWithDetails(
        $client: $client ?? this.$client,
        dailyServices: dailyServices ?? this.dailyServices,
        endDate: endDate ?? this.endDate,
        id: id ?? this.id,
        location: location ?? this.location,
        notes: notes ?? this.notes,
        startDate: startDate ?? this.startDate,
        status: status ?? this.status,
        vetAssistant: vetAssistant ?? this.vetAssistant);
  }

  MissionsMissionWithDetails copyWithWrapped(
      {Wrapped<UsersUser?>? $client,
      Wrapped<List<MissionsDailyServiceWithDetails>?>? dailyServices,
      Wrapped<String?>? endDate,
      Wrapped<String?>? id,
      Wrapped<PlaceDetails?>? location,
      Wrapped<String?>? notes,
      Wrapped<String?>? startDate,
      Wrapped<enums.MissionsStatus?>? status,
      Wrapped<UsersUser?>? vetAssistant}) {
    return MissionsMissionWithDetails(
        $client: ($client != null ? $client.value : this.$client),
        dailyServices:
            (dailyServices != null ? dailyServices.value : this.dailyServices),
        endDate: (endDate != null ? endDate.value : this.endDate),
        id: (id != null ? id.value : this.id),
        location: (location != null ? location.value : this.location),
        notes: (notes != null ? notes.value : this.notes),
        startDate: (startDate != null ? startDate.value : this.startDate),
        status: (status != null ? status.value : this.status),
        vetAssistant:
            (vetAssistant != null ? vetAssistant.value : this.vetAssistant));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionsUpdateMissionStatusRequest {
  const MissionsUpdateMissionStatusRequest({
    required this.status,
  });

  factory MissionsUpdateMissionStatusRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MissionsUpdateMissionStatusRequestFromJson(json);

  static const toJsonFactory = _$MissionsUpdateMissionStatusRequestToJson;
  Map<String, dynamic> toJson() =>
      _$MissionsUpdateMissionStatusRequestToJson(this);

  @JsonKey(
    name: 'status',
    toJson: missionsStatusToJson,
    fromJson: missionsStatusFromJson,
  )
  final enums.MissionsStatus status;
  static const fromJsonFactory = _$MissionsUpdateMissionStatusRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionsUpdateMissionStatusRequest &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $MissionsUpdateMissionStatusRequestExtension
    on MissionsUpdateMissionStatusRequest {
  MissionsUpdateMissionStatusRequest copyWith({enums.MissionsStatus? status}) {
    return MissionsUpdateMissionStatusRequest(status: status ?? this.status);
  }

  MissionsUpdateMissionStatusRequest copyWithWrapped(
      {Wrapped<enums.MissionsStatus>? status}) {
    return MissionsUpdateMissionStatusRequest(
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class PetServicesErrorResponse {
  const PetServicesErrorResponse({
    this.message,
  });

  factory PetServicesErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$PetServicesErrorResponseFromJson(json);

  static const toJsonFactory = _$PetServicesErrorResponseToJson;
  Map<String, dynamic> toJson() => _$PetServicesErrorResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$PetServicesErrorResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PetServicesErrorResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $PetServicesErrorResponseExtension on PetServicesErrorResponse {
  PetServicesErrorResponse copyWith({String? message}) {
    return PetServicesErrorResponse(message: message ?? this.message);
  }

  PetServicesErrorResponse copyWithWrapped({Wrapped<String?>? message}) {
    return PetServicesErrorResponse(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class PetServicesPetService {
  const PetServicesPetService({
    this.animalTypes,
    this.basePrice,
    this.category,
    this.description,
    this.durationMinutes,
    this.id,
    this.includedItems,
    this.isCustomDurationAllowed,
    this.isCustomPriceAllowed,
    this.name,
  });

  factory PetServicesPetService.fromJson(Map<String, dynamic> json) =>
      _$PetServicesPetServiceFromJson(json);

  static const toJsonFactory = _$PetServicesPetServiceToJson;
  Map<String, dynamic> toJson() => _$PetServicesPetServiceToJson(this);

  @JsonKey(
    name: 'animalTypes',
    toJson: petServicesAnimalTypeListToJson,
    fromJson: petServicesAnimalTypeListFromJson,
  )
  final List<enums.PetServicesAnimalType>? animalTypes;
  @JsonKey(name: 'basePrice')
  final double? basePrice;
  @JsonKey(
    name: 'category',
    toJson: petServicesCategoryNullableToJson,
    fromJson: petServicesCategoryNullableFromJson,
  )
  final enums.PetServicesCategory? category;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'durationMinutes')
  final int? durationMinutes;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'includedItems', defaultValue: <String>[])
  final List<String>? includedItems;
  @JsonKey(name: 'isCustomDurationAllowed')
  final bool? isCustomDurationAllowed;
  @JsonKey(name: 'isCustomPriceAllowed')
  final bool? isCustomPriceAllowed;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$PetServicesPetServiceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PetServicesPetService &&
            (identical(other.animalTypes, animalTypes) ||
                const DeepCollectionEquality()
                    .equals(other.animalTypes, animalTypes)) &&
            (identical(other.basePrice, basePrice) ||
                const DeepCollectionEquality()
                    .equals(other.basePrice, basePrice)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.durationMinutes, durationMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.durationMinutes, durationMinutes)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.includedItems, includedItems) ||
                const DeepCollectionEquality()
                    .equals(other.includedItems, includedItems)) &&
            (identical(
                    other.isCustomDurationAllowed, isCustomDurationAllowed) ||
                const DeepCollectionEquality().equals(
                    other.isCustomDurationAllowed, isCustomDurationAllowed)) &&
            (identical(other.isCustomPriceAllowed, isCustomPriceAllowed) ||
                const DeepCollectionEquality().equals(
                    other.isCustomPriceAllowed, isCustomPriceAllowed)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(animalTypes) ^
      const DeepCollectionEquality().hash(basePrice) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(durationMinutes) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(includedItems) ^
      const DeepCollectionEquality().hash(isCustomDurationAllowed) ^
      const DeepCollectionEquality().hash(isCustomPriceAllowed) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $PetServicesPetServiceExtension on PetServicesPetService {
  PetServicesPetService copyWith(
      {List<enums.PetServicesAnimalType>? animalTypes,
      double? basePrice,
      enums.PetServicesCategory? category,
      String? description,
      int? durationMinutes,
      String? id,
      List<String>? includedItems,
      bool? isCustomDurationAllowed,
      bool? isCustomPriceAllowed,
      String? name}) {
    return PetServicesPetService(
        animalTypes: animalTypes ?? this.animalTypes,
        basePrice: basePrice ?? this.basePrice,
        category: category ?? this.category,
        description: description ?? this.description,
        durationMinutes: durationMinutes ?? this.durationMinutes,
        id: id ?? this.id,
        includedItems: includedItems ?? this.includedItems,
        isCustomDurationAllowed:
            isCustomDurationAllowed ?? this.isCustomDurationAllowed,
        isCustomPriceAllowed: isCustomPriceAllowed ?? this.isCustomPriceAllowed,
        name: name ?? this.name);
  }

  PetServicesPetService copyWithWrapped(
      {Wrapped<List<enums.PetServicesAnimalType>?>? animalTypes,
      Wrapped<double?>? basePrice,
      Wrapped<enums.PetServicesCategory?>? category,
      Wrapped<String?>? description,
      Wrapped<int?>? durationMinutes,
      Wrapped<String?>? id,
      Wrapped<List<String>?>? includedItems,
      Wrapped<bool?>? isCustomDurationAllowed,
      Wrapped<bool?>? isCustomPriceAllowed,
      Wrapped<String?>? name}) {
    return PetServicesPetService(
        animalTypes:
            (animalTypes != null ? animalTypes.value : this.animalTypes),
        basePrice: (basePrice != null ? basePrice.value : this.basePrice),
        category: (category != null ? category.value : this.category),
        description:
            (description != null ? description.value : this.description),
        durationMinutes: (durationMinutes != null
            ? durationMinutes.value
            : this.durationMinutes),
        id: (id != null ? id.value : this.id),
        includedItems:
            (includedItems != null ? includedItems.value : this.includedItems),
        isCustomDurationAllowed: (isCustomDurationAllowed != null
            ? isCustomDurationAllowed.value
            : this.isCustomDurationAllowed),
        isCustomPriceAllowed: (isCustomPriceAllowed != null
            ? isCustomPriceAllowed.value
            : this.isCustomPriceAllowed),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceDetails {
  const PlaceDetails({
    this.formattedAddress,
    this.latitude,
    this.longitude,
    this.name,
  });

  factory PlaceDetails.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsFromJson(json);

  static const toJsonFactory = _$PlaceDetailsToJson;
  Map<String, dynamic> toJson() => _$PlaceDetailsToJson(this);

  @JsonKey(name: 'formattedAddress')
  final String? formattedAddress;
  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'longitude')
  final double? longitude;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$PlaceDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlaceDetails &&
            (identical(other.formattedAddress, formattedAddress) ||
                const DeepCollectionEquality()
                    .equals(other.formattedAddress, formattedAddress)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(formattedAddress) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $PlaceDetailsExtension on PlaceDetails {
  PlaceDetails copyWith(
      {String? formattedAddress,
      double? latitude,
      double? longitude,
      String? name}) {
    return PlaceDetails(
        formattedAddress: formattedAddress ?? this.formattedAddress,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        name: name ?? this.name);
  }

  PlaceDetails copyWithWrapped(
      {Wrapped<String?>? formattedAddress,
      Wrapped<double?>? latitude,
      Wrapped<double?>? longitude,
      Wrapped<String?>? name}) {
    return PlaceDetails(
        formattedAddress: (formattedAddress != null
            ? formattedAddress.value
            : this.formattedAddress),
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceErrorResponse {
  const PlaceErrorResponse({
    this.message,
  });

  factory PlaceErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceErrorResponseFromJson(json);

  static const toJsonFactory = _$PlaceErrorResponseToJson;
  Map<String, dynamic> toJson() => _$PlaceErrorResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$PlaceErrorResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlaceErrorResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $PlaceErrorResponseExtension on PlaceErrorResponse {
  PlaceErrorResponse copyWith({String? message}) {
    return PlaceErrorResponse(message: message ?? this.message);
  }

  PlaceErrorResponse copyWithWrapped({Wrapped<String?>? message}) {
    return PlaceErrorResponse(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceSuggestion {
  const PlaceSuggestion({
    this.description,
    this.placeId,
  });

  factory PlaceSuggestion.fromJson(Map<String, dynamic> json) =>
      _$PlaceSuggestionFromJson(json);

  static const toJsonFactory = _$PlaceSuggestionToJson;
  Map<String, dynamic> toJson() => _$PlaceSuggestionToJson(this);

  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'placeId')
  final String? placeId;
  static const fromJsonFactory = _$PlaceSuggestionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlaceSuggestion &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality().equals(other.placeId, placeId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(placeId) ^
      runtimeType.hashCode;
}

extension $PlaceSuggestionExtension on PlaceSuggestion {
  PlaceSuggestion copyWith({String? description, String? placeId}) {
    return PlaceSuggestion(
        description: description ?? this.description,
        placeId: placeId ?? this.placeId);
  }

  PlaceSuggestion copyWithWrapped(
      {Wrapped<String?>? description, Wrapped<String?>? placeId}) {
    return PlaceSuggestion(
        description:
            (description != null ? description.value : this.description),
        placeId: (placeId != null ? placeId.value : this.placeId));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersCreateUserRequest {
  const UsersCreateUserRequest({
    required this.address,
    this.creationDate,
    required this.email,
    this.emergencyContact,
    required this.firebaseUid,
    required this.firstname,
    required this.lastname,
    this.notes,
    required this.phone,
    this.photoURL,
    this.preferredCommunicationMethod,
    required this.role,
  });

  factory UsersCreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersCreateUserRequestFromJson(json);

  static const toJsonFactory = _$UsersCreateUserRequestToJson;
  Map<String, dynamic> toJson() => _$UsersCreateUserRequestToJson(this);

  @JsonKey(name: 'address')
  final PlaceDetails address;
  @JsonKey(name: 'creationDate')
  final String? creationDate;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'emergencyContact')
  final String? emergencyContact;
  @JsonKey(name: 'firebaseUid')
  final String firebaseUid;
  @JsonKey(name: 'firstname')
  final String firstname;
  @JsonKey(name: 'lastname')
  final String lastname;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'photoURL')
  final String? photoURL;
  @JsonKey(name: 'preferredCommunicationMethod')
  final String? preferredCommunicationMethod;
  @JsonKey(
    name: 'role',
    toJson: usersUserRoleToJson,
    fromJson: usersUserRoleFromJson,
  )
  final enums.UsersUserRole role;
  static const fromJsonFactory = _$UsersCreateUserRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UsersCreateUserRequest &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emergencyContact, emergencyContact) ||
                const DeepCollectionEquality()
                    .equals(other.emergencyContact, emergencyContact)) &&
            (identical(other.firebaseUid, firebaseUid) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseUid, firebaseUid)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.preferredCommunicationMethod,
                    preferredCommunicationMethod) ||
                const DeepCollectionEquality().equals(
                    other.preferredCommunicationMethod,
                    preferredCommunicationMethod)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emergencyContact) ^
      const DeepCollectionEquality().hash(firebaseUid) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(preferredCommunicationMethod) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $UsersCreateUserRequestExtension on UsersCreateUserRequest {
  UsersCreateUserRequest copyWith(
      {PlaceDetails? address,
      String? creationDate,
      String? email,
      String? emergencyContact,
      String? firebaseUid,
      String? firstname,
      String? lastname,
      String? notes,
      String? phone,
      String? photoURL,
      String? preferredCommunicationMethod,
      enums.UsersUserRole? role}) {
    return UsersCreateUserRequest(
        address: address ?? this.address,
        creationDate: creationDate ?? this.creationDate,
        email: email ?? this.email,
        emergencyContact: emergencyContact ?? this.emergencyContact,
        firebaseUid: firebaseUid ?? this.firebaseUid,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        notes: notes ?? this.notes,
        phone: phone ?? this.phone,
        photoURL: photoURL ?? this.photoURL,
        preferredCommunicationMethod:
            preferredCommunicationMethod ?? this.preferredCommunicationMethod,
        role: role ?? this.role);
  }

  UsersCreateUserRequest copyWithWrapped(
      {Wrapped<PlaceDetails>? address,
      Wrapped<String?>? creationDate,
      Wrapped<String>? email,
      Wrapped<String?>? emergencyContact,
      Wrapped<String>? firebaseUid,
      Wrapped<String>? firstname,
      Wrapped<String>? lastname,
      Wrapped<String?>? notes,
      Wrapped<String>? phone,
      Wrapped<String?>? photoURL,
      Wrapped<String?>? preferredCommunicationMethod,
      Wrapped<enums.UsersUserRole>? role}) {
    return UsersCreateUserRequest(
        address: (address != null ? address.value : this.address),
        creationDate:
            (creationDate != null ? creationDate.value : this.creationDate),
        email: (email != null ? email.value : this.email),
        emergencyContact: (emergencyContact != null
            ? emergencyContact.value
            : this.emergencyContact),
        firebaseUid:
            (firebaseUid != null ? firebaseUid.value : this.firebaseUid),
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        notes: (notes != null ? notes.value : this.notes),
        phone: (phone != null ? phone.value : this.phone),
        photoURL: (photoURL != null ? photoURL.value : this.photoURL),
        preferredCommunicationMethod: (preferredCommunicationMethod != null
            ? preferredCommunicationMethod.value
            : this.preferredCommunicationMethod),
        role: (role != null ? role.value : this.role));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersErrorResponse {
  const UsersErrorResponse({
    this.message,
  });

  factory UsersErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersErrorResponseFromJson(json);

  static const toJsonFactory = _$UsersErrorResponseToJson;
  Map<String, dynamic> toJson() => _$UsersErrorResponseToJson(this);

  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$UsersErrorResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UsersErrorResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $UsersErrorResponseExtension on UsersErrorResponse {
  UsersErrorResponse copyWith({String? message}) {
    return UsersErrorResponse(message: message ?? this.message);
  }

  UsersErrorResponse copyWithWrapped({Wrapped<String?>? message}) {
    return UsersErrorResponse(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersUpdateUserRequest {
  const UsersUpdateUserRequest({
    this.address,
    this.email,
    this.emergencyContact,
    this.firebaseUid,
    this.firstname,
    this.id,
    this.lastname,
    this.notes,
    this.phone,
    this.photoURL,
    this.preferredCommunicationMethod,
    this.updateDate,
  });

  factory UsersUpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersUpdateUserRequestFromJson(json);

  static const toJsonFactory = _$UsersUpdateUserRequestToJson;
  Map<String, dynamic> toJson() => _$UsersUpdateUserRequestToJson(this);

  @JsonKey(name: 'address')
  final PlaceDetails? address;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'emergencyContact')
  final String? emergencyContact;
  @JsonKey(name: 'firebaseUid')
  final String? firebaseUid;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photoURL')
  final String? photoURL;
  @JsonKey(name: 'preferredCommunicationMethod')
  final String? preferredCommunicationMethod;
  @JsonKey(name: 'updateDate')
  final String? updateDate;
  static const fromJsonFactory = _$UsersUpdateUserRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UsersUpdateUserRequest &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emergencyContact, emergencyContact) ||
                const DeepCollectionEquality()
                    .equals(other.emergencyContact, emergencyContact)) &&
            (identical(other.firebaseUid, firebaseUid) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseUid, firebaseUid)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.preferredCommunicationMethod,
                    preferredCommunicationMethod) ||
                const DeepCollectionEquality().equals(
                    other.preferredCommunicationMethod,
                    preferredCommunicationMethod)) &&
            (identical(other.updateDate, updateDate) ||
                const DeepCollectionEquality()
                    .equals(other.updateDate, updateDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emergencyContact) ^
      const DeepCollectionEquality().hash(firebaseUid) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(preferredCommunicationMethod) ^
      const DeepCollectionEquality().hash(updateDate) ^
      runtimeType.hashCode;
}

extension $UsersUpdateUserRequestExtension on UsersUpdateUserRequest {
  UsersUpdateUserRequest copyWith(
      {PlaceDetails? address,
      String? email,
      String? emergencyContact,
      String? firebaseUid,
      String? firstname,
      String? id,
      String? lastname,
      String? notes,
      String? phone,
      String? photoURL,
      String? preferredCommunicationMethod,
      String? updateDate}) {
    return UsersUpdateUserRequest(
        address: address ?? this.address,
        email: email ?? this.email,
        emergencyContact: emergencyContact ?? this.emergencyContact,
        firebaseUid: firebaseUid ?? this.firebaseUid,
        firstname: firstname ?? this.firstname,
        id: id ?? this.id,
        lastname: lastname ?? this.lastname,
        notes: notes ?? this.notes,
        phone: phone ?? this.phone,
        photoURL: photoURL ?? this.photoURL,
        preferredCommunicationMethod:
            preferredCommunicationMethod ?? this.preferredCommunicationMethod,
        updateDate: updateDate ?? this.updateDate);
  }

  UsersUpdateUserRequest copyWithWrapped(
      {Wrapped<PlaceDetails?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? emergencyContact,
      Wrapped<String?>? firebaseUid,
      Wrapped<String?>? firstname,
      Wrapped<String?>? id,
      Wrapped<String?>? lastname,
      Wrapped<String?>? notes,
      Wrapped<String?>? phone,
      Wrapped<String?>? photoURL,
      Wrapped<String?>? preferredCommunicationMethod,
      Wrapped<String?>? updateDate}) {
    return UsersUpdateUserRequest(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        emergencyContact: (emergencyContact != null
            ? emergencyContact.value
            : this.emergencyContact),
        firebaseUid:
            (firebaseUid != null ? firebaseUid.value : this.firebaseUid),
        firstname: (firstname != null ? firstname.value : this.firstname),
        id: (id != null ? id.value : this.id),
        lastname: (lastname != null ? lastname.value : this.lastname),
        notes: (notes != null ? notes.value : this.notes),
        phone: (phone != null ? phone.value : this.phone),
        photoURL: (photoURL != null ? photoURL.value : this.photoURL),
        preferredCommunicationMethod: (preferredCommunicationMethod != null
            ? preferredCommunicationMethod.value
            : this.preferredCommunicationMethod),
        updateDate: (updateDate != null ? updateDate.value : this.updateDate));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersUser {
  const UsersUser({
    this.address,
    this.email,
    this.emergencyContact,
    this.firebaseId,
    this.firstname,
    this.id,
    this.isVerified,
    this.lastname,
    this.notes,
    this.phone,
    this.photoUrl,
    this.preferredCommunicationMethod,
    this.registrationDate,
    this.role,
  });

  factory UsersUser.fromJson(Map<String, dynamic> json) =>
      _$UsersUserFromJson(json);

  static const toJsonFactory = _$UsersUserToJson;
  Map<String, dynamic> toJson() => _$UsersUserToJson(this);

  @JsonKey(name: 'address')
  final PlaceDetails? address;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'emergencyContact')
  final String? emergencyContact;
  @JsonKey(name: 'firebaseId')
  final String? firebaseId;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'isVerified')
  final bool? isVerified;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(name: 'preferredCommunicationMethod')
  final String? preferredCommunicationMethod;
  @JsonKey(name: 'registrationDate')
  final String? registrationDate;
  @JsonKey(
    name: 'role',
    toJson: usersUserRoleNullableToJson,
    fromJson: usersUserRoleNullableFromJson,
  )
  final enums.UsersUserRole? role;
  static const fromJsonFactory = _$UsersUserFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UsersUser &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emergencyContact, emergencyContact) ||
                const DeepCollectionEquality()
                    .equals(other.emergencyContact, emergencyContact)) &&
            (identical(other.firebaseId, firebaseId) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseId, firebaseId)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.preferredCommunicationMethod,
                    preferredCommunicationMethod) ||
                const DeepCollectionEquality().equals(
                    other.preferredCommunicationMethod,
                    preferredCommunicationMethod)) &&
            (identical(other.registrationDate, registrationDate) ||
                const DeepCollectionEquality()
                    .equals(other.registrationDate, registrationDate)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emergencyContact) ^
      const DeepCollectionEquality().hash(firebaseId) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(preferredCommunicationMethod) ^
      const DeepCollectionEquality().hash(registrationDate) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $UsersUserExtension on UsersUser {
  UsersUser copyWith(
      {PlaceDetails? address,
      String? email,
      String? emergencyContact,
      String? firebaseId,
      String? firstname,
      String? id,
      bool? isVerified,
      String? lastname,
      String? notes,
      String? phone,
      String? photoUrl,
      String? preferredCommunicationMethod,
      String? registrationDate,
      enums.UsersUserRole? role}) {
    return UsersUser(
        address: address ?? this.address,
        email: email ?? this.email,
        emergencyContact: emergencyContact ?? this.emergencyContact,
        firebaseId: firebaseId ?? this.firebaseId,
        firstname: firstname ?? this.firstname,
        id: id ?? this.id,
        isVerified: isVerified ?? this.isVerified,
        lastname: lastname ?? this.lastname,
        notes: notes ?? this.notes,
        phone: phone ?? this.phone,
        photoUrl: photoUrl ?? this.photoUrl,
        preferredCommunicationMethod:
            preferredCommunicationMethod ?? this.preferredCommunicationMethod,
        registrationDate: registrationDate ?? this.registrationDate,
        role: role ?? this.role);
  }

  UsersUser copyWithWrapped(
      {Wrapped<PlaceDetails?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? emergencyContact,
      Wrapped<String?>? firebaseId,
      Wrapped<String?>? firstname,
      Wrapped<String?>? id,
      Wrapped<bool?>? isVerified,
      Wrapped<String?>? lastname,
      Wrapped<String?>? notes,
      Wrapped<String?>? phone,
      Wrapped<String?>? photoUrl,
      Wrapped<String?>? preferredCommunicationMethod,
      Wrapped<String?>? registrationDate,
      Wrapped<enums.UsersUserRole?>? role}) {
    return UsersUser(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        emergencyContact: (emergencyContact != null
            ? emergencyContact.value
            : this.emergencyContact),
        firebaseId: (firebaseId != null ? firebaseId.value : this.firebaseId),
        firstname: (firstname != null ? firstname.value : this.firstname),
        id: (id != null ? id.value : this.id),
        isVerified: (isVerified != null ? isVerified.value : this.isVerified),
        lastname: (lastname != null ? lastname.value : this.lastname),
        notes: (notes != null ? notes.value : this.notes),
        phone: (phone != null ? phone.value : this.phone),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        preferredCommunicationMethod: (preferredCommunicationMethod != null
            ? preferredCommunicationMethod.value
            : this.preferredCommunicationMethod),
        registrationDate: (registrationDate != null
            ? registrationDate.value
            : this.registrationDate),
        role: (role != null ? role.value : this.role));
  }
}

String? animalEnergyLevelNullableToJson(
    enums.AnimalEnergyLevel? animalEnergyLevel) {
  return animalEnergyLevel?.value;
}

String? animalEnergyLevelToJson(enums.AnimalEnergyLevel animalEnergyLevel) {
  return animalEnergyLevel.value;
}

enums.AnimalEnergyLevel animalEnergyLevelFromJson(
  Object? animalEnergyLevel, [
  enums.AnimalEnergyLevel? defaultValue,
]) {
  return enums.AnimalEnergyLevel.values
          .firstWhereOrNull((e) => e.value == animalEnergyLevel) ??
      defaultValue ??
      enums.AnimalEnergyLevel.swaggerGeneratedUnknown;
}

enums.AnimalEnergyLevel? animalEnergyLevelNullableFromJson(
  Object? animalEnergyLevel, [
  enums.AnimalEnergyLevel? defaultValue,
]) {
  if (animalEnergyLevel == null) {
    return null;
  }
  return enums.AnimalEnergyLevel.values
          .firstWhereOrNull((e) => e.value == animalEnergyLevel) ??
      defaultValue;
}

String animalEnergyLevelExplodedListToJson(
    List<enums.AnimalEnergyLevel>? animalEnergyLevel) {
  return animalEnergyLevel?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalEnergyLevelListToJson(
    List<enums.AnimalEnergyLevel>? animalEnergyLevel) {
  if (animalEnergyLevel == null) {
    return [];
  }

  return animalEnergyLevel.map((e) => e.value!).toList();
}

List<enums.AnimalEnergyLevel> animalEnergyLevelListFromJson(
  List? animalEnergyLevel, [
  List<enums.AnimalEnergyLevel>? defaultValue,
]) {
  if (animalEnergyLevel == null) {
    return defaultValue ?? [];
  }

  return animalEnergyLevel
      .map((e) => animalEnergyLevelFromJson(e.toString()))
      .toList();
}

List<enums.AnimalEnergyLevel>? animalEnergyLevelNullableListFromJson(
  List? animalEnergyLevel, [
  List<enums.AnimalEnergyLevel>? defaultValue,
]) {
  if (animalEnergyLevel == null) {
    return defaultValue;
  }

  return animalEnergyLevel
      .map((e) => animalEnergyLevelFromJson(e.toString()))
      .toList();
}

String? animalGenderNullableToJson(enums.AnimalGender? animalGender) {
  return animalGender?.value;
}

String? animalGenderToJson(enums.AnimalGender animalGender) {
  return animalGender.value;
}

enums.AnimalGender animalGenderFromJson(
  Object? animalGender, [
  enums.AnimalGender? defaultValue,
]) {
  return enums.AnimalGender.values
          .firstWhereOrNull((e) => e.value == animalGender) ??
      defaultValue ??
      enums.AnimalGender.swaggerGeneratedUnknown;
}

enums.AnimalGender? animalGenderNullableFromJson(
  Object? animalGender, [
  enums.AnimalGender? defaultValue,
]) {
  if (animalGender == null) {
    return null;
  }
  return enums.AnimalGender.values
          .firstWhereOrNull((e) => e.value == animalGender) ??
      defaultValue;
}

String animalGenderExplodedListToJson(List<enums.AnimalGender>? animalGender) {
  return animalGender?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalGenderListToJson(List<enums.AnimalGender>? animalGender) {
  if (animalGender == null) {
    return [];
  }

  return animalGender.map((e) => e.value!).toList();
}

List<enums.AnimalGender> animalGenderListFromJson(
  List? animalGender, [
  List<enums.AnimalGender>? defaultValue,
]) {
  if (animalGender == null) {
    return defaultValue ?? [];
  }

  return animalGender.map((e) => animalGenderFromJson(e.toString())).toList();
}

List<enums.AnimalGender>? animalGenderNullableListFromJson(
  List? animalGender, [
  List<enums.AnimalGender>? defaultValue,
]) {
  if (animalGender == null) {
    return defaultValue;
  }

  return animalGender.map((e) => animalGenderFromJson(e.toString())).toList();
}

String? animalSizeNullableToJson(enums.AnimalSize? animalSize) {
  return animalSize?.value;
}

String? animalSizeToJson(enums.AnimalSize animalSize) {
  return animalSize.value;
}

enums.AnimalSize animalSizeFromJson(
  Object? animalSize, [
  enums.AnimalSize? defaultValue,
]) {
  return enums.AnimalSize.values
          .firstWhereOrNull((e) => e.value == animalSize) ??
      defaultValue ??
      enums.AnimalSize.swaggerGeneratedUnknown;
}

enums.AnimalSize? animalSizeNullableFromJson(
  Object? animalSize, [
  enums.AnimalSize? defaultValue,
]) {
  if (animalSize == null) {
    return null;
  }
  return enums.AnimalSize.values
          .firstWhereOrNull((e) => e.value == animalSize) ??
      defaultValue;
}

String animalSizeExplodedListToJson(List<enums.AnimalSize>? animalSize) {
  return animalSize?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalSizeListToJson(List<enums.AnimalSize>? animalSize) {
  if (animalSize == null) {
    return [];
  }

  return animalSize.map((e) => e.value!).toList();
}

List<enums.AnimalSize> animalSizeListFromJson(
  List? animalSize, [
  List<enums.AnimalSize>? defaultValue,
]) {
  if (animalSize == null) {
    return defaultValue ?? [];
  }

  return animalSize.map((e) => animalSizeFromJson(e.toString())).toList();
}

List<enums.AnimalSize>? animalSizeNullableListFromJson(
  List? animalSize, [
  List<enums.AnimalSize>? defaultValue,
]) {
  if (animalSize == null) {
    return defaultValue;
  }

  return animalSize.map((e) => animalSizeFromJson(e.toString())).toList();
}

String? animalSpeciesNullableToJson(enums.AnimalSpecies? animalSpecies) {
  return animalSpecies?.value;
}

String? animalSpeciesToJson(enums.AnimalSpecies animalSpecies) {
  return animalSpecies.value;
}

enums.AnimalSpecies animalSpeciesFromJson(
  Object? animalSpecies, [
  enums.AnimalSpecies? defaultValue,
]) {
  return enums.AnimalSpecies.values
          .firstWhereOrNull((e) => e.value == animalSpecies) ??
      defaultValue ??
      enums.AnimalSpecies.swaggerGeneratedUnknown;
}

enums.AnimalSpecies? animalSpeciesNullableFromJson(
  Object? animalSpecies, [
  enums.AnimalSpecies? defaultValue,
]) {
  if (animalSpecies == null) {
    return null;
  }
  return enums.AnimalSpecies.values
          .firstWhereOrNull((e) => e.value == animalSpecies) ??
      defaultValue;
}

String animalSpeciesExplodedListToJson(
    List<enums.AnimalSpecies>? animalSpecies) {
  return animalSpecies?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalSpeciesListToJson(List<enums.AnimalSpecies>? animalSpecies) {
  if (animalSpecies == null) {
    return [];
  }

  return animalSpecies.map((e) => e.value!).toList();
}

List<enums.AnimalSpecies> animalSpeciesListFromJson(
  List? animalSpecies, [
  List<enums.AnimalSpecies>? defaultValue,
]) {
  if (animalSpecies == null) {
    return defaultValue ?? [];
  }

  return animalSpecies.map((e) => animalSpeciesFromJson(e.toString())).toList();
}

List<enums.AnimalSpecies>? animalSpeciesNullableListFromJson(
  List? animalSpecies, [
  List<enums.AnimalSpecies>? defaultValue,
]) {
  if (animalSpecies == null) {
    return defaultValue;
  }

  return animalSpecies.map((e) => animalSpeciesFromJson(e.toString())).toList();
}

String? missionsStatusNullableToJson(enums.MissionsStatus? missionsStatus) {
  return missionsStatus?.value;
}

String? missionsStatusToJson(enums.MissionsStatus missionsStatus) {
  return missionsStatus.value;
}

enums.MissionsStatus missionsStatusFromJson(
  Object? missionsStatus, [
  enums.MissionsStatus? defaultValue,
]) {
  return enums.MissionsStatus.values
          .firstWhereOrNull((e) => e.value == missionsStatus) ??
      defaultValue ??
      enums.MissionsStatus.swaggerGeneratedUnknown;
}

enums.MissionsStatus? missionsStatusNullableFromJson(
  Object? missionsStatus, [
  enums.MissionsStatus? defaultValue,
]) {
  if (missionsStatus == null) {
    return null;
  }
  return enums.MissionsStatus.values
          .firstWhereOrNull((e) => e.value == missionsStatus) ??
      defaultValue;
}

String missionsStatusExplodedListToJson(
    List<enums.MissionsStatus>? missionsStatus) {
  return missionsStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> missionsStatusListToJson(
    List<enums.MissionsStatus>? missionsStatus) {
  if (missionsStatus == null) {
    return [];
  }

  return missionsStatus.map((e) => e.value!).toList();
}

List<enums.MissionsStatus> missionsStatusListFromJson(
  List? missionsStatus, [
  List<enums.MissionsStatus>? defaultValue,
]) {
  if (missionsStatus == null) {
    return defaultValue ?? [];
  }

  return missionsStatus
      .map((e) => missionsStatusFromJson(e.toString()))
      .toList();
}

List<enums.MissionsStatus>? missionsStatusNullableListFromJson(
  List? missionsStatus, [
  List<enums.MissionsStatus>? defaultValue,
]) {
  if (missionsStatus == null) {
    return defaultValue;
  }

  return missionsStatus
      .map((e) => missionsStatusFromJson(e.toString()))
      .toList();
}

String? petServicesAnimalTypeNullableToJson(
    enums.PetServicesAnimalType? petServicesAnimalType) {
  return petServicesAnimalType?.value;
}

String? petServicesAnimalTypeToJson(
    enums.PetServicesAnimalType petServicesAnimalType) {
  return petServicesAnimalType.value;
}

enums.PetServicesAnimalType petServicesAnimalTypeFromJson(
  Object? petServicesAnimalType, [
  enums.PetServicesAnimalType? defaultValue,
]) {
  return enums.PetServicesAnimalType.values
          .firstWhereOrNull((e) => e.value == petServicesAnimalType) ??
      defaultValue ??
      enums.PetServicesAnimalType.swaggerGeneratedUnknown;
}

enums.PetServicesAnimalType? petServicesAnimalTypeNullableFromJson(
  Object? petServicesAnimalType, [
  enums.PetServicesAnimalType? defaultValue,
]) {
  if (petServicesAnimalType == null) {
    return null;
  }
  return enums.PetServicesAnimalType.values
          .firstWhereOrNull((e) => e.value == petServicesAnimalType) ??
      defaultValue;
}

String petServicesAnimalTypeExplodedListToJson(
    List<enums.PetServicesAnimalType>? petServicesAnimalType) {
  return petServicesAnimalType?.map((e) => e.value!).join(',') ?? '';
}

List<String> petServicesAnimalTypeListToJson(
    List<enums.PetServicesAnimalType>? petServicesAnimalType) {
  if (petServicesAnimalType == null) {
    return [];
  }

  return petServicesAnimalType.map((e) => e.value!).toList();
}

List<enums.PetServicesAnimalType> petServicesAnimalTypeListFromJson(
  List? petServicesAnimalType, [
  List<enums.PetServicesAnimalType>? defaultValue,
]) {
  if (petServicesAnimalType == null) {
    return defaultValue ?? [];
  }

  return petServicesAnimalType
      .map((e) => petServicesAnimalTypeFromJson(e.toString()))
      .toList();
}

List<enums.PetServicesAnimalType>? petServicesAnimalTypeNullableListFromJson(
  List? petServicesAnimalType, [
  List<enums.PetServicesAnimalType>? defaultValue,
]) {
  if (petServicesAnimalType == null) {
    return defaultValue;
  }

  return petServicesAnimalType
      .map((e) => petServicesAnimalTypeFromJson(e.toString()))
      .toList();
}

String? petServicesCategoryNullableToJson(
    enums.PetServicesCategory? petServicesCategory) {
  return petServicesCategory?.value;
}

String? petServicesCategoryToJson(
    enums.PetServicesCategory petServicesCategory) {
  return petServicesCategory.value;
}

enums.PetServicesCategory petServicesCategoryFromJson(
  Object? petServicesCategory, [
  enums.PetServicesCategory? defaultValue,
]) {
  return enums.PetServicesCategory.values
          .firstWhereOrNull((e) => e.value == petServicesCategory) ??
      defaultValue ??
      enums.PetServicesCategory.swaggerGeneratedUnknown;
}

enums.PetServicesCategory? petServicesCategoryNullableFromJson(
  Object? petServicesCategory, [
  enums.PetServicesCategory? defaultValue,
]) {
  if (petServicesCategory == null) {
    return null;
  }
  return enums.PetServicesCategory.values
          .firstWhereOrNull((e) => e.value == petServicesCategory) ??
      defaultValue;
}

String petServicesCategoryExplodedListToJson(
    List<enums.PetServicesCategory>? petServicesCategory) {
  return petServicesCategory?.map((e) => e.value!).join(',') ?? '';
}

List<String> petServicesCategoryListToJson(
    List<enums.PetServicesCategory>? petServicesCategory) {
  if (petServicesCategory == null) {
    return [];
  }

  return petServicesCategory.map((e) => e.value!).toList();
}

List<enums.PetServicesCategory> petServicesCategoryListFromJson(
  List? petServicesCategory, [
  List<enums.PetServicesCategory>? defaultValue,
]) {
  if (petServicesCategory == null) {
    return defaultValue ?? [];
  }

  return petServicesCategory
      .map((e) => petServicesCategoryFromJson(e.toString()))
      .toList();
}

List<enums.PetServicesCategory>? petServicesCategoryNullableListFromJson(
  List? petServicesCategory, [
  List<enums.PetServicesCategory>? defaultValue,
]) {
  if (petServicesCategory == null) {
    return defaultValue;
  }

  return petServicesCategory
      .map((e) => petServicesCategoryFromJson(e.toString()))
      .toList();
}

String? usersUserRoleNullableToJson(enums.UsersUserRole? usersUserRole) {
  return usersUserRole?.value;
}

String? usersUserRoleToJson(enums.UsersUserRole usersUserRole) {
  return usersUserRole.value;
}

enums.UsersUserRole usersUserRoleFromJson(
  Object? usersUserRole, [
  enums.UsersUserRole? defaultValue,
]) {
  return enums.UsersUserRole.values
          .firstWhereOrNull((e) => e.value == usersUserRole) ??
      defaultValue ??
      enums.UsersUserRole.swaggerGeneratedUnknown;
}

enums.UsersUserRole? usersUserRoleNullableFromJson(
  Object? usersUserRole, [
  enums.UsersUserRole? defaultValue,
]) {
  if (usersUserRole == null) {
    return null;
  }
  return enums.UsersUserRole.values
          .firstWhereOrNull((e) => e.value == usersUserRole) ??
      defaultValue;
}

String usersUserRoleExplodedListToJson(
    List<enums.UsersUserRole>? usersUserRole) {
  return usersUserRole?.map((e) => e.value!).join(',') ?? '';
}

List<String> usersUserRoleListToJson(List<enums.UsersUserRole>? usersUserRole) {
  if (usersUserRole == null) {
    return [];
  }

  return usersUserRole.map((e) => e.value!).toList();
}

List<enums.UsersUserRole> usersUserRoleListFromJson(
  List? usersUserRole, [
  List<enums.UsersUserRole>? defaultValue,
]) {
  if (usersUserRole == null) {
    return defaultValue ?? [];
  }

  return usersUserRole.map((e) => usersUserRoleFromJson(e.toString())).toList();
}

List<enums.UsersUserRole>? usersUserRoleNullableListFromJson(
  List? usersUserRole, [
  List<enums.UsersUserRole>? defaultValue,
]) {
  if (usersUserRole == null) {
    return defaultValue;
  }

  return usersUserRole.map((e) => usersUserRoleFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
