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
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$PetSittingClient(newClient);
  }

  ///
  ///@param id
  Future<chopper.Response<UserDTO>> apiUsersIdGet({required String? id}) {
    generatedMapping.putIfAbsent(UserDTO, () => UserDTO.fromJsonFactory);

    return _apiUsersIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/users/{id}')
  Future<chopper.Response<UserDTO>> _apiUsersIdGet(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<UserDTO>> apiUsersIdPut(
      {required UserUpdateDTO? body}) {
    generatedMapping.putIfAbsent(UserDTO, () => UserDTO.fromJsonFactory);

    return _apiUsersIdPut(body: body);
  }

  ///
  @Put(
    path: '/api/users/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<UserDTO>> _apiUsersIdPut(
      {@Body() required UserUpdateDTO? body});

  ///
  ///@param id
  Future<chopper.Response> apiUsersIdDelete({required String? id}) {
    return _apiUsersIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/users/{id}')
  Future<chopper.Response> _apiUsersIdDelete({@Path('id') required String? id});

  ///
  ///@param scheduleId
  ///@param startTime
  ///@param endTime
  Future<chopper.Response<RecurringScheduleDTO>>
      apiRecurringSchedulesScheduleIdPut({
    required String? scheduleId,
    required DateTime? startTime,
    required DateTime? endTime,
  }) {
    generatedMapping.putIfAbsent(
        RecurringScheduleDTO, () => RecurringScheduleDTO.fromJsonFactory);

    return _apiRecurringSchedulesScheduleIdPut(
        scheduleId: scheduleId, startTime: startTime, endTime: endTime);
  }

  ///
  ///@param scheduleId
  ///@param startTime
  ///@param endTime
  @Put(
    path: '/api/recurring-schedules/{scheduleId}',
    optionalBody: true,
  )
  Future<chopper.Response<RecurringScheduleDTO>>
      _apiRecurringSchedulesScheduleIdPut({
    @Path('scheduleId') required String? scheduleId,
    @Query('startTime') required DateTime? startTime,
    @Query('endTime') required DateTime? endTime,
  });

  ///
  ///@param scheduleId
  Future<chopper.Response> apiRecurringSchedulesScheduleIdDelete(
      {required String? scheduleId}) {
    return _apiRecurringSchedulesScheduleIdDelete(scheduleId: scheduleId);
  }

  ///
  ///@param scheduleId
  @Delete(path: '/api/recurring-schedules/{scheduleId}')
  Future<chopper.Response> _apiRecurringSchedulesScheduleIdDelete(
      {@Path('scheduleId') required String? scheduleId});

  ///
  ///@param id
  Future<chopper.Response<PetServiceDTO>> apiPetServicesIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        PetServiceDTO, () => PetServiceDTO.fromJsonFactory);

    return _apiPetServicesIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/pet-services/{id}')
  Future<chopper.Response<PetServiceDTO>> _apiPetServicesIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<PetServiceDTO>> apiPetServicesIdPut({
    required String? id,
    required PetServiceDTO? body,
  }) {
    generatedMapping.putIfAbsent(
        PetServiceDTO, () => PetServiceDTO.fromJsonFactory);

    return _apiPetServicesIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/api/pet-services/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<PetServiceDTO>> _apiPetServicesIdPut({
    @Path('id') required String? id,
    @Body() required PetServiceDTO? body,
  });

  ///
  ///@param id
  Future<chopper.Response> apiPetServicesIdDelete({required String? id}) {
    return _apiPetServicesIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/pet-services/{id}')
  Future<chopper.Response> _apiPetServicesIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<AnimalDTO>> apiAnimalsIdGet({required String? id}) {
    generatedMapping.putIfAbsent(AnimalDTO, () => AnimalDTO.fromJsonFactory);

    return _apiAnimalsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/animals/{id}')
  Future<chopper.Response<AnimalDTO>> _apiAnimalsIdGet(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<AnimalDTO>> apiAnimalsIdPut(
      {required AnimalUpdateDTO? body}) {
    generatedMapping.putIfAbsent(AnimalDTO, () => AnimalDTO.fromJsonFactory);

    return _apiAnimalsIdPut(body: body);
  }

  ///
  @Put(
    path: '/api/animals/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AnimalDTO>> _apiAnimalsIdPut(
      {@Body() required AnimalUpdateDTO? body});

  ///
  ///@param id
  Future<chopper.Response> apiAnimalsIdDelete({required String? id}) {
    return _apiAnimalsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/animals/{id}')
  Future<chopper.Response> _apiAnimalsIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<UserDTO>> apiUsersPost(
      {required UserCreationDTO? body}) {
    generatedMapping.putIfAbsent(UserDTO, () => UserDTO.fromJsonFactory);

    return _apiUsersPost(body: body);
  }

  ///
  @Post(
    path: '/api/users',
    optionalBody: true,
  )
  Future<chopper.Response<UserDTO>> _apiUsersPost(
      {@Body() required UserCreationDTO? body});

  ///
  Future<chopper.Response<UserDTO>> apiUsersVetAssistantPost(
      {required UserCreationDTO? body}) {
    generatedMapping.putIfAbsent(UserDTO, () => UserDTO.fromJsonFactory);

    return _apiUsersVetAssistantPost(body: body);
  }

  ///
  @Post(
    path: '/api/users/vet-assistant',
    optionalBody: true,
  )
  Future<chopper.Response<UserDTO>> _apiUsersVetAssistantPost(
      {@Body() required UserCreationDTO? body});

  ///
  ///@param vetAssistantId
  ///@param dayOfWeek
  Future<chopper.Response<List<RecurringScheduleDTO>>>
      apiRecurringSchedulesGet({
    required String? vetAssistantId,
    required enums.ApiRecurringSchedulesGetDayOfWeek? dayOfWeek,
  }) {
    generatedMapping.putIfAbsent(
        RecurringScheduleDTO, () => RecurringScheduleDTO.fromJsonFactory);

    return _apiRecurringSchedulesGet(
        vetAssistantId: vetAssistantId,
        dayOfWeek: dayOfWeek?.value?.toString());
  }

  ///
  ///@param vetAssistantId
  ///@param dayOfWeek
  @Get(path: '/api/recurring-schedules')
  Future<chopper.Response<List<RecurringScheduleDTO>>>
      _apiRecurringSchedulesGet({
    @Query('vetAssistantId') required String? vetAssistantId,
    @Query('dayOfWeek') required String? dayOfWeek,
  });

  ///
  ///@param vetAssistantId
  ///@param dayOfWeek
  ///@param startTime
  ///@param endTime
  Future<chopper.Response<RecurringScheduleDTO>> apiRecurringSchedulesPost({
    required String? vetAssistantId,
    required enums.ApiRecurringSchedulesPostDayOfWeek? dayOfWeek,
    required DateTime? startTime,
    required DateTime? endTime,
  }) {
    generatedMapping.putIfAbsent(
        RecurringScheduleDTO, () => RecurringScheduleDTO.fromJsonFactory);

    return _apiRecurringSchedulesPost(
        vetAssistantId: vetAssistantId,
        dayOfWeek: dayOfWeek?.value?.toString(),
        startTime: startTime,
        endTime: endTime);
  }

  ///
  ///@param vetAssistantId
  ///@param dayOfWeek
  ///@param startTime
  ///@param endTime
  @Post(
    path: '/api/recurring-schedules',
    optionalBody: true,
  )
  Future<chopper.Response<RecurringScheduleDTO>> _apiRecurringSchedulesPost({
    @Query('vetAssistantId') required String? vetAssistantId,
    @Query('dayOfWeek') required String? dayOfWeek,
    @Query('startTime') required DateTime? startTime,
    @Query('endTime') required DateTime? endTime,
  });

  ///
  Future<chopper.Response<List<PetServiceDTO>>> apiPetServicesGet() {
    generatedMapping.putIfAbsent(
        PetServiceDTO, () => PetServiceDTO.fromJsonFactory);

    return _apiPetServicesGet();
  }

  ///
  @Get(path: '/api/pet-services')
  Future<chopper.Response<List<PetServiceDTO>>> _apiPetServicesGet();

  ///
  Future<chopper.Response<PetServiceDTO>> apiPetServicesPost(
      {required PetServiceDTO? body}) {
    generatedMapping.putIfAbsent(
        PetServiceDTO, () => PetServiceDTO.fromJsonFactory);

    return _apiPetServicesPost(body: body);
  }

  ///
  @Post(
    path: '/api/pet-services',
    optionalBody: true,
  )
  Future<chopper.Response<PetServiceDTO>> _apiPetServicesPost(
      {@Body() required PetServiceDTO? body});

  ///
  Future<chopper.Response<MissionDTO>> apiMissionsPost(
      {required MissionCreationDTO? body}) {
    generatedMapping.putIfAbsent(MissionDTO, () => MissionDTO.fromJsonFactory);

    return _apiMissionsPost(body: body);
  }

  ///
  @Post(
    path: '/api/missions',
    optionalBody: true,
  )
  Future<chopper.Response<MissionDTO>> _apiMissionsPost(
      {@Body() required MissionCreationDTO? body});

  ///
  ///@param missionId
  Future<chopper.Response<MissionDTO>> apiMissionsStatusMissionIdStartPost(
      {required String? missionId}) {
    generatedMapping.putIfAbsent(MissionDTO, () => MissionDTO.fromJsonFactory);

    return _apiMissionsStatusMissionIdStartPost(missionId: missionId);
  }

  ///
  ///@param missionId
  @Post(
    path: '/api/missions/status/{missionId}/start',
    optionalBody: true,
  )
  Future<chopper.Response<MissionDTO>> _apiMissionsStatusMissionIdStartPost(
      {@Path('missionId') required String? missionId});

  ///
  ///@param missionId
  Future<chopper.Response<MissionDTO>> apiMissionsStatusMissionIdConfirmPost(
      {required String? missionId}) {
    generatedMapping.putIfAbsent(MissionDTO, () => MissionDTO.fromJsonFactory);

    return _apiMissionsStatusMissionIdConfirmPost(missionId: missionId);
  }

  ///
  ///@param missionId
  @Post(
    path: '/api/missions/status/{missionId}/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<MissionDTO>> _apiMissionsStatusMissionIdConfirmPost(
      {@Path('missionId') required String? missionId});

  ///
  ///@param missionId
  Future<chopper.Response<MissionDTO>> apiMissionsStatusMissionIdCompletePost(
      {required String? missionId}) {
    generatedMapping.putIfAbsent(MissionDTO, () => MissionDTO.fromJsonFactory);

    return _apiMissionsStatusMissionIdCompletePost(missionId: missionId);
  }

  ///
  ///@param missionId
  @Post(
    path: '/api/missions/status/{missionId}/complete',
    optionalBody: true,
  )
  Future<chopper.Response<MissionDTO>> _apiMissionsStatusMissionIdCompletePost(
      {@Path('missionId') required String? missionId});

  ///
  Future<chopper.Response<AnimalDTO>> apiAnimalsPost(
      {required AnimalCreateDTO? body}) {
    generatedMapping.putIfAbsent(AnimalDTO, () => AnimalDTO.fromJsonFactory);

    return _apiAnimalsPost(body: body);
  }

  ///
  @Post(
    path: '/api/animals',
    optionalBody: true,
  )
  Future<chopper.Response<AnimalDTO>> _apiAnimalsPost(
      {@Body() required AnimalCreateDTO? body});

  ///
  Future<chopper.Response<UserDTO>> apiUsersMeGet() {
    generatedMapping.putIfAbsent(UserDTO, () => UserDTO.fromJsonFactory);

    return _apiUsersMeGet();
  }

  ///
  @Get(path: '/api/users/me')
  Future<chopper.Response<UserDTO>> _apiUsersMeGet();

  ///
  ///@param id
  Future<chopper.Response<UserDTO>> apiUsersFirebaseIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(UserDTO, () => UserDTO.fromJsonFactory);

    return _apiUsersFirebaseIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/users/firebase/{id}')
  Future<chopper.Response<UserDTO>> _apiUsersFirebaseIdGet(
      {@Path('id') required String? id});

  ///
  ///@param email
  Future<chopper.Response<UserDTO>> apiUsersEmailGet({required String? email}) {
    generatedMapping.putIfAbsent(UserDTO, () => UserDTO.fromJsonFactory);

    return _apiUsersEmailGet(email: email);
  }

  ///
  ///@param email
  @Get(path: '/api/users/email')
  Future<chopper.Response<UserDTO>> _apiUsersEmailGet(
      {@Query('email') required String? email});

  ///
  Future<chopper.Response<List<UserDTO>>> apiUsersAllGet() {
    generatedMapping.putIfAbsent(UserDTO, () => UserDTO.fromJsonFactory);

    return _apiUsersAllGet();
  }

  ///
  @Get(path: '/api/users/all')
  Future<chopper.Response<List<UserDTO>>> _apiUsersAllGet();

  ///
  ///@param query
  Future<chopper.Response<List<PlaceSuggestion>>> apiPlacesSuggestionsGet(
      {required String? query}) {
    generatedMapping.putIfAbsent(
        PlaceSuggestion, () => PlaceSuggestion.fromJsonFactory);

    return _apiPlacesSuggestionsGet(query: query);
  }

  ///
  ///@param query
  @Get(path: '/api/places/suggestions')
  Future<chopper.Response<List<PlaceSuggestion>>> _apiPlacesSuggestionsGet(
      {@Query('query') required String? query});

  ///
  ///@param placeId
  Future<chopper.Response<PlaceDetails>> apiPlacesDetailsPlaceIdGet(
      {required String? placeId}) {
    generatedMapping.putIfAbsent(
        PlaceDetails, () => PlaceDetails.fromJsonFactory);

    return _apiPlacesDetailsPlaceIdGet(placeId: placeId);
  }

  ///
  ///@param placeId
  @Get(path: '/api/places/details/{placeId}')
  Future<chopper.Response<PlaceDetails>> _apiPlacesDetailsPlaceIdGet(
      {@Path('placeId') required String? placeId});

  ///
  ///@param category
  Future<chopper.Response<List<PetServiceDTO>>>
      apiPetServicesCategoryCategoryGet(
          {required enums.ApiPetServicesCategoryCategoryGetCategory?
              category}) {
    generatedMapping.putIfAbsent(
        PetServiceDTO, () => PetServiceDTO.fromJsonFactory);

    return _apiPetServicesCategoryCategoryGet(
        category: category?.value?.toString());
  }

  ///
  ///@param category
  @Get(path: '/api/pet-services/category/{category}')
  Future<chopper.Response<List<PetServiceDTO>>>
      _apiPetServicesCategoryCategoryGet(
          {@Path('category') required String? category});

  ///
  ///@param animalType
  Future<chopper.Response<List<PetServiceDTO>>>
      apiPetServicesAnimalTypeAnimalTypeGet(
          {required enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType?
              animalType}) {
    generatedMapping.putIfAbsent(
        PetServiceDTO, () => PetServiceDTO.fromJsonFactory);

    return _apiPetServicesAnimalTypeAnimalTypeGet(
        animalType: animalType?.value?.toString());
  }

  ///
  ///@param animalType
  @Get(path: '/api/pet-services/animal-type/{animalType}')
  Future<chopper.Response<List<PetServiceDTO>>>
      _apiPetServicesAnimalTypeAnimalTypeGet(
          {@Path('animalType') required String? animalType});

  ///
  ///@param id
  Future<chopper.Response<MissionDTO>> apiMissionsIdGet({required String? id}) {
    generatedMapping.putIfAbsent(MissionDTO, () => MissionDTO.fromJsonFactory);

    return _apiMissionsIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/missions/{id}')
  Future<chopper.Response<MissionDTO>> _apiMissionsIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<String>> apiMissionsIdPaymentStatusGet(
      {required String? id}) {
    return _apiMissionsIdPaymentStatusGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/missions/{id}/payment-status')
  Future<chopper.Response<String>> _apiMissionsIdPaymentStatusGet(
      {@Path('id') required String? id});

  ///
  ///@param vetAssistantId
  Future<chopper.Response<List<MissionDTO>>>
      apiMissionsVetAssistantVetAssistantIdGet(
          {required String? vetAssistantId}) {
    generatedMapping.putIfAbsent(MissionDTO, () => MissionDTO.fromJsonFactory);

    return _apiMissionsVetAssistantVetAssistantIdGet(
        vetAssistantId: vetAssistantId);
  }

  ///
  ///@param vetAssistantId
  @Get(path: '/api/missions/vet-assistant/{vetAssistantId}')
  Future<chopper.Response<List<MissionDTO>>>
      _apiMissionsVetAssistantVetAssistantIdGet(
          {@Path('vetAssistantId') required String? vetAssistantId});

  ///
  ///@param startDate
  ///@param endDate
  Future<chopper.Response<List<MissionDTO>>> apiMissionsDateRangeGet({
    required String? startDate,
    required String? endDate,
  }) {
    generatedMapping.putIfAbsent(MissionDTO, () => MissionDTO.fromJsonFactory);

    return _apiMissionsDateRangeGet(startDate: startDate, endDate: endDate);
  }

  ///
  ///@param startDate
  ///@param endDate
  @Get(path: '/api/missions/date-range')
  Future<chopper.Response<List<MissionDTO>>> _apiMissionsDateRangeGet({
    @Query('startDate') required String? startDate,
    @Query('endDate') required String? endDate,
  });

  ///
  ///@param clientId
  Future<chopper.Response<List<MissionDTO>>> apiMissionsClientClientIdGet(
      {required String? clientId}) {
    generatedMapping.putIfAbsent(MissionDTO, () => MissionDTO.fromJsonFactory);

    return _apiMissionsClientClientIdGet(clientId: clientId);
  }

  ///
  ///@param clientId
  @Get(path: '/api/missions/client/{clientId}')
  Future<chopper.Response<List<MissionDTO>>> _apiMissionsClientClientIdGet(
      {@Path('clientId') required String? clientId});

  ///
  ///@param ownerId
  Future<chopper.Response<List<AnimalDTO>>> apiAnimalsOwnerOwnerIdGet(
      {required String? ownerId}) {
    generatedMapping.putIfAbsent(AnimalDTO, () => AnimalDTO.fromJsonFactory);

    return _apiAnimalsOwnerOwnerIdGet(ownerId: ownerId);
  }

  ///
  ///@param ownerId
  @Get(path: '/api/animals/owner/{ownerId}')
  Future<chopper.Response<List<AnimalDTO>>> _apiAnimalsOwnerOwnerIdGet(
      {@Path('ownerId') required String? ownerId});
}

@JsonSerializable(explicitToJson: true)
class PlaceDetailsDTO {
  const PlaceDetailsDTO({
    required this.name,
    required this.formattedAddress,
    required this.latitude,
    required this.longitude,
  });

  factory PlaceDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsDTOFromJson(json);

  static const toJsonFactory = _$PlaceDetailsDTOToJson;
  Map<String, dynamic> toJson() => _$PlaceDetailsDTOToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'formattedAddress')
  final String formattedAddress;
  @JsonKey(name: 'latitude')
  final double latitude;
  @JsonKey(name: 'longitude')
  final double longitude;
  static const fromJsonFactory = _$PlaceDetailsDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlaceDetailsDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.formattedAddress, formattedAddress) ||
                const DeepCollectionEquality()
                    .equals(other.formattedAddress, formattedAddress)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(formattedAddress) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $PlaceDetailsDTOExtension on PlaceDetailsDTO {
  PlaceDetailsDTO copyWith(
      {String? name,
      String? formattedAddress,
      double? latitude,
      double? longitude}) {
    return PlaceDetailsDTO(
        name: name ?? this.name,
        formattedAddress: formattedAddress ?? this.formattedAddress,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude);
  }

  PlaceDetailsDTO copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? formattedAddress,
      Wrapped<double>? latitude,
      Wrapped<double>? longitude}) {
    return PlaceDetailsDTO(
        name: (name != null ? name.value : this.name),
        formattedAddress: (formattedAddress != null
            ? formattedAddress.value
            : this.formattedAddress),
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude));
  }
}

@JsonSerializable(explicitToJson: true)
class UserUpdateDTO {
  const UserUpdateDTO({
    required this.id,
    required this.firebaseUid,
    required this.lastname,
    required this.firstname,
    required this.email,
    required this.address,
    required this.phone,
    required this.role,
    this.photoUrl,
    this.emergencyContact,
    this.preferredCommunicationMethod,
    required this.isVerified,
    required this.registrationDate,
    this.notes,
  });

  factory UserUpdateDTO.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateDTOFromJson(json);

  static const toJsonFactory = _$UserUpdateDTOToJson;
  Map<String, dynamic> toJson() => _$UserUpdateDTOToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'firebaseUid')
  final String firebaseUid;
  @JsonKey(name: 'lastname')
  final String lastname;
  @JsonKey(name: 'firstname')
  final String firstname;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'address')
  final PlaceDetailsDTO address;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(
    name: 'role',
    toJson: userUpdateDTORoleToJson,
    fromJson: userUpdateDTORoleFromJson,
  )
  final enums.UserUpdateDTORole role;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(name: 'emergencyContact')
  final String? emergencyContact;
  @JsonKey(name: 'preferredCommunicationMethod')
  final String? preferredCommunicationMethod;
  @JsonKey(name: 'isVerified')
  final bool isVerified;
  @JsonKey(name: 'registrationDate', toJson: _dateToJson)
  final DateTime registrationDate;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$UserUpdateDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserUpdateDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firebaseUid, firebaseUid) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseUid, firebaseUid)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.emergencyContact, emergencyContact) ||
                const DeepCollectionEquality()
                    .equals(other.emergencyContact, emergencyContact)) &&
            (identical(other.preferredCommunicationMethod,
                    preferredCommunicationMethod) ||
                const DeepCollectionEquality().equals(
                    other.preferredCommunicationMethod,
                    preferredCommunicationMethod)) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)) &&
            (identical(other.registrationDate, registrationDate) ||
                const DeepCollectionEquality()
                    .equals(other.registrationDate, registrationDate)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firebaseUid) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(emergencyContact) ^
      const DeepCollectionEquality().hash(preferredCommunicationMethod) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(registrationDate) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $UserUpdateDTOExtension on UserUpdateDTO {
  UserUpdateDTO copyWith(
      {String? id,
      String? firebaseUid,
      String? lastname,
      String? firstname,
      String? email,
      PlaceDetailsDTO? address,
      String? phone,
      enums.UserUpdateDTORole? role,
      String? photoUrl,
      String? emergencyContact,
      String? preferredCommunicationMethod,
      bool? isVerified,
      DateTime? registrationDate,
      String? notes}) {
    return UserUpdateDTO(
        id: id ?? this.id,
        firebaseUid: firebaseUid ?? this.firebaseUid,
        lastname: lastname ?? this.lastname,
        firstname: firstname ?? this.firstname,
        email: email ?? this.email,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        role: role ?? this.role,
        photoUrl: photoUrl ?? this.photoUrl,
        emergencyContact: emergencyContact ?? this.emergencyContact,
        preferredCommunicationMethod:
            preferredCommunicationMethod ?? this.preferredCommunicationMethod,
        isVerified: isVerified ?? this.isVerified,
        registrationDate: registrationDate ?? this.registrationDate,
        notes: notes ?? this.notes);
  }

  UserUpdateDTO copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? firebaseUid,
      Wrapped<String>? lastname,
      Wrapped<String>? firstname,
      Wrapped<String>? email,
      Wrapped<PlaceDetailsDTO>? address,
      Wrapped<String>? phone,
      Wrapped<enums.UserUpdateDTORole>? role,
      Wrapped<String?>? photoUrl,
      Wrapped<String?>? emergencyContact,
      Wrapped<String?>? preferredCommunicationMethod,
      Wrapped<bool>? isVerified,
      Wrapped<DateTime>? registrationDate,
      Wrapped<String?>? notes}) {
    return UserUpdateDTO(
        id: (id != null ? id.value : this.id),
        firebaseUid:
            (firebaseUid != null ? firebaseUid.value : this.firebaseUid),
        lastname: (lastname != null ? lastname.value : this.lastname),
        firstname: (firstname != null ? firstname.value : this.firstname),
        email: (email != null ? email.value : this.email),
        address: (address != null ? address.value : this.address),
        phone: (phone != null ? phone.value : this.phone),
        role: (role != null ? role.value : this.role),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        emergencyContact: (emergencyContact != null
            ? emergencyContact.value
            : this.emergencyContact),
        preferredCommunicationMethod: (preferredCommunicationMethod != null
            ? preferredCommunicationMethod.value
            : this.preferredCommunicationMethod),
        isVerified: (isVerified != null ? isVerified.value : this.isVerified),
        registrationDate: (registrationDate != null
            ? registrationDate.value
            : this.registrationDate),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class UserDTO {
  const UserDTO({
    required this.id,
    this.firebaseId,
    required this.lastname,
    required this.firstname,
    required this.email,
    required this.address,
    required this.phone,
    required this.role,
    this.photoUrl,
    this.emergencyContact,
    this.preferredCommunicationMethod,
    required this.isVerified,
    required this.registrationDate,
    this.notes,
  });

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  static const toJsonFactory = _$UserDTOToJson;
  Map<String, dynamic> toJson() => _$UserDTOToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'firebaseId')
  final String? firebaseId;
  @JsonKey(name: 'lastname')
  final String lastname;
  @JsonKey(name: 'firstname')
  final String firstname;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'address')
  final PlaceDetailsDTO address;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(
    name: 'role',
    toJson: userDTORoleToJson,
    fromJson: userDTORoleFromJson,
  )
  final enums.UserDTORole role;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(name: 'emergencyContact')
  final String? emergencyContact;
  @JsonKey(name: 'preferredCommunicationMethod')
  final String? preferredCommunicationMethod;
  @JsonKey(name: 'isVerified')
  final bool isVerified;
  @JsonKey(name: 'registrationDate', toJson: _dateToJson)
  final DateTime registrationDate;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$UserDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firebaseId, firebaseId) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseId, firebaseId)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.emergencyContact, emergencyContact) ||
                const DeepCollectionEquality()
                    .equals(other.emergencyContact, emergencyContact)) &&
            (identical(other.preferredCommunicationMethod,
                    preferredCommunicationMethod) ||
                const DeepCollectionEquality().equals(
                    other.preferredCommunicationMethod,
                    preferredCommunicationMethod)) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)) &&
            (identical(other.registrationDate, registrationDate) ||
                const DeepCollectionEquality()
                    .equals(other.registrationDate, registrationDate)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firebaseId) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(emergencyContact) ^
      const DeepCollectionEquality().hash(preferredCommunicationMethod) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(registrationDate) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $UserDTOExtension on UserDTO {
  UserDTO copyWith(
      {String? id,
      String? firebaseId,
      String? lastname,
      String? firstname,
      String? email,
      PlaceDetailsDTO? address,
      String? phone,
      enums.UserDTORole? role,
      String? photoUrl,
      String? emergencyContact,
      String? preferredCommunicationMethod,
      bool? isVerified,
      DateTime? registrationDate,
      String? notes}) {
    return UserDTO(
        id: id ?? this.id,
        firebaseId: firebaseId ?? this.firebaseId,
        lastname: lastname ?? this.lastname,
        firstname: firstname ?? this.firstname,
        email: email ?? this.email,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        role: role ?? this.role,
        photoUrl: photoUrl ?? this.photoUrl,
        emergencyContact: emergencyContact ?? this.emergencyContact,
        preferredCommunicationMethod:
            preferredCommunicationMethod ?? this.preferredCommunicationMethod,
        isVerified: isVerified ?? this.isVerified,
        registrationDate: registrationDate ?? this.registrationDate,
        notes: notes ?? this.notes);
  }

  UserDTO copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? firebaseId,
      Wrapped<String>? lastname,
      Wrapped<String>? firstname,
      Wrapped<String>? email,
      Wrapped<PlaceDetailsDTO>? address,
      Wrapped<String>? phone,
      Wrapped<enums.UserDTORole>? role,
      Wrapped<String?>? photoUrl,
      Wrapped<String?>? emergencyContact,
      Wrapped<String?>? preferredCommunicationMethod,
      Wrapped<bool>? isVerified,
      Wrapped<DateTime>? registrationDate,
      Wrapped<String?>? notes}) {
    return UserDTO(
        id: (id != null ? id.value : this.id),
        firebaseId: (firebaseId != null ? firebaseId.value : this.firebaseId),
        lastname: (lastname != null ? lastname.value : this.lastname),
        firstname: (firstname != null ? firstname.value : this.firstname),
        email: (email != null ? email.value : this.email),
        address: (address != null ? address.value : this.address),
        phone: (phone != null ? phone.value : this.phone),
        role: (role != null ? role.value : this.role),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        emergencyContact: (emergencyContact != null
            ? emergencyContact.value
            : this.emergencyContact),
        preferredCommunicationMethod: (preferredCommunicationMethod != null
            ? preferredCommunicationMethod.value
            : this.preferredCommunicationMethod),
        isVerified: (isVerified != null ? isVerified.value : this.isVerified),
        registrationDate: (registrationDate != null
            ? registrationDate.value
            : this.registrationDate),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class LocalTime {
  const LocalTime({
    this.hour,
    this.minute,
    this.second,
    this.nano,
  });

  factory LocalTime.fromJson(Map<String, dynamic> json) =>
      _$LocalTimeFromJson(json);

  static const toJsonFactory = _$LocalTimeToJson;
  Map<String, dynamic> toJson() => _$LocalTimeToJson(this);

  @JsonKey(name: 'hour')
  final int? hour;
  @JsonKey(name: 'minute')
  final int? minute;
  @JsonKey(name: 'second')
  final int? second;
  @JsonKey(name: 'nano')
  final int? nano;
  static const fromJsonFactory = _$LocalTimeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LocalTime &&
            (identical(other.hour, hour) ||
                const DeepCollectionEquality().equals(other.hour, hour)) &&
            (identical(other.minute, minute) ||
                const DeepCollectionEquality().equals(other.minute, minute)) &&
            (identical(other.second, second) ||
                const DeepCollectionEquality().equals(other.second, second)) &&
            (identical(other.nano, nano) ||
                const DeepCollectionEquality().equals(other.nano, nano)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(hour) ^
      const DeepCollectionEquality().hash(minute) ^
      const DeepCollectionEquality().hash(second) ^
      const DeepCollectionEquality().hash(nano) ^
      runtimeType.hashCode;
}

extension $LocalTimeExtension on LocalTime {
  LocalTime copyWith({int? hour, int? minute, int? second, int? nano}) {
    return LocalTime(
        hour: hour ?? this.hour,
        minute: minute ?? this.minute,
        second: second ?? this.second,
        nano: nano ?? this.nano);
  }

  LocalTime copyWithWrapped(
      {Wrapped<int?>? hour,
      Wrapped<int?>? minute,
      Wrapped<int?>? second,
      Wrapped<int?>? nano}) {
    return LocalTime(
        hour: (hour != null ? hour.value : this.hour),
        minute: (minute != null ? minute.value : this.minute),
        second: (second != null ? second.value : this.second),
        nano: (nano != null ? nano.value : this.nano));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceDetails {
  const PlaceDetails({
    required this.name,
    required this.formattedAddress,
    required this.latitude,
    required this.longitude,
  });

  factory PlaceDetails.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsFromJson(json);

  static const toJsonFactory = _$PlaceDetailsToJson;
  Map<String, dynamic> toJson() => _$PlaceDetailsToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'formattedAddress')
  final String formattedAddress;
  @JsonKey(name: 'latitude')
  final double latitude;
  @JsonKey(name: 'longitude')
  final double longitude;
  static const fromJsonFactory = _$PlaceDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlaceDetails &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.formattedAddress, formattedAddress) ||
                const DeepCollectionEquality()
                    .equals(other.formattedAddress, formattedAddress)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(formattedAddress) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $PlaceDetailsExtension on PlaceDetails {
  PlaceDetails copyWith(
      {String? name,
      String? formattedAddress,
      double? latitude,
      double? longitude}) {
    return PlaceDetails(
        name: name ?? this.name,
        formattedAddress: formattedAddress ?? this.formattedAddress,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude);
  }

  PlaceDetails copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? formattedAddress,
      Wrapped<double>? latitude,
      Wrapped<double>? longitude}) {
    return PlaceDetails(
        name: (name != null ? name.value : this.name),
        formattedAddress: (formattedAddress != null
            ? formattedAddress.value
            : this.formattedAddress),
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude));
  }
}

@JsonSerializable(explicitToJson: true)
class RecurringScheduleDTO {
  const RecurringScheduleDTO({
    this.id,
    required this.vetAssistant,
    required this.dayOfWeek,
    required this.startTime,
    required this.endTime,
  });

  factory RecurringScheduleDTO.fromJson(Map<String, dynamic> json) =>
      _$RecurringScheduleDTOFromJson(json);

  static const toJsonFactory = _$RecurringScheduleDTOToJson;
  Map<String, dynamic> toJson() => _$RecurringScheduleDTOToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'vetAssistant')
  final User vetAssistant;
  @JsonKey(
    name: 'dayOfWeek',
    toJson: recurringScheduleDTODayOfWeekToJson,
    fromJson: recurringScheduleDTODayOfWeekFromJson,
  )
  final enums.RecurringScheduleDTODayOfWeek dayOfWeek;
  @JsonKey(name: 'startTime')
  final LocalTime startTime;
  @JsonKey(name: 'endTime')
  final LocalTime endTime;
  static const fromJsonFactory = _$RecurringScheduleDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecurringScheduleDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vetAssistant, vetAssistant) ||
                const DeepCollectionEquality()
                    .equals(other.vetAssistant, vetAssistant)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(other.endTime, endTime)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vetAssistant) ^
      const DeepCollectionEquality().hash(dayOfWeek) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      runtimeType.hashCode;
}

extension $RecurringScheduleDTOExtension on RecurringScheduleDTO {
  RecurringScheduleDTO copyWith(
      {String? id,
      User? vetAssistant,
      enums.RecurringScheduleDTODayOfWeek? dayOfWeek,
      LocalTime? startTime,
      LocalTime? endTime}) {
    return RecurringScheduleDTO(
        id: id ?? this.id,
        vetAssistant: vetAssistant ?? this.vetAssistant,
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime);
  }

  RecurringScheduleDTO copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<User>? vetAssistant,
      Wrapped<enums.RecurringScheduleDTODayOfWeek>? dayOfWeek,
      Wrapped<LocalTime>? startTime,
      Wrapped<LocalTime>? endTime}) {
    return RecurringScheduleDTO(
        id: (id != null ? id.value : this.id),
        vetAssistant:
            (vetAssistant != null ? vetAssistant.value : this.vetAssistant),
        dayOfWeek: (dayOfWeek != null ? dayOfWeek.value : this.dayOfWeek),
        startTime: (startTime != null ? startTime.value : this.startTime),
        endTime: (endTime != null ? endTime.value : this.endTime));
  }
}

@JsonSerializable(explicitToJson: true)
class Timestamp {
  const Timestamp({
    this.seconds,
    this.nanos,
  });

  factory Timestamp.fromJson(Map<String, dynamic> json) =>
      _$TimestampFromJson(json);

  static const toJsonFactory = _$TimestampToJson;
  Map<String, dynamic> toJson() => _$TimestampToJson(this);

  @JsonKey(name: 'seconds')
  final int? seconds;
  @JsonKey(name: 'nanos')
  final int? nanos;
  static const fromJsonFactory = _$TimestampFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Timestamp &&
            (identical(other.seconds, seconds) ||
                const DeepCollectionEquality()
                    .equals(other.seconds, seconds)) &&
            (identical(other.nanos, nanos) ||
                const DeepCollectionEquality().equals(other.nanos, nanos)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(seconds) ^
      const DeepCollectionEquality().hash(nanos) ^
      runtimeType.hashCode;
}

extension $TimestampExtension on Timestamp {
  Timestamp copyWith({int? seconds, int? nanos}) {
    return Timestamp(
        seconds: seconds ?? this.seconds, nanos: nanos ?? this.nanos);
  }

  Timestamp copyWithWrapped({Wrapped<int?>? seconds, Wrapped<int?>? nanos}) {
    return Timestamp(
        seconds: (seconds != null ? seconds.value : this.seconds),
        nanos: (nanos != null ? nanos.value : this.nanos));
  }
}

@JsonSerializable(explicitToJson: true)
class User {
  const User({
    this.id,
    this.firebaseId,
    required this.lastname,
    required this.firstname,
    required this.email,
    required this.address,
    required this.phone,
    required this.role,
    this.photoUrl,
    this.emergencyContact,
    this.preferredCommunicationMethod,
    required this.isVerified,
    required this.registrationDate,
    this.notes,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'firebaseId')
  final String? firebaseId;
  @JsonKey(name: 'lastname')
  final String lastname;
  @JsonKey(name: 'firstname')
  final String firstname;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'address')
  final PlaceDetails address;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(
    name: 'role',
    toJson: userRoleToJson,
    fromJson: userRoleFromJson,
  )
  final enums.UserRole role;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(name: 'emergencyContact')
  final String? emergencyContact;
  @JsonKey(name: 'preferredCommunicationMethod')
  final String? preferredCommunicationMethod;
  @JsonKey(name: 'isVerified')
  final bool isVerified;
  @JsonKey(name: 'registrationDate')
  final Timestamp registrationDate;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$UserFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firebaseId, firebaseId) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseId, firebaseId)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.emergencyContact, emergencyContact) ||
                const DeepCollectionEquality()
                    .equals(other.emergencyContact, emergencyContact)) &&
            (identical(other.preferredCommunicationMethod,
                    preferredCommunicationMethod) ||
                const DeepCollectionEquality().equals(
                    other.preferredCommunicationMethod,
                    preferredCommunicationMethod)) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)) &&
            (identical(other.registrationDate, registrationDate) ||
                const DeepCollectionEquality()
                    .equals(other.registrationDate, registrationDate)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firebaseId) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(emergencyContact) ^
      const DeepCollectionEquality().hash(preferredCommunicationMethod) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(registrationDate) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith(
      {String? id,
      String? firebaseId,
      String? lastname,
      String? firstname,
      String? email,
      PlaceDetails? address,
      String? phone,
      enums.UserRole? role,
      String? photoUrl,
      String? emergencyContact,
      String? preferredCommunicationMethod,
      bool? isVerified,
      Timestamp? registrationDate,
      String? notes}) {
    return User(
        id: id ?? this.id,
        firebaseId: firebaseId ?? this.firebaseId,
        lastname: lastname ?? this.lastname,
        firstname: firstname ?? this.firstname,
        email: email ?? this.email,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        role: role ?? this.role,
        photoUrl: photoUrl ?? this.photoUrl,
        emergencyContact: emergencyContact ?? this.emergencyContact,
        preferredCommunicationMethod:
            preferredCommunicationMethod ?? this.preferredCommunicationMethod,
        isVerified: isVerified ?? this.isVerified,
        registrationDate: registrationDate ?? this.registrationDate,
        notes: notes ?? this.notes);
  }

  User copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? firebaseId,
      Wrapped<String>? lastname,
      Wrapped<String>? firstname,
      Wrapped<String>? email,
      Wrapped<PlaceDetails>? address,
      Wrapped<String>? phone,
      Wrapped<enums.UserRole>? role,
      Wrapped<String?>? photoUrl,
      Wrapped<String?>? emergencyContact,
      Wrapped<String?>? preferredCommunicationMethod,
      Wrapped<bool>? isVerified,
      Wrapped<Timestamp>? registrationDate,
      Wrapped<String?>? notes}) {
    return User(
        id: (id != null ? id.value : this.id),
        firebaseId: (firebaseId != null ? firebaseId.value : this.firebaseId),
        lastname: (lastname != null ? lastname.value : this.lastname),
        firstname: (firstname != null ? firstname.value : this.firstname),
        email: (email != null ? email.value : this.email),
        address: (address != null ? address.value : this.address),
        phone: (phone != null ? phone.value : this.phone),
        role: (role != null ? role.value : this.role),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        emergencyContact: (emergencyContact != null
            ? emergencyContact.value
            : this.emergencyContact),
        preferredCommunicationMethod: (preferredCommunicationMethod != null
            ? preferredCommunicationMethod.value
            : this.preferredCommunicationMethod),
        isVerified: (isVerified != null ? isVerified.value : this.isVerified),
        registrationDate: (registrationDate != null
            ? registrationDate.value
            : this.registrationDate),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class PetServiceDTO {
  const PetServiceDTO({
    this.id,
    required this.name,
    required this.description,
    required this.durationMinutes,
    required this.basePrice,
    required this.category,
    required this.animalTypes,
    required this.isCustomPriceAllowed,
    required this.isCustomDurationAllowed,
    required this.includedItems,
  });

  factory PetServiceDTO.fromJson(Map<String, dynamic> json) =>
      _$PetServiceDTOFromJson(json);

  static const toJsonFactory = _$PetServiceDTOToJson;
  Map<String, dynamic> toJson() => _$PetServiceDTOToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'durationMinutes')
  final int durationMinutes;
  @JsonKey(name: 'basePrice')
  final double basePrice;
  @JsonKey(
    name: 'category',
    toJson: petServiceDTOCategoryToJson,
    fromJson: petServiceDTOCategoryFromJson,
  )
  final enums.PetServiceDTOCategory category;
  @JsonKey(
    name: 'animalTypes',
    toJson: petServiceDTOAnimalTypesListToJson,
    fromJson: petServiceDTOAnimalTypesListFromJson,
  )
  final List<enums.PetServiceDTOAnimalTypes> animalTypes;
  @JsonKey(name: 'isCustomPriceAllowed')
  final bool isCustomPriceAllowed;
  @JsonKey(name: 'isCustomDurationAllowed')
  final bool isCustomDurationAllowed;
  @JsonKey(name: 'includedItems', defaultValue: <String>[])
  final List<String> includedItems;
  static const fromJsonFactory = _$PetServiceDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PetServiceDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.durationMinutes, durationMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.durationMinutes, durationMinutes)) &&
            (identical(other.basePrice, basePrice) ||
                const DeepCollectionEquality()
                    .equals(other.basePrice, basePrice)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.animalTypes, animalTypes) ||
                const DeepCollectionEquality()
                    .equals(other.animalTypes, animalTypes)) &&
            (identical(other.isCustomPriceAllowed, isCustomPriceAllowed) ||
                const DeepCollectionEquality().equals(
                    other.isCustomPriceAllowed, isCustomPriceAllowed)) &&
            (identical(
                    other.isCustomDurationAllowed, isCustomDurationAllowed) ||
                const DeepCollectionEquality().equals(
                    other.isCustomDurationAllowed, isCustomDurationAllowed)) &&
            (identical(other.includedItems, includedItems) ||
                const DeepCollectionEquality()
                    .equals(other.includedItems, includedItems)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(durationMinutes) ^
      const DeepCollectionEquality().hash(basePrice) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(animalTypes) ^
      const DeepCollectionEquality().hash(isCustomPriceAllowed) ^
      const DeepCollectionEquality().hash(isCustomDurationAllowed) ^
      const DeepCollectionEquality().hash(includedItems) ^
      runtimeType.hashCode;
}

extension $PetServiceDTOExtension on PetServiceDTO {
  PetServiceDTO copyWith(
      {String? id,
      String? name,
      String? description,
      int? durationMinutes,
      double? basePrice,
      enums.PetServiceDTOCategory? category,
      List<enums.PetServiceDTOAnimalTypes>? animalTypes,
      bool? isCustomPriceAllowed,
      bool? isCustomDurationAllowed,
      List<String>? includedItems}) {
    return PetServiceDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        durationMinutes: durationMinutes ?? this.durationMinutes,
        basePrice: basePrice ?? this.basePrice,
        category: category ?? this.category,
        animalTypes: animalTypes ?? this.animalTypes,
        isCustomPriceAllowed: isCustomPriceAllowed ?? this.isCustomPriceAllowed,
        isCustomDurationAllowed:
            isCustomDurationAllowed ?? this.isCustomDurationAllowed,
        includedItems: includedItems ?? this.includedItems);
  }

  PetServiceDTO copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<int>? durationMinutes,
      Wrapped<double>? basePrice,
      Wrapped<enums.PetServiceDTOCategory>? category,
      Wrapped<List<enums.PetServiceDTOAnimalTypes>>? animalTypes,
      Wrapped<bool>? isCustomPriceAllowed,
      Wrapped<bool>? isCustomDurationAllowed,
      Wrapped<List<String>>? includedItems}) {
    return PetServiceDTO(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        durationMinutes: (durationMinutes != null
            ? durationMinutes.value
            : this.durationMinutes),
        basePrice: (basePrice != null ? basePrice.value : this.basePrice),
        category: (category != null ? category.value : this.category),
        animalTypes:
            (animalTypes != null ? animalTypes.value : this.animalTypes),
        isCustomPriceAllowed: (isCustomPriceAllowed != null
            ? isCustomPriceAllowed.value
            : this.isCustomPriceAllowed),
        isCustomDurationAllowed: (isCustomDurationAllowed != null
            ? isCustomDurationAllowed.value
            : this.isCustomDurationAllowed),
        includedItems:
            (includedItems != null ? includedItems.value : this.includedItems));
  }
}

@JsonSerializable(explicitToJson: true)
class AnimalUpdateDTO {
  const AnimalUpdateDTO({
    required this.id,
    required this.name,
    required this.ownerId,
    required this.species,
    this.breed,
    this.gender,
    required this.birthDate,
    this.weight,
    this.size,
    this.microchipNumber,
    this.vaccinationsUpToDate,
    this.medicalConditions,
    this.medications,
    this.allergies,
    this.specialNeeds,
    this.feedingInstructions,
    this.behaviorNotes,
    this.energyLevel,
    this.houseTrained,
    this.petFriendly,
    this.childFriendly,
    this.photoUrl,
    this.veterinarianContact,
    this.lastVetVisit,
    this.specialInstructions,
  });

  factory AnimalUpdateDTO.fromJson(Map<String, dynamic> json) =>
      _$AnimalUpdateDTOFromJson(json);

  static const toJsonFactory = _$AnimalUpdateDTOToJson;
  Map<String, dynamic> toJson() => _$AnimalUpdateDTOToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'ownerId')
  final String ownerId;
  @JsonKey(
    name: 'species',
    toJson: animalUpdateDTOSpeciesToJson,
    fromJson: animalUpdateDTOSpeciesFromJson,
  )
  final enums.AnimalUpdateDTOSpecies species;
  @JsonKey(name: 'breed')
  final String? breed;
  @JsonKey(
    name: 'gender',
    toJson: animalUpdateDTOGenderNullableToJson,
    fromJson: animalUpdateDTOGenderNullableFromJson,
  )
  final enums.AnimalUpdateDTOGender? gender;
  @JsonKey(name: 'birthDate', toJson: _dateToJson)
  final DateTime birthDate;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(
    name: 'size',
    toJson: animalUpdateDTOSizeNullableToJson,
    fromJson: animalUpdateDTOSizeNullableFromJson,
  )
  final enums.AnimalUpdateDTOSize? size;
  @JsonKey(name: 'microchipNumber')
  final String? microchipNumber;
  @JsonKey(name: 'vaccinationsUpToDate')
  final bool? vaccinationsUpToDate;
  @JsonKey(name: 'medicalConditions')
  final String? medicalConditions;
  @JsonKey(name: 'medications', defaultValue: <String>[])
  final List<String>? medications;
  @JsonKey(name: 'allergies', defaultValue: <String>[])
  final List<String>? allergies;
  @JsonKey(name: 'specialNeeds')
  final String? specialNeeds;
  @JsonKey(name: 'feedingInstructions')
  final String? feedingInstructions;
  @JsonKey(name: 'behaviorNotes')
  final String? behaviorNotes;
  @JsonKey(
    name: 'energyLevel',
    toJson: animalUpdateDTOEnergyLevelNullableToJson,
    fromJson: animalUpdateDTOEnergyLevelNullableFromJson,
  )
  final enums.AnimalUpdateDTOEnergyLevel? energyLevel;
  @JsonKey(name: 'houseTrained')
  final bool? houseTrained;
  @JsonKey(name: 'petFriendly')
  final bool? petFriendly;
  @JsonKey(name: 'childFriendly')
  final bool? childFriendly;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(name: 'veterinarianContact')
  final String? veterinarianContact;
  @JsonKey(name: 'lastVetVisit', toJson: _dateToJson)
  final DateTime? lastVetVisit;
  @JsonKey(name: 'specialInstructions')
  final String? specialInstructions;
  static const fromJsonFactory = _$AnimalUpdateDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AnimalUpdateDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.breed, breed) ||
                const DeepCollectionEquality().equals(other.breed, breed)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.microchipNumber, microchipNumber) ||
                const DeepCollectionEquality()
                    .equals(other.microchipNumber, microchipNumber)) &&
            (identical(other.vaccinationsUpToDate, vaccinationsUpToDate) ||
                const DeepCollectionEquality().equals(
                    other.vaccinationsUpToDate, vaccinationsUpToDate)) &&
            (identical(other.medicalConditions, medicalConditions) ||
                const DeepCollectionEquality()
                    .equals(other.medicalConditions, medicalConditions)) &&
            (identical(other.medications, medications) ||
                const DeepCollectionEquality()
                    .equals(other.medications, medications)) &&
            (identical(other.allergies, allergies) ||
                const DeepCollectionEquality()
                    .equals(other.allergies, allergies)) &&
            (identical(other.specialNeeds, specialNeeds) ||
                const DeepCollectionEquality()
                    .equals(other.specialNeeds, specialNeeds)) &&
            (identical(other.feedingInstructions, feedingInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.feedingInstructions, feedingInstructions)) &&
            (identical(other.behaviorNotes, behaviorNotes) ||
                const DeepCollectionEquality()
                    .equals(other.behaviorNotes, behaviorNotes)) &&
            (identical(other.energyLevel, energyLevel) ||
                const DeepCollectionEquality()
                    .equals(other.energyLevel, energyLevel)) &&
            (identical(other.houseTrained, houseTrained) ||
                const DeepCollectionEquality()
                    .equals(other.houseTrained, houseTrained)) &&
            (identical(other.petFriendly, petFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.petFriendly, petFriendly)) &&
            (identical(other.childFriendly, childFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.childFriendly, childFriendly)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.veterinarianContact, veterinarianContact) ||
                const DeepCollectionEquality()
                    .equals(other.veterinarianContact, veterinarianContact)) &&
            (identical(other.lastVetVisit, lastVetVisit) ||
                const DeepCollectionEquality()
                    .equals(other.lastVetVisit, lastVetVisit)) &&
            (identical(other.specialInstructions, specialInstructions) ||
                const DeepCollectionEquality().equals(other.specialInstructions, specialInstructions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(breed) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(microchipNumber) ^
      const DeepCollectionEquality().hash(vaccinationsUpToDate) ^
      const DeepCollectionEquality().hash(medicalConditions) ^
      const DeepCollectionEquality().hash(medications) ^
      const DeepCollectionEquality().hash(allergies) ^
      const DeepCollectionEquality().hash(specialNeeds) ^
      const DeepCollectionEquality().hash(feedingInstructions) ^
      const DeepCollectionEquality().hash(behaviorNotes) ^
      const DeepCollectionEquality().hash(energyLevel) ^
      const DeepCollectionEquality().hash(houseTrained) ^
      const DeepCollectionEquality().hash(petFriendly) ^
      const DeepCollectionEquality().hash(childFriendly) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(veterinarianContact) ^
      const DeepCollectionEquality().hash(lastVetVisit) ^
      const DeepCollectionEquality().hash(specialInstructions) ^
      runtimeType.hashCode;
}

extension $AnimalUpdateDTOExtension on AnimalUpdateDTO {
  AnimalUpdateDTO copyWith(
      {String? id,
      String? name,
      String? ownerId,
      enums.AnimalUpdateDTOSpecies? species,
      String? breed,
      enums.AnimalUpdateDTOGender? gender,
      DateTime? birthDate,
      double? weight,
      enums.AnimalUpdateDTOSize? size,
      String? microchipNumber,
      bool? vaccinationsUpToDate,
      String? medicalConditions,
      List<String>? medications,
      List<String>? allergies,
      String? specialNeeds,
      String? feedingInstructions,
      String? behaviorNotes,
      enums.AnimalUpdateDTOEnergyLevel? energyLevel,
      bool? houseTrained,
      bool? petFriendly,
      bool? childFriendly,
      String? photoUrl,
      String? veterinarianContact,
      DateTime? lastVetVisit,
      String? specialInstructions}) {
    return AnimalUpdateDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        ownerId: ownerId ?? this.ownerId,
        species: species ?? this.species,
        breed: breed ?? this.breed,
        gender: gender ?? this.gender,
        birthDate: birthDate ?? this.birthDate,
        weight: weight ?? this.weight,
        size: size ?? this.size,
        microchipNumber: microchipNumber ?? this.microchipNumber,
        vaccinationsUpToDate: vaccinationsUpToDate ?? this.vaccinationsUpToDate,
        medicalConditions: medicalConditions ?? this.medicalConditions,
        medications: medications ?? this.medications,
        allergies: allergies ?? this.allergies,
        specialNeeds: specialNeeds ?? this.specialNeeds,
        feedingInstructions: feedingInstructions ?? this.feedingInstructions,
        behaviorNotes: behaviorNotes ?? this.behaviorNotes,
        energyLevel: energyLevel ?? this.energyLevel,
        houseTrained: houseTrained ?? this.houseTrained,
        petFriendly: petFriendly ?? this.petFriendly,
        childFriendly: childFriendly ?? this.childFriendly,
        photoUrl: photoUrl ?? this.photoUrl,
        veterinarianContact: veterinarianContact ?? this.veterinarianContact,
        lastVetVisit: lastVetVisit ?? this.lastVetVisit,
        specialInstructions: specialInstructions ?? this.specialInstructions);
  }

  AnimalUpdateDTO copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String>? ownerId,
      Wrapped<enums.AnimalUpdateDTOSpecies>? species,
      Wrapped<String?>? breed,
      Wrapped<enums.AnimalUpdateDTOGender?>? gender,
      Wrapped<DateTime>? birthDate,
      Wrapped<double?>? weight,
      Wrapped<enums.AnimalUpdateDTOSize?>? size,
      Wrapped<String?>? microchipNumber,
      Wrapped<bool?>? vaccinationsUpToDate,
      Wrapped<String?>? medicalConditions,
      Wrapped<List<String>?>? medications,
      Wrapped<List<String>?>? allergies,
      Wrapped<String?>? specialNeeds,
      Wrapped<String?>? feedingInstructions,
      Wrapped<String?>? behaviorNotes,
      Wrapped<enums.AnimalUpdateDTOEnergyLevel?>? energyLevel,
      Wrapped<bool?>? houseTrained,
      Wrapped<bool?>? petFriendly,
      Wrapped<bool?>? childFriendly,
      Wrapped<String?>? photoUrl,
      Wrapped<String?>? veterinarianContact,
      Wrapped<DateTime?>? lastVetVisit,
      Wrapped<String?>? specialInstructions}) {
    return AnimalUpdateDTO(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        species: (species != null ? species.value : this.species),
        breed: (breed != null ? breed.value : this.breed),
        gender: (gender != null ? gender.value : this.gender),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        weight: (weight != null ? weight.value : this.weight),
        size: (size != null ? size.value : this.size),
        microchipNumber: (microchipNumber != null
            ? microchipNumber.value
            : this.microchipNumber),
        vaccinationsUpToDate: (vaccinationsUpToDate != null
            ? vaccinationsUpToDate.value
            : this.vaccinationsUpToDate),
        medicalConditions: (medicalConditions != null
            ? medicalConditions.value
            : this.medicalConditions),
        medications:
            (medications != null ? medications.value : this.medications),
        allergies: (allergies != null ? allergies.value : this.allergies),
        specialNeeds:
            (specialNeeds != null ? specialNeeds.value : this.specialNeeds),
        feedingInstructions: (feedingInstructions != null
            ? feedingInstructions.value
            : this.feedingInstructions),
        behaviorNotes:
            (behaviorNotes != null ? behaviorNotes.value : this.behaviorNotes),
        energyLevel:
            (energyLevel != null ? energyLevel.value : this.energyLevel),
        houseTrained:
            (houseTrained != null ? houseTrained.value : this.houseTrained),
        petFriendly:
            (petFriendly != null ? petFriendly.value : this.petFriendly),
        childFriendly:
            (childFriendly != null ? childFriendly.value : this.childFriendly),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        veterinarianContact: (veterinarianContact != null
            ? veterinarianContact.value
            : this.veterinarianContact),
        lastVetVisit:
            (lastVetVisit != null ? lastVetVisit.value : this.lastVetVisit),
        specialInstructions: (specialInstructions != null
            ? specialInstructions.value
            : this.specialInstructions));
  }
}

@JsonSerializable(explicitToJson: true)
class AnimalDTO {
  const AnimalDTO({
    this.id,
    required this.name,
    required this.species,
    this.breed,
    this.gender,
    required this.birthDate,
    this.weight,
    this.size,
    this.microchipNumber,
    this.vaccinationsUpToDate,
    this.medicalConditions,
    this.medications,
    this.allergies,
    this.specialNeeds,
    this.feedingInstructions,
    this.behaviorNotes,
    this.energyLevel,
    this.houseTrained,
    this.petFriendly,
    this.childFriendly,
    this.photoUrl,
    this.veterinarianContact,
    this.lastVetVisit,
    this.specialInstructions,
    required this.owner,
  });

  factory AnimalDTO.fromJson(Map<String, dynamic> json) =>
      _$AnimalDTOFromJson(json);

  static const toJsonFactory = _$AnimalDTOToJson;
  Map<String, dynamic> toJson() => _$AnimalDTOToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(
    name: 'species',
    toJson: animalDTOSpeciesToJson,
    fromJson: animalDTOSpeciesFromJson,
  )
  final enums.AnimalDTOSpecies species;
  @JsonKey(name: 'breed')
  final String? breed;
  @JsonKey(
    name: 'gender',
    toJson: animalDTOGenderNullableToJson,
    fromJson: animalDTOGenderNullableFromJson,
  )
  final enums.AnimalDTOGender? gender;
  @JsonKey(name: 'birthDate', toJson: _dateToJson)
  final DateTime birthDate;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(
    name: 'size',
    toJson: animalDTOSizeNullableToJson,
    fromJson: animalDTOSizeNullableFromJson,
  )
  final enums.AnimalDTOSize? size;
  @JsonKey(name: 'microchipNumber')
  final String? microchipNumber;
  @JsonKey(name: 'vaccinationsUpToDate')
  final bool? vaccinationsUpToDate;
  @JsonKey(name: 'medicalConditions')
  final String? medicalConditions;
  @JsonKey(name: 'medications', defaultValue: <String>[])
  final List<String>? medications;
  @JsonKey(name: 'allergies', defaultValue: <String>[])
  final List<String>? allergies;
  @JsonKey(name: 'specialNeeds')
  final String? specialNeeds;
  @JsonKey(name: 'feedingInstructions')
  final String? feedingInstructions;
  @JsonKey(name: 'behaviorNotes')
  final String? behaviorNotes;
  @JsonKey(
    name: 'energyLevel',
    toJson: animalDTOEnergyLevelNullableToJson,
    fromJson: animalDTOEnergyLevelNullableFromJson,
  )
  final enums.AnimalDTOEnergyLevel? energyLevel;
  @JsonKey(name: 'houseTrained')
  final bool? houseTrained;
  @JsonKey(name: 'petFriendly')
  final bool? petFriendly;
  @JsonKey(name: 'childFriendly')
  final bool? childFriendly;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(name: 'veterinarianContact')
  final String? veterinarianContact;
  @JsonKey(name: 'lastVetVisit', toJson: _dateToJson)
  final DateTime? lastVetVisit;
  @JsonKey(name: 'specialInstructions')
  final String? specialInstructions;
  @JsonKey(name: 'owner')
  final UserDTO owner;
  static const fromJsonFactory = _$AnimalDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AnimalDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.breed, breed) ||
                const DeepCollectionEquality().equals(other.breed, breed)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.microchipNumber, microchipNumber) ||
                const DeepCollectionEquality()
                    .equals(other.microchipNumber, microchipNumber)) &&
            (identical(other.vaccinationsUpToDate, vaccinationsUpToDate) ||
                const DeepCollectionEquality().equals(
                    other.vaccinationsUpToDate, vaccinationsUpToDate)) &&
            (identical(other.medicalConditions, medicalConditions) ||
                const DeepCollectionEquality()
                    .equals(other.medicalConditions, medicalConditions)) &&
            (identical(other.medications, medications) ||
                const DeepCollectionEquality()
                    .equals(other.medications, medications)) &&
            (identical(other.allergies, allergies) ||
                const DeepCollectionEquality()
                    .equals(other.allergies, allergies)) &&
            (identical(other.specialNeeds, specialNeeds) ||
                const DeepCollectionEquality()
                    .equals(other.specialNeeds, specialNeeds)) &&
            (identical(other.feedingInstructions, feedingInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.feedingInstructions, feedingInstructions)) &&
            (identical(other.behaviorNotes, behaviorNotes) ||
                const DeepCollectionEquality()
                    .equals(other.behaviorNotes, behaviorNotes)) &&
            (identical(other.energyLevel, energyLevel) ||
                const DeepCollectionEquality()
                    .equals(other.energyLevel, energyLevel)) &&
            (identical(other.houseTrained, houseTrained) ||
                const DeepCollectionEquality()
                    .equals(other.houseTrained, houseTrained)) &&
            (identical(other.petFriendly, petFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.petFriendly, petFriendly)) &&
            (identical(other.childFriendly, childFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.childFriendly, childFriendly)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.veterinarianContact, veterinarianContact) ||
                const DeepCollectionEquality()
                    .equals(other.veterinarianContact, veterinarianContact)) &&
            (identical(other.lastVetVisit, lastVetVisit) ||
                const DeepCollectionEquality()
                    .equals(other.lastVetVisit, lastVetVisit)) &&
            (identical(other.specialInstructions, specialInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.specialInstructions, specialInstructions)) &&
            (identical(other.owner, owner) || const DeepCollectionEquality().equals(other.owner, owner)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(breed) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(microchipNumber) ^
      const DeepCollectionEquality().hash(vaccinationsUpToDate) ^
      const DeepCollectionEquality().hash(medicalConditions) ^
      const DeepCollectionEquality().hash(medications) ^
      const DeepCollectionEquality().hash(allergies) ^
      const DeepCollectionEquality().hash(specialNeeds) ^
      const DeepCollectionEquality().hash(feedingInstructions) ^
      const DeepCollectionEquality().hash(behaviorNotes) ^
      const DeepCollectionEquality().hash(energyLevel) ^
      const DeepCollectionEquality().hash(houseTrained) ^
      const DeepCollectionEquality().hash(petFriendly) ^
      const DeepCollectionEquality().hash(childFriendly) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(veterinarianContact) ^
      const DeepCollectionEquality().hash(lastVetVisit) ^
      const DeepCollectionEquality().hash(specialInstructions) ^
      const DeepCollectionEquality().hash(owner) ^
      runtimeType.hashCode;
}

extension $AnimalDTOExtension on AnimalDTO {
  AnimalDTO copyWith(
      {String? id,
      String? name,
      enums.AnimalDTOSpecies? species,
      String? breed,
      enums.AnimalDTOGender? gender,
      DateTime? birthDate,
      double? weight,
      enums.AnimalDTOSize? size,
      String? microchipNumber,
      bool? vaccinationsUpToDate,
      String? medicalConditions,
      List<String>? medications,
      List<String>? allergies,
      String? specialNeeds,
      String? feedingInstructions,
      String? behaviorNotes,
      enums.AnimalDTOEnergyLevel? energyLevel,
      bool? houseTrained,
      bool? petFriendly,
      bool? childFriendly,
      String? photoUrl,
      String? veterinarianContact,
      DateTime? lastVetVisit,
      String? specialInstructions,
      UserDTO? owner}) {
    return AnimalDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        species: species ?? this.species,
        breed: breed ?? this.breed,
        gender: gender ?? this.gender,
        birthDate: birthDate ?? this.birthDate,
        weight: weight ?? this.weight,
        size: size ?? this.size,
        microchipNumber: microchipNumber ?? this.microchipNumber,
        vaccinationsUpToDate: vaccinationsUpToDate ?? this.vaccinationsUpToDate,
        medicalConditions: medicalConditions ?? this.medicalConditions,
        medications: medications ?? this.medications,
        allergies: allergies ?? this.allergies,
        specialNeeds: specialNeeds ?? this.specialNeeds,
        feedingInstructions: feedingInstructions ?? this.feedingInstructions,
        behaviorNotes: behaviorNotes ?? this.behaviorNotes,
        energyLevel: energyLevel ?? this.energyLevel,
        houseTrained: houseTrained ?? this.houseTrained,
        petFriendly: petFriendly ?? this.petFriendly,
        childFriendly: childFriendly ?? this.childFriendly,
        photoUrl: photoUrl ?? this.photoUrl,
        veterinarianContact: veterinarianContact ?? this.veterinarianContact,
        lastVetVisit: lastVetVisit ?? this.lastVetVisit,
        specialInstructions: specialInstructions ?? this.specialInstructions,
        owner: owner ?? this.owner);
  }

  AnimalDTO copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String>? name,
      Wrapped<enums.AnimalDTOSpecies>? species,
      Wrapped<String?>? breed,
      Wrapped<enums.AnimalDTOGender?>? gender,
      Wrapped<DateTime>? birthDate,
      Wrapped<double?>? weight,
      Wrapped<enums.AnimalDTOSize?>? size,
      Wrapped<String?>? microchipNumber,
      Wrapped<bool?>? vaccinationsUpToDate,
      Wrapped<String?>? medicalConditions,
      Wrapped<List<String>?>? medications,
      Wrapped<List<String>?>? allergies,
      Wrapped<String?>? specialNeeds,
      Wrapped<String?>? feedingInstructions,
      Wrapped<String?>? behaviorNotes,
      Wrapped<enums.AnimalDTOEnergyLevel?>? energyLevel,
      Wrapped<bool?>? houseTrained,
      Wrapped<bool?>? petFriendly,
      Wrapped<bool?>? childFriendly,
      Wrapped<String?>? photoUrl,
      Wrapped<String?>? veterinarianContact,
      Wrapped<DateTime?>? lastVetVisit,
      Wrapped<String?>? specialInstructions,
      Wrapped<UserDTO>? owner}) {
    return AnimalDTO(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        species: (species != null ? species.value : this.species),
        breed: (breed != null ? breed.value : this.breed),
        gender: (gender != null ? gender.value : this.gender),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        weight: (weight != null ? weight.value : this.weight),
        size: (size != null ? size.value : this.size),
        microchipNumber: (microchipNumber != null
            ? microchipNumber.value
            : this.microchipNumber),
        vaccinationsUpToDate: (vaccinationsUpToDate != null
            ? vaccinationsUpToDate.value
            : this.vaccinationsUpToDate),
        medicalConditions: (medicalConditions != null
            ? medicalConditions.value
            : this.medicalConditions),
        medications:
            (medications != null ? medications.value : this.medications),
        allergies: (allergies != null ? allergies.value : this.allergies),
        specialNeeds:
            (specialNeeds != null ? specialNeeds.value : this.specialNeeds),
        feedingInstructions: (feedingInstructions != null
            ? feedingInstructions.value
            : this.feedingInstructions),
        behaviorNotes:
            (behaviorNotes != null ? behaviorNotes.value : this.behaviorNotes),
        energyLevel:
            (energyLevel != null ? energyLevel.value : this.energyLevel),
        houseTrained:
            (houseTrained != null ? houseTrained.value : this.houseTrained),
        petFriendly:
            (petFriendly != null ? petFriendly.value : this.petFriendly),
        childFriendly:
            (childFriendly != null ? childFriendly.value : this.childFriendly),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        veterinarianContact: (veterinarianContact != null
            ? veterinarianContact.value
            : this.veterinarianContact),
        lastVetVisit:
            (lastVetVisit != null ? lastVetVisit.value : this.lastVetVisit),
        specialInstructions: (specialInstructions != null
            ? specialInstructions.value
            : this.specialInstructions),
        owner: (owner != null ? owner.value : this.owner));
  }
}

@JsonSerializable(explicitToJson: true)
class UserCreationDTO {
  const UserCreationDTO({
    this.firebaseUid,
    required this.lastname,
    required this.firstname,
    required this.email,
    required this.address,
    required this.phone,
    required this.role,
    this.photoUrl,
    this.emergencyContact,
    this.preferredCommunicationMethod,
    required this.isVerified,
    required this.registrationDate,
    this.notes,
  });

  factory UserCreationDTO.fromJson(Map<String, dynamic> json) =>
      _$UserCreationDTOFromJson(json);

  static const toJsonFactory = _$UserCreationDTOToJson;
  Map<String, dynamic> toJson() => _$UserCreationDTOToJson(this);

  @JsonKey(name: 'firebaseUid')
  final String? firebaseUid;
  @JsonKey(name: 'lastname')
  final String lastname;
  @JsonKey(name: 'firstname')
  final String firstname;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'address')
  final PlaceDetailsDTO address;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(
    name: 'role',
    toJson: userCreationDTORoleToJson,
    fromJson: userCreationDTORoleFromJson,
  )
  final enums.UserCreationDTORole role;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(name: 'emergencyContact')
  final String? emergencyContact;
  @JsonKey(name: 'preferredCommunicationMethod')
  final String? preferredCommunicationMethod;
  @JsonKey(name: 'isVerified')
  final bool isVerified;
  @JsonKey(name: 'registrationDate', toJson: _dateToJson)
  final DateTime registrationDate;
  @JsonKey(name: 'notes')
  final String? notes;
  static const fromJsonFactory = _$UserCreationDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserCreationDTO &&
            (identical(other.firebaseUid, firebaseUid) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseUid, firebaseUid)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.emergencyContact, emergencyContact) ||
                const DeepCollectionEquality()
                    .equals(other.emergencyContact, emergencyContact)) &&
            (identical(other.preferredCommunicationMethod,
                    preferredCommunicationMethod) ||
                const DeepCollectionEquality().equals(
                    other.preferredCommunicationMethod,
                    preferredCommunicationMethod)) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)) &&
            (identical(other.registrationDate, registrationDate) ||
                const DeepCollectionEquality()
                    .equals(other.registrationDate, registrationDate)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firebaseUid) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(emergencyContact) ^
      const DeepCollectionEquality().hash(preferredCommunicationMethod) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(registrationDate) ^
      const DeepCollectionEquality().hash(notes) ^
      runtimeType.hashCode;
}

extension $UserCreationDTOExtension on UserCreationDTO {
  UserCreationDTO copyWith(
      {String? firebaseUid,
      String? lastname,
      String? firstname,
      String? email,
      PlaceDetailsDTO? address,
      String? phone,
      enums.UserCreationDTORole? role,
      String? photoUrl,
      String? emergencyContact,
      String? preferredCommunicationMethod,
      bool? isVerified,
      DateTime? registrationDate,
      String? notes}) {
    return UserCreationDTO(
        firebaseUid: firebaseUid ?? this.firebaseUid,
        lastname: lastname ?? this.lastname,
        firstname: firstname ?? this.firstname,
        email: email ?? this.email,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        role: role ?? this.role,
        photoUrl: photoUrl ?? this.photoUrl,
        emergencyContact: emergencyContact ?? this.emergencyContact,
        preferredCommunicationMethod:
            preferredCommunicationMethod ?? this.preferredCommunicationMethod,
        isVerified: isVerified ?? this.isVerified,
        registrationDate: registrationDate ?? this.registrationDate,
        notes: notes ?? this.notes);
  }

  UserCreationDTO copyWithWrapped(
      {Wrapped<String?>? firebaseUid,
      Wrapped<String>? lastname,
      Wrapped<String>? firstname,
      Wrapped<String>? email,
      Wrapped<PlaceDetailsDTO>? address,
      Wrapped<String>? phone,
      Wrapped<enums.UserCreationDTORole>? role,
      Wrapped<String?>? photoUrl,
      Wrapped<String?>? emergencyContact,
      Wrapped<String?>? preferredCommunicationMethod,
      Wrapped<bool>? isVerified,
      Wrapped<DateTime>? registrationDate,
      Wrapped<String?>? notes}) {
    return UserCreationDTO(
        firebaseUid:
            (firebaseUid != null ? firebaseUid.value : this.firebaseUid),
        lastname: (lastname != null ? lastname.value : this.lastname),
        firstname: (firstname != null ? firstname.value : this.firstname),
        email: (email != null ? email.value : this.email),
        address: (address != null ? address.value : this.address),
        phone: (phone != null ? phone.value : this.phone),
        role: (role != null ? role.value : this.role),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        emergencyContact: (emergencyContact != null
            ? emergencyContact.value
            : this.emergencyContact),
        preferredCommunicationMethod: (preferredCommunicationMethod != null
            ? preferredCommunicationMethod.value
            : this.preferredCommunicationMethod),
        isVerified: (isVerified != null ? isVerified.value : this.isVerified),
        registrationDate: (registrationDate != null
            ? registrationDate.value
            : this.registrationDate),
        notes: (notes != null ? notes.value : this.notes));
  }
}

@JsonSerializable(explicitToJson: true)
class DailyServiceCreationDTO {
  const DailyServiceCreationDTO({
    required this.date,
    required this.services,
  });

  factory DailyServiceCreationDTO.fromJson(Map<String, dynamic> json) =>
      _$DailyServiceCreationDTOFromJson(json);

  static const toJsonFactory = _$DailyServiceCreationDTOToJson;
  Map<String, dynamic> toJson() => _$DailyServiceCreationDTOToJson(this);

  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'services', defaultValue: <MissionAnimalServiceCreationDTO>[])
  final List<MissionAnimalServiceCreationDTO> services;
  static const fromJsonFactory = _$DailyServiceCreationDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DailyServiceCreationDTO &&
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

extension $DailyServiceCreationDTOExtension on DailyServiceCreationDTO {
  DailyServiceCreationDTO copyWith(
      {DateTime? date, List<MissionAnimalServiceCreationDTO>? services}) {
    return DailyServiceCreationDTO(
        date: date ?? this.date, services: services ?? this.services);
  }

  DailyServiceCreationDTO copyWithWrapped(
      {Wrapped<DateTime>? date,
      Wrapped<List<MissionAnimalServiceCreationDTO>>? services}) {
    return DailyServiceCreationDTO(
        date: (date != null ? date.value : this.date),
        services: (services != null ? services.value : this.services));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionAnimalServiceCreationDTO {
  const MissionAnimalServiceCreationDTO({
    required this.animalId,
    required this.petServiceId,
    required this.date,
    required this.price,
  });

  factory MissionAnimalServiceCreationDTO.fromJson(Map<String, dynamic> json) =>
      _$MissionAnimalServiceCreationDTOFromJson(json);

  static const toJsonFactory = _$MissionAnimalServiceCreationDTOToJson;
  Map<String, dynamic> toJson() =>
      _$MissionAnimalServiceCreationDTOToJson(this);

  @JsonKey(name: 'animalId')
  final String animalId;
  @JsonKey(name: 'petServiceId')
  final String petServiceId;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'price')
  final double price;
  static const fromJsonFactory = _$MissionAnimalServiceCreationDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionAnimalServiceCreationDTO &&
            (identical(other.animalId, animalId) ||
                const DeepCollectionEquality()
                    .equals(other.animalId, animalId)) &&
            (identical(other.petServiceId, petServiceId) ||
                const DeepCollectionEquality()
                    .equals(other.petServiceId, petServiceId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(animalId) ^
      const DeepCollectionEquality().hash(petServiceId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $MissionAnimalServiceCreationDTOExtension
    on MissionAnimalServiceCreationDTO {
  MissionAnimalServiceCreationDTO copyWith(
      {String? animalId, String? petServiceId, DateTime? date, double? price}) {
    return MissionAnimalServiceCreationDTO(
        animalId: animalId ?? this.animalId,
        petServiceId: petServiceId ?? this.petServiceId,
        date: date ?? this.date,
        price: price ?? this.price);
  }

  MissionAnimalServiceCreationDTO copyWithWrapped(
      {Wrapped<String>? animalId,
      Wrapped<String>? petServiceId,
      Wrapped<DateTime>? date,
      Wrapped<double>? price}) {
    return MissionAnimalServiceCreationDTO(
        animalId: (animalId != null ? animalId.value : this.animalId),
        petServiceId:
            (petServiceId != null ? petServiceId.value : this.petServiceId),
        date: (date != null ? date.value : this.date),
        price: (price != null ? price.value : this.price));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionCreationDTO {
  const MissionCreationDTO({
    required this.clientId,
    required this.startDate,
    required this.endDate,
    required this.dailyServices,
    this.notes,
    required this.location,
  });

  factory MissionCreationDTO.fromJson(Map<String, dynamic> json) =>
      _$MissionCreationDTOFromJson(json);

  static const toJsonFactory = _$MissionCreationDTOToJson;
  Map<String, dynamic> toJson() => _$MissionCreationDTOToJson(this);

  @JsonKey(name: 'clientId')
  final String clientId;
  @JsonKey(name: 'startDate', toJson: _dateToJson)
  final DateTime startDate;
  @JsonKey(name: 'endDate', toJson: _dateToJson)
  final DateTime endDate;
  @JsonKey(name: 'dailyServices', defaultValue: <DailyServiceCreationDTO>[])
  final List<DailyServiceCreationDTO> dailyServices;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'location')
  final PlaceDetailsDTO location;
  static const fromJsonFactory = _$MissionCreationDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionCreationDTO &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.dailyServices, dailyServices) ||
                const DeepCollectionEquality()
                    .equals(other.dailyServices, dailyServices)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(dailyServices) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(location) ^
      runtimeType.hashCode;
}

extension $MissionCreationDTOExtension on MissionCreationDTO {
  MissionCreationDTO copyWith(
      {String? clientId,
      DateTime? startDate,
      DateTime? endDate,
      List<DailyServiceCreationDTO>? dailyServices,
      String? notes,
      PlaceDetailsDTO? location}) {
    return MissionCreationDTO(
        clientId: clientId ?? this.clientId,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        dailyServices: dailyServices ?? this.dailyServices,
        notes: notes ?? this.notes,
        location: location ?? this.location);
  }

  MissionCreationDTO copyWithWrapped(
      {Wrapped<String>? clientId,
      Wrapped<DateTime>? startDate,
      Wrapped<DateTime>? endDate,
      Wrapped<List<DailyServiceCreationDTO>>? dailyServices,
      Wrapped<String?>? notes,
      Wrapped<PlaceDetailsDTO>? location}) {
    return MissionCreationDTO(
        clientId: (clientId != null ? clientId.value : this.clientId),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        dailyServices:
            (dailyServices != null ? dailyServices.value : this.dailyServices),
        notes: (notes != null ? notes.value : this.notes),
        location: (location != null ? location.value : this.location));
  }
}

@JsonSerializable(explicitToJson: true)
class DailyServiceDTO {
  const DailyServiceDTO({
    required this.date,
    required this.services,
  });

  factory DailyServiceDTO.fromJson(Map<String, dynamic> json) =>
      _$DailyServiceDTOFromJson(json);

  static const toJsonFactory = _$DailyServiceDTOToJson;
  Map<String, dynamic> toJson() => _$DailyServiceDTOToJson(this);

  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'services', defaultValue: <MissionAnimalServiceDTO>[])
  final List<MissionAnimalServiceDTO> services;
  static const fromJsonFactory = _$DailyServiceDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DailyServiceDTO &&
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

extension $DailyServiceDTOExtension on DailyServiceDTO {
  DailyServiceDTO copyWith(
      {DateTime? date, List<MissionAnimalServiceDTO>? services}) {
    return DailyServiceDTO(
        date: date ?? this.date, services: services ?? this.services);
  }

  DailyServiceDTO copyWithWrapped(
      {Wrapped<DateTime>? date,
      Wrapped<List<MissionAnimalServiceDTO>>? services}) {
    return DailyServiceDTO(
        date: (date != null ? date.value : this.date),
        services: (services != null ? services.value : this.services));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionAnimalServiceDTO {
  const MissionAnimalServiceDTO({
    required this.animal,
    required this.petService,
    required this.date,
    required this.price,
  });

  factory MissionAnimalServiceDTO.fromJson(Map<String, dynamic> json) =>
      _$MissionAnimalServiceDTOFromJson(json);

  static const toJsonFactory = _$MissionAnimalServiceDTOToJson;
  Map<String, dynamic> toJson() => _$MissionAnimalServiceDTOToJson(this);

  @JsonKey(name: 'animal')
  final AnimalDTO animal;
  @JsonKey(name: 'petService')
  final PetServiceDTO petService;
  @JsonKey(name: 'date')
  final DateTime date;
  @JsonKey(name: 'price')
  final double price;
  static const fromJsonFactory = _$MissionAnimalServiceDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionAnimalServiceDTO &&
            (identical(other.animal, animal) ||
                const DeepCollectionEquality().equals(other.animal, animal)) &&
            (identical(other.petService, petService) ||
                const DeepCollectionEquality()
                    .equals(other.petService, petService)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(animal) ^
      const DeepCollectionEquality().hash(petService) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(price) ^
      runtimeType.hashCode;
}

extension $MissionAnimalServiceDTOExtension on MissionAnimalServiceDTO {
  MissionAnimalServiceDTO copyWith(
      {AnimalDTO? animal,
      PetServiceDTO? petService,
      DateTime? date,
      double? price}) {
    return MissionAnimalServiceDTO(
        animal: animal ?? this.animal,
        petService: petService ?? this.petService,
        date: date ?? this.date,
        price: price ?? this.price);
  }

  MissionAnimalServiceDTO copyWithWrapped(
      {Wrapped<AnimalDTO>? animal,
      Wrapped<PetServiceDTO>? petService,
      Wrapped<DateTime>? date,
      Wrapped<double>? price}) {
    return MissionAnimalServiceDTO(
        animal: (animal != null ? animal.value : this.animal),
        petService: (petService != null ? petService.value : this.petService),
        date: (date != null ? date.value : this.date),
        price: (price != null ? price.value : this.price));
  }
}

@JsonSerializable(explicitToJson: true)
class MissionDTO {
  const MissionDTO({
    this.id,
    required this.startDate,
    required this.endDate,
    required this.$client,
    this.vetAssistant,
    required this.dailyServices,
    required this.missionStatus,
    this.paymentIntentClientSecret,
    this.notes,
    required this.price,
    required this.location,
  });

  factory MissionDTO.fromJson(Map<String, dynamic> json) =>
      _$MissionDTOFromJson(json);

  static const toJsonFactory = _$MissionDTOToJson;
  Map<String, dynamic> toJson() => _$MissionDTOToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'startDate', toJson: _dateToJson)
  final DateTime startDate;
  @JsonKey(name: 'endDate', toJson: _dateToJson)
  final DateTime endDate;
  @JsonKey(name: 'client')
  final UserDTO $client;
  @JsonKey(name: 'vetAssistant')
  final UserDTO? vetAssistant;
  @JsonKey(name: 'dailyServices', defaultValue: <DailyServiceDTO>[])
  final List<DailyServiceDTO> dailyServices;
  @JsonKey(
    name: 'missionStatus',
    toJson: missionDTOMissionStatusToJson,
    fromJson: missionDTOMissionStatusFromJson,
  )
  final enums.MissionDTOMissionStatus missionStatus;
  @JsonKey(name: 'paymentIntentClientSecret')
  final String? paymentIntentClientSecret;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'price')
  final double price;
  @JsonKey(name: 'location')
  final PlaceDetailsDTO location;
  static const fromJsonFactory = _$MissionDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MissionDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality()
                    .equals(other.$client, $client)) &&
            (identical(other.vetAssistant, vetAssistant) ||
                const DeepCollectionEquality()
                    .equals(other.vetAssistant, vetAssistant)) &&
            (identical(other.dailyServices, dailyServices) ||
                const DeepCollectionEquality()
                    .equals(other.dailyServices, dailyServices)) &&
            (identical(other.missionStatus, missionStatus) ||
                const DeepCollectionEquality()
                    .equals(other.missionStatus, missionStatus)) &&
            (identical(other.paymentIntentClientSecret,
                    paymentIntentClientSecret) ||
                const DeepCollectionEquality().equals(
                    other.paymentIntentClientSecret,
                    paymentIntentClientSecret)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(vetAssistant) ^
      const DeepCollectionEquality().hash(dailyServices) ^
      const DeepCollectionEquality().hash(missionStatus) ^
      const DeepCollectionEquality().hash(paymentIntentClientSecret) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(location) ^
      runtimeType.hashCode;
}

extension $MissionDTOExtension on MissionDTO {
  MissionDTO copyWith(
      {String? id,
      DateTime? startDate,
      DateTime? endDate,
      UserDTO? $client,
      UserDTO? vetAssistant,
      List<DailyServiceDTO>? dailyServices,
      enums.MissionDTOMissionStatus? missionStatus,
      String? paymentIntentClientSecret,
      String? notes,
      double? price,
      PlaceDetailsDTO? location}) {
    return MissionDTO(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        $client: $client ?? this.$client,
        vetAssistant: vetAssistant ?? this.vetAssistant,
        dailyServices: dailyServices ?? this.dailyServices,
        missionStatus: missionStatus ?? this.missionStatus,
        paymentIntentClientSecret:
            paymentIntentClientSecret ?? this.paymentIntentClientSecret,
        notes: notes ?? this.notes,
        price: price ?? this.price,
        location: location ?? this.location);
  }

  MissionDTO copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<DateTime>? startDate,
      Wrapped<DateTime>? endDate,
      Wrapped<UserDTO>? $client,
      Wrapped<UserDTO?>? vetAssistant,
      Wrapped<List<DailyServiceDTO>>? dailyServices,
      Wrapped<enums.MissionDTOMissionStatus>? missionStatus,
      Wrapped<String?>? paymentIntentClientSecret,
      Wrapped<String?>? notes,
      Wrapped<double>? price,
      Wrapped<PlaceDetailsDTO>? location}) {
    return MissionDTO(
        id: (id != null ? id.value : this.id),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        $client: ($client != null ? $client.value : this.$client),
        vetAssistant:
            (vetAssistant != null ? vetAssistant.value : this.vetAssistant),
        dailyServices:
            (dailyServices != null ? dailyServices.value : this.dailyServices),
        missionStatus:
            (missionStatus != null ? missionStatus.value : this.missionStatus),
        paymentIntentClientSecret: (paymentIntentClientSecret != null
            ? paymentIntentClientSecret.value
            : this.paymentIntentClientSecret),
        notes: (notes != null ? notes.value : this.notes),
        price: (price != null ? price.value : this.price),
        location: (location != null ? location.value : this.location));
  }
}

@JsonSerializable(explicitToJson: true)
class AnimalCreateDTO {
  const AnimalCreateDTO({
    required this.name,
    required this.ownerId,
    required this.species,
    this.breed,
    this.gender,
    required this.birthDate,
    this.weight,
    this.size,
    this.microchipNumber,
    this.vaccinationsUpToDate,
    this.medicalConditions,
    this.medications,
    this.allergies,
    this.specialNeeds,
    this.feedingInstructions,
    this.behaviorNotes,
    this.energyLevel,
    this.houseTrained,
    this.petFriendly,
    this.childFriendly,
    this.photoUrl,
    this.veterinarianContact,
    this.lastVetVisit,
    this.specialInstructions,
  });

  factory AnimalCreateDTO.fromJson(Map<String, dynamic> json) =>
      _$AnimalCreateDTOFromJson(json);

  static const toJsonFactory = _$AnimalCreateDTOToJson;
  Map<String, dynamic> toJson() => _$AnimalCreateDTOToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'ownerId')
  final String ownerId;
  @JsonKey(
    name: 'species',
    toJson: animalCreateDTOSpeciesToJson,
    fromJson: animalCreateDTOSpeciesFromJson,
  )
  final enums.AnimalCreateDTOSpecies species;
  @JsonKey(name: 'breed')
  final String? breed;
  @JsonKey(
    name: 'gender',
    toJson: animalCreateDTOGenderNullableToJson,
    fromJson: animalCreateDTOGenderNullableFromJson,
  )
  final enums.AnimalCreateDTOGender? gender;
  @JsonKey(name: 'birthDate', toJson: _dateToJson)
  final DateTime birthDate;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(
    name: 'size',
    toJson: animalCreateDTOSizeNullableToJson,
    fromJson: animalCreateDTOSizeNullableFromJson,
  )
  final enums.AnimalCreateDTOSize? size;
  @JsonKey(name: 'microchipNumber')
  final String? microchipNumber;
  @JsonKey(name: 'vaccinationsUpToDate')
  final bool? vaccinationsUpToDate;
  @JsonKey(name: 'medicalConditions')
  final String? medicalConditions;
  @JsonKey(name: 'medications', defaultValue: <String>[])
  final List<String>? medications;
  @JsonKey(name: 'allergies', defaultValue: <String>[])
  final List<String>? allergies;
  @JsonKey(name: 'specialNeeds')
  final String? specialNeeds;
  @JsonKey(name: 'feedingInstructions')
  final String? feedingInstructions;
  @JsonKey(name: 'behaviorNotes')
  final String? behaviorNotes;
  @JsonKey(
    name: 'energyLevel',
    toJson: animalCreateDTOEnergyLevelNullableToJson,
    fromJson: animalCreateDTOEnergyLevelNullableFromJson,
  )
  final enums.AnimalCreateDTOEnergyLevel? energyLevel;
  @JsonKey(name: 'houseTrained')
  final bool? houseTrained;
  @JsonKey(name: 'petFriendly')
  final bool? petFriendly;
  @JsonKey(name: 'childFriendly')
  final bool? childFriendly;
  @JsonKey(name: 'photoUrl')
  final String? photoUrl;
  @JsonKey(name: 'veterinarianContact')
  final String? veterinarianContact;
  @JsonKey(name: 'lastVetVisit', toJson: _dateToJson)
  final DateTime? lastVetVisit;
  @JsonKey(name: 'specialInstructions')
  final String? specialInstructions;
  static const fromJsonFactory = _$AnimalCreateDTOFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AnimalCreateDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.breed, breed) ||
                const DeepCollectionEquality().equals(other.breed, breed)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.microchipNumber, microchipNumber) ||
                const DeepCollectionEquality()
                    .equals(other.microchipNumber, microchipNumber)) &&
            (identical(other.vaccinationsUpToDate, vaccinationsUpToDate) ||
                const DeepCollectionEquality().equals(
                    other.vaccinationsUpToDate, vaccinationsUpToDate)) &&
            (identical(other.medicalConditions, medicalConditions) ||
                const DeepCollectionEquality()
                    .equals(other.medicalConditions, medicalConditions)) &&
            (identical(other.medications, medications) ||
                const DeepCollectionEquality()
                    .equals(other.medications, medications)) &&
            (identical(other.allergies, allergies) ||
                const DeepCollectionEquality()
                    .equals(other.allergies, allergies)) &&
            (identical(other.specialNeeds, specialNeeds) ||
                const DeepCollectionEquality()
                    .equals(other.specialNeeds, specialNeeds)) &&
            (identical(other.feedingInstructions, feedingInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.feedingInstructions, feedingInstructions)) &&
            (identical(other.behaviorNotes, behaviorNotes) ||
                const DeepCollectionEquality()
                    .equals(other.behaviorNotes, behaviorNotes)) &&
            (identical(other.energyLevel, energyLevel) ||
                const DeepCollectionEquality()
                    .equals(other.energyLevel, energyLevel)) &&
            (identical(other.houseTrained, houseTrained) ||
                const DeepCollectionEquality()
                    .equals(other.houseTrained, houseTrained)) &&
            (identical(other.petFriendly, petFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.petFriendly, petFriendly)) &&
            (identical(other.childFriendly, childFriendly) ||
                const DeepCollectionEquality()
                    .equals(other.childFriendly, childFriendly)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.veterinarianContact, veterinarianContact) ||
                const DeepCollectionEquality()
                    .equals(other.veterinarianContact, veterinarianContact)) &&
            (identical(other.lastVetVisit, lastVetVisit) ||
                const DeepCollectionEquality()
                    .equals(other.lastVetVisit, lastVetVisit)) &&
            (identical(other.specialInstructions, specialInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.specialInstructions, specialInstructions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(breed) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(microchipNumber) ^
      const DeepCollectionEquality().hash(vaccinationsUpToDate) ^
      const DeepCollectionEquality().hash(medicalConditions) ^
      const DeepCollectionEquality().hash(medications) ^
      const DeepCollectionEquality().hash(allergies) ^
      const DeepCollectionEquality().hash(specialNeeds) ^
      const DeepCollectionEquality().hash(feedingInstructions) ^
      const DeepCollectionEquality().hash(behaviorNotes) ^
      const DeepCollectionEquality().hash(energyLevel) ^
      const DeepCollectionEquality().hash(houseTrained) ^
      const DeepCollectionEquality().hash(petFriendly) ^
      const DeepCollectionEquality().hash(childFriendly) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(veterinarianContact) ^
      const DeepCollectionEquality().hash(lastVetVisit) ^
      const DeepCollectionEquality().hash(specialInstructions) ^
      runtimeType.hashCode;
}

extension $AnimalCreateDTOExtension on AnimalCreateDTO {
  AnimalCreateDTO copyWith(
      {String? name,
      String? ownerId,
      enums.AnimalCreateDTOSpecies? species,
      String? breed,
      enums.AnimalCreateDTOGender? gender,
      DateTime? birthDate,
      double? weight,
      enums.AnimalCreateDTOSize? size,
      String? microchipNumber,
      bool? vaccinationsUpToDate,
      String? medicalConditions,
      List<String>? medications,
      List<String>? allergies,
      String? specialNeeds,
      String? feedingInstructions,
      String? behaviorNotes,
      enums.AnimalCreateDTOEnergyLevel? energyLevel,
      bool? houseTrained,
      bool? petFriendly,
      bool? childFriendly,
      String? photoUrl,
      String? veterinarianContact,
      DateTime? lastVetVisit,
      String? specialInstructions}) {
    return AnimalCreateDTO(
        name: name ?? this.name,
        ownerId: ownerId ?? this.ownerId,
        species: species ?? this.species,
        breed: breed ?? this.breed,
        gender: gender ?? this.gender,
        birthDate: birthDate ?? this.birthDate,
        weight: weight ?? this.weight,
        size: size ?? this.size,
        microchipNumber: microchipNumber ?? this.microchipNumber,
        vaccinationsUpToDate: vaccinationsUpToDate ?? this.vaccinationsUpToDate,
        medicalConditions: medicalConditions ?? this.medicalConditions,
        medications: medications ?? this.medications,
        allergies: allergies ?? this.allergies,
        specialNeeds: specialNeeds ?? this.specialNeeds,
        feedingInstructions: feedingInstructions ?? this.feedingInstructions,
        behaviorNotes: behaviorNotes ?? this.behaviorNotes,
        energyLevel: energyLevel ?? this.energyLevel,
        houseTrained: houseTrained ?? this.houseTrained,
        petFriendly: petFriendly ?? this.petFriendly,
        childFriendly: childFriendly ?? this.childFriendly,
        photoUrl: photoUrl ?? this.photoUrl,
        veterinarianContact: veterinarianContact ?? this.veterinarianContact,
        lastVetVisit: lastVetVisit ?? this.lastVetVisit,
        specialInstructions: specialInstructions ?? this.specialInstructions);
  }

  AnimalCreateDTO copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? ownerId,
      Wrapped<enums.AnimalCreateDTOSpecies>? species,
      Wrapped<String?>? breed,
      Wrapped<enums.AnimalCreateDTOGender?>? gender,
      Wrapped<DateTime>? birthDate,
      Wrapped<double?>? weight,
      Wrapped<enums.AnimalCreateDTOSize?>? size,
      Wrapped<String?>? microchipNumber,
      Wrapped<bool?>? vaccinationsUpToDate,
      Wrapped<String?>? medicalConditions,
      Wrapped<List<String>?>? medications,
      Wrapped<List<String>?>? allergies,
      Wrapped<String?>? specialNeeds,
      Wrapped<String?>? feedingInstructions,
      Wrapped<String?>? behaviorNotes,
      Wrapped<enums.AnimalCreateDTOEnergyLevel?>? energyLevel,
      Wrapped<bool?>? houseTrained,
      Wrapped<bool?>? petFriendly,
      Wrapped<bool?>? childFriendly,
      Wrapped<String?>? photoUrl,
      Wrapped<String?>? veterinarianContact,
      Wrapped<DateTime?>? lastVetVisit,
      Wrapped<String?>? specialInstructions}) {
    return AnimalCreateDTO(
        name: (name != null ? name.value : this.name),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        species: (species != null ? species.value : this.species),
        breed: (breed != null ? breed.value : this.breed),
        gender: (gender != null ? gender.value : this.gender),
        birthDate: (birthDate != null ? birthDate.value : this.birthDate),
        weight: (weight != null ? weight.value : this.weight),
        size: (size != null ? size.value : this.size),
        microchipNumber: (microchipNumber != null
            ? microchipNumber.value
            : this.microchipNumber),
        vaccinationsUpToDate: (vaccinationsUpToDate != null
            ? vaccinationsUpToDate.value
            : this.vaccinationsUpToDate),
        medicalConditions: (medicalConditions != null
            ? medicalConditions.value
            : this.medicalConditions),
        medications:
            (medications != null ? medications.value : this.medications),
        allergies: (allergies != null ? allergies.value : this.allergies),
        specialNeeds:
            (specialNeeds != null ? specialNeeds.value : this.specialNeeds),
        feedingInstructions: (feedingInstructions != null
            ? feedingInstructions.value
            : this.feedingInstructions),
        behaviorNotes:
            (behaviorNotes != null ? behaviorNotes.value : this.behaviorNotes),
        energyLevel:
            (energyLevel != null ? energyLevel.value : this.energyLevel),
        houseTrained:
            (houseTrained != null ? houseTrained.value : this.houseTrained),
        petFriendly:
            (petFriendly != null ? petFriendly.value : this.petFriendly),
        childFriendly:
            (childFriendly != null ? childFriendly.value : this.childFriendly),
        photoUrl: (photoUrl != null ? photoUrl.value : this.photoUrl),
        veterinarianContact: (veterinarianContact != null
            ? veterinarianContact.value
            : this.veterinarianContact),
        lastVetVisit:
            (lastVetVisit != null ? lastVetVisit.value : this.lastVetVisit),
        specialInstructions: (specialInstructions != null
            ? specialInstructions.value
            : this.specialInstructions));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceSuggestion {
  const PlaceSuggestion({
    required this.placeId,
    required this.description,
  });

  factory PlaceSuggestion.fromJson(Map<String, dynamic> json) =>
      _$PlaceSuggestionFromJson(json);

  static const toJsonFactory = _$PlaceSuggestionToJson;
  Map<String, dynamic> toJson() => _$PlaceSuggestionToJson(this);

  @JsonKey(name: 'placeId')
  final String placeId;
  @JsonKey(name: 'description')
  final String description;
  static const fromJsonFactory = _$PlaceSuggestionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlaceSuggestion &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $PlaceSuggestionExtension on PlaceSuggestion {
  PlaceSuggestion copyWith({String? placeId, String? description}) {
    return PlaceSuggestion(
        placeId: placeId ?? this.placeId,
        description: description ?? this.description);
  }

  PlaceSuggestion copyWithWrapped(
      {Wrapped<String>? placeId, Wrapped<String>? description}) {
    return PlaceSuggestion(
        placeId: (placeId != null ? placeId.value : this.placeId),
        description:
            (description != null ? description.value : this.description));
  }
}

String? userUpdateDTORoleNullableToJson(
    enums.UserUpdateDTORole? userUpdateDTORole) {
  return userUpdateDTORole?.value;
}

String? userUpdateDTORoleToJson(enums.UserUpdateDTORole userUpdateDTORole) {
  return userUpdateDTORole.value;
}

enums.UserUpdateDTORole userUpdateDTORoleFromJson(
  Object? userUpdateDTORole, [
  enums.UserUpdateDTORole? defaultValue,
]) {
  return enums.UserUpdateDTORole.values
          .firstWhereOrNull((e) => e.value == userUpdateDTORole) ??
      defaultValue ??
      enums.UserUpdateDTORole.swaggerGeneratedUnknown;
}

enums.UserUpdateDTORole? userUpdateDTORoleNullableFromJson(
  Object? userUpdateDTORole, [
  enums.UserUpdateDTORole? defaultValue,
]) {
  if (userUpdateDTORole == null) {
    return null;
  }
  return enums.UserUpdateDTORole.values
          .firstWhereOrNull((e) => e.value == userUpdateDTORole) ??
      defaultValue;
}

String userUpdateDTORoleExplodedListToJson(
    List<enums.UserUpdateDTORole>? userUpdateDTORole) {
  return userUpdateDTORole?.map((e) => e.value!).join(',') ?? '';
}

List<String> userUpdateDTORoleListToJson(
    List<enums.UserUpdateDTORole>? userUpdateDTORole) {
  if (userUpdateDTORole == null) {
    return [];
  }

  return userUpdateDTORole.map((e) => e.value!).toList();
}

List<enums.UserUpdateDTORole> userUpdateDTORoleListFromJson(
  List? userUpdateDTORole, [
  List<enums.UserUpdateDTORole>? defaultValue,
]) {
  if (userUpdateDTORole == null) {
    return defaultValue ?? [];
  }

  return userUpdateDTORole
      .map((e) => userUpdateDTORoleFromJson(e.toString()))
      .toList();
}

List<enums.UserUpdateDTORole>? userUpdateDTORoleNullableListFromJson(
  List? userUpdateDTORole, [
  List<enums.UserUpdateDTORole>? defaultValue,
]) {
  if (userUpdateDTORole == null) {
    return defaultValue;
  }

  return userUpdateDTORole
      .map((e) => userUpdateDTORoleFromJson(e.toString()))
      .toList();
}

String? userDTORoleNullableToJson(enums.UserDTORole? userDTORole) {
  return userDTORole?.value;
}

String? userDTORoleToJson(enums.UserDTORole userDTORole) {
  return userDTORole.value;
}

enums.UserDTORole userDTORoleFromJson(
  Object? userDTORole, [
  enums.UserDTORole? defaultValue,
]) {
  return enums.UserDTORole.values
          .firstWhereOrNull((e) => e.value == userDTORole) ??
      defaultValue ??
      enums.UserDTORole.swaggerGeneratedUnknown;
}

enums.UserDTORole? userDTORoleNullableFromJson(
  Object? userDTORole, [
  enums.UserDTORole? defaultValue,
]) {
  if (userDTORole == null) {
    return null;
  }
  return enums.UserDTORole.values
          .firstWhereOrNull((e) => e.value == userDTORole) ??
      defaultValue;
}

String userDTORoleExplodedListToJson(List<enums.UserDTORole>? userDTORole) {
  return userDTORole?.map((e) => e.value!).join(',') ?? '';
}

List<String> userDTORoleListToJson(List<enums.UserDTORole>? userDTORole) {
  if (userDTORole == null) {
    return [];
  }

  return userDTORole.map((e) => e.value!).toList();
}

List<enums.UserDTORole> userDTORoleListFromJson(
  List? userDTORole, [
  List<enums.UserDTORole>? defaultValue,
]) {
  if (userDTORole == null) {
    return defaultValue ?? [];
  }

  return userDTORole.map((e) => userDTORoleFromJson(e.toString())).toList();
}

List<enums.UserDTORole>? userDTORoleNullableListFromJson(
  List? userDTORole, [
  List<enums.UserDTORole>? defaultValue,
]) {
  if (userDTORole == null) {
    return defaultValue;
  }

  return userDTORole.map((e) => userDTORoleFromJson(e.toString())).toList();
}

String? recurringScheduleDTODayOfWeekNullableToJson(
    enums.RecurringScheduleDTODayOfWeek? recurringScheduleDTODayOfWeek) {
  return recurringScheduleDTODayOfWeek?.value;
}

String? recurringScheduleDTODayOfWeekToJson(
    enums.RecurringScheduleDTODayOfWeek recurringScheduleDTODayOfWeek) {
  return recurringScheduleDTODayOfWeek.value;
}

enums.RecurringScheduleDTODayOfWeek recurringScheduleDTODayOfWeekFromJson(
  Object? recurringScheduleDTODayOfWeek, [
  enums.RecurringScheduleDTODayOfWeek? defaultValue,
]) {
  return enums.RecurringScheduleDTODayOfWeek.values
          .firstWhereOrNull((e) => e.value == recurringScheduleDTODayOfWeek) ??
      defaultValue ??
      enums.RecurringScheduleDTODayOfWeek.swaggerGeneratedUnknown;
}

enums.RecurringScheduleDTODayOfWeek?
    recurringScheduleDTODayOfWeekNullableFromJson(
  Object? recurringScheduleDTODayOfWeek, [
  enums.RecurringScheduleDTODayOfWeek? defaultValue,
]) {
  if (recurringScheduleDTODayOfWeek == null) {
    return null;
  }
  return enums.RecurringScheduleDTODayOfWeek.values
          .firstWhereOrNull((e) => e.value == recurringScheduleDTODayOfWeek) ??
      defaultValue;
}

String recurringScheduleDTODayOfWeekExplodedListToJson(
    List<enums.RecurringScheduleDTODayOfWeek>? recurringScheduleDTODayOfWeek) {
  return recurringScheduleDTODayOfWeek?.map((e) => e.value!).join(',') ?? '';
}

List<String> recurringScheduleDTODayOfWeekListToJson(
    List<enums.RecurringScheduleDTODayOfWeek>? recurringScheduleDTODayOfWeek) {
  if (recurringScheduleDTODayOfWeek == null) {
    return [];
  }

  return recurringScheduleDTODayOfWeek.map((e) => e.value!).toList();
}

List<enums.RecurringScheduleDTODayOfWeek>
    recurringScheduleDTODayOfWeekListFromJson(
  List? recurringScheduleDTODayOfWeek, [
  List<enums.RecurringScheduleDTODayOfWeek>? defaultValue,
]) {
  if (recurringScheduleDTODayOfWeek == null) {
    return defaultValue ?? [];
  }

  return recurringScheduleDTODayOfWeek
      .map((e) => recurringScheduleDTODayOfWeekFromJson(e.toString()))
      .toList();
}

List<enums.RecurringScheduleDTODayOfWeek>?
    recurringScheduleDTODayOfWeekNullableListFromJson(
  List? recurringScheduleDTODayOfWeek, [
  List<enums.RecurringScheduleDTODayOfWeek>? defaultValue,
]) {
  if (recurringScheduleDTODayOfWeek == null) {
    return defaultValue;
  }

  return recurringScheduleDTODayOfWeek
      .map((e) => recurringScheduleDTODayOfWeekFromJson(e.toString()))
      .toList();
}

String? userRoleNullableToJson(enums.UserRole? userRole) {
  return userRole?.value;
}

String? userRoleToJson(enums.UserRole userRole) {
  return userRole.value;
}

enums.UserRole userRoleFromJson(
  Object? userRole, [
  enums.UserRole? defaultValue,
]) {
  return enums.UserRole.values.firstWhereOrNull((e) => e.value == userRole) ??
      defaultValue ??
      enums.UserRole.swaggerGeneratedUnknown;
}

enums.UserRole? userRoleNullableFromJson(
  Object? userRole, [
  enums.UserRole? defaultValue,
]) {
  if (userRole == null) {
    return null;
  }
  return enums.UserRole.values.firstWhereOrNull((e) => e.value == userRole) ??
      defaultValue;
}

String userRoleExplodedListToJson(List<enums.UserRole>? userRole) {
  return userRole?.map((e) => e.value!).join(',') ?? '';
}

List<String> userRoleListToJson(List<enums.UserRole>? userRole) {
  if (userRole == null) {
    return [];
  }

  return userRole.map((e) => e.value!).toList();
}

List<enums.UserRole> userRoleListFromJson(
  List? userRole, [
  List<enums.UserRole>? defaultValue,
]) {
  if (userRole == null) {
    return defaultValue ?? [];
  }

  return userRole.map((e) => userRoleFromJson(e.toString())).toList();
}

List<enums.UserRole>? userRoleNullableListFromJson(
  List? userRole, [
  List<enums.UserRole>? defaultValue,
]) {
  if (userRole == null) {
    return defaultValue;
  }

  return userRole.map((e) => userRoleFromJson(e.toString())).toList();
}

String? petServiceDTOCategoryNullableToJson(
    enums.PetServiceDTOCategory? petServiceDTOCategory) {
  return petServiceDTOCategory?.value;
}

String? petServiceDTOCategoryToJson(
    enums.PetServiceDTOCategory petServiceDTOCategory) {
  return petServiceDTOCategory.value;
}

enums.PetServiceDTOCategory petServiceDTOCategoryFromJson(
  Object? petServiceDTOCategory, [
  enums.PetServiceDTOCategory? defaultValue,
]) {
  return enums.PetServiceDTOCategory.values
          .firstWhereOrNull((e) => e.value == petServiceDTOCategory) ??
      defaultValue ??
      enums.PetServiceDTOCategory.swaggerGeneratedUnknown;
}

enums.PetServiceDTOCategory? petServiceDTOCategoryNullableFromJson(
  Object? petServiceDTOCategory, [
  enums.PetServiceDTOCategory? defaultValue,
]) {
  if (petServiceDTOCategory == null) {
    return null;
  }
  return enums.PetServiceDTOCategory.values
          .firstWhereOrNull((e) => e.value == petServiceDTOCategory) ??
      defaultValue;
}

String petServiceDTOCategoryExplodedListToJson(
    List<enums.PetServiceDTOCategory>? petServiceDTOCategory) {
  return petServiceDTOCategory?.map((e) => e.value!).join(',') ?? '';
}

List<String> petServiceDTOCategoryListToJson(
    List<enums.PetServiceDTOCategory>? petServiceDTOCategory) {
  if (petServiceDTOCategory == null) {
    return [];
  }

  return petServiceDTOCategory.map((e) => e.value!).toList();
}

List<enums.PetServiceDTOCategory> petServiceDTOCategoryListFromJson(
  List? petServiceDTOCategory, [
  List<enums.PetServiceDTOCategory>? defaultValue,
]) {
  if (petServiceDTOCategory == null) {
    return defaultValue ?? [];
  }

  return petServiceDTOCategory
      .map((e) => petServiceDTOCategoryFromJson(e.toString()))
      .toList();
}

List<enums.PetServiceDTOCategory>? petServiceDTOCategoryNullableListFromJson(
  List? petServiceDTOCategory, [
  List<enums.PetServiceDTOCategory>? defaultValue,
]) {
  if (petServiceDTOCategory == null) {
    return defaultValue;
  }

  return petServiceDTOCategory
      .map((e) => petServiceDTOCategoryFromJson(e.toString()))
      .toList();
}

String? petServiceDTOAnimalTypesNullableToJson(
    enums.PetServiceDTOAnimalTypes? petServiceDTOAnimalTypes) {
  return petServiceDTOAnimalTypes?.value;
}

String? petServiceDTOAnimalTypesToJson(
    enums.PetServiceDTOAnimalTypes petServiceDTOAnimalTypes) {
  return petServiceDTOAnimalTypes.value;
}

enums.PetServiceDTOAnimalTypes petServiceDTOAnimalTypesFromJson(
  Object? petServiceDTOAnimalTypes, [
  enums.PetServiceDTOAnimalTypes? defaultValue,
]) {
  return enums.PetServiceDTOAnimalTypes.values
          .firstWhereOrNull((e) => e.value == petServiceDTOAnimalTypes) ??
      defaultValue ??
      enums.PetServiceDTOAnimalTypes.swaggerGeneratedUnknown;
}

enums.PetServiceDTOAnimalTypes? petServiceDTOAnimalTypesNullableFromJson(
  Object? petServiceDTOAnimalTypes, [
  enums.PetServiceDTOAnimalTypes? defaultValue,
]) {
  if (petServiceDTOAnimalTypes == null) {
    return null;
  }
  return enums.PetServiceDTOAnimalTypes.values
          .firstWhereOrNull((e) => e.value == petServiceDTOAnimalTypes) ??
      defaultValue;
}

String petServiceDTOAnimalTypesExplodedListToJson(
    List<enums.PetServiceDTOAnimalTypes>? petServiceDTOAnimalTypes) {
  return petServiceDTOAnimalTypes?.map((e) => e.value!).join(',') ?? '';
}

List<String> petServiceDTOAnimalTypesListToJson(
    List<enums.PetServiceDTOAnimalTypes>? petServiceDTOAnimalTypes) {
  if (petServiceDTOAnimalTypes == null) {
    return [];
  }

  return petServiceDTOAnimalTypes.map((e) => e.value!).toList();
}

List<enums.PetServiceDTOAnimalTypes> petServiceDTOAnimalTypesListFromJson(
  List? petServiceDTOAnimalTypes, [
  List<enums.PetServiceDTOAnimalTypes>? defaultValue,
]) {
  if (petServiceDTOAnimalTypes == null) {
    return defaultValue ?? [];
  }

  return petServiceDTOAnimalTypes
      .map((e) => petServiceDTOAnimalTypesFromJson(e.toString()))
      .toList();
}

List<enums.PetServiceDTOAnimalTypes>?
    petServiceDTOAnimalTypesNullableListFromJson(
  List? petServiceDTOAnimalTypes, [
  List<enums.PetServiceDTOAnimalTypes>? defaultValue,
]) {
  if (petServiceDTOAnimalTypes == null) {
    return defaultValue;
  }

  return petServiceDTOAnimalTypes
      .map((e) => petServiceDTOAnimalTypesFromJson(e.toString()))
      .toList();
}

String? animalUpdateDTOSpeciesNullableToJson(
    enums.AnimalUpdateDTOSpecies? animalUpdateDTOSpecies) {
  return animalUpdateDTOSpecies?.value;
}

String? animalUpdateDTOSpeciesToJson(
    enums.AnimalUpdateDTOSpecies animalUpdateDTOSpecies) {
  return animalUpdateDTOSpecies.value;
}

enums.AnimalUpdateDTOSpecies animalUpdateDTOSpeciesFromJson(
  Object? animalUpdateDTOSpecies, [
  enums.AnimalUpdateDTOSpecies? defaultValue,
]) {
  return enums.AnimalUpdateDTOSpecies.values
          .firstWhereOrNull((e) => e.value == animalUpdateDTOSpecies) ??
      defaultValue ??
      enums.AnimalUpdateDTOSpecies.swaggerGeneratedUnknown;
}

enums.AnimalUpdateDTOSpecies? animalUpdateDTOSpeciesNullableFromJson(
  Object? animalUpdateDTOSpecies, [
  enums.AnimalUpdateDTOSpecies? defaultValue,
]) {
  if (animalUpdateDTOSpecies == null) {
    return null;
  }
  return enums.AnimalUpdateDTOSpecies.values
          .firstWhereOrNull((e) => e.value == animalUpdateDTOSpecies) ??
      defaultValue;
}

String animalUpdateDTOSpeciesExplodedListToJson(
    List<enums.AnimalUpdateDTOSpecies>? animalUpdateDTOSpecies) {
  return animalUpdateDTOSpecies?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalUpdateDTOSpeciesListToJson(
    List<enums.AnimalUpdateDTOSpecies>? animalUpdateDTOSpecies) {
  if (animalUpdateDTOSpecies == null) {
    return [];
  }

  return animalUpdateDTOSpecies.map((e) => e.value!).toList();
}

List<enums.AnimalUpdateDTOSpecies> animalUpdateDTOSpeciesListFromJson(
  List? animalUpdateDTOSpecies, [
  List<enums.AnimalUpdateDTOSpecies>? defaultValue,
]) {
  if (animalUpdateDTOSpecies == null) {
    return defaultValue ?? [];
  }

  return animalUpdateDTOSpecies
      .map((e) => animalUpdateDTOSpeciesFromJson(e.toString()))
      .toList();
}

List<enums.AnimalUpdateDTOSpecies>? animalUpdateDTOSpeciesNullableListFromJson(
  List? animalUpdateDTOSpecies, [
  List<enums.AnimalUpdateDTOSpecies>? defaultValue,
]) {
  if (animalUpdateDTOSpecies == null) {
    return defaultValue;
  }

  return animalUpdateDTOSpecies
      .map((e) => animalUpdateDTOSpeciesFromJson(e.toString()))
      .toList();
}

String? animalUpdateDTOGenderNullableToJson(
    enums.AnimalUpdateDTOGender? animalUpdateDTOGender) {
  return animalUpdateDTOGender?.value;
}

String? animalUpdateDTOGenderToJson(
    enums.AnimalUpdateDTOGender animalUpdateDTOGender) {
  return animalUpdateDTOGender.value;
}

enums.AnimalUpdateDTOGender animalUpdateDTOGenderFromJson(
  Object? animalUpdateDTOGender, [
  enums.AnimalUpdateDTOGender? defaultValue,
]) {
  return enums.AnimalUpdateDTOGender.values
          .firstWhereOrNull((e) => e.value == animalUpdateDTOGender) ??
      defaultValue ??
      enums.AnimalUpdateDTOGender.swaggerGeneratedUnknown;
}

enums.AnimalUpdateDTOGender? animalUpdateDTOGenderNullableFromJson(
  Object? animalUpdateDTOGender, [
  enums.AnimalUpdateDTOGender? defaultValue,
]) {
  if (animalUpdateDTOGender == null) {
    return null;
  }
  return enums.AnimalUpdateDTOGender.values
          .firstWhereOrNull((e) => e.value == animalUpdateDTOGender) ??
      defaultValue;
}

String animalUpdateDTOGenderExplodedListToJson(
    List<enums.AnimalUpdateDTOGender>? animalUpdateDTOGender) {
  return animalUpdateDTOGender?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalUpdateDTOGenderListToJson(
    List<enums.AnimalUpdateDTOGender>? animalUpdateDTOGender) {
  if (animalUpdateDTOGender == null) {
    return [];
  }

  return animalUpdateDTOGender.map((e) => e.value!).toList();
}

List<enums.AnimalUpdateDTOGender> animalUpdateDTOGenderListFromJson(
  List? animalUpdateDTOGender, [
  List<enums.AnimalUpdateDTOGender>? defaultValue,
]) {
  if (animalUpdateDTOGender == null) {
    return defaultValue ?? [];
  }

  return animalUpdateDTOGender
      .map((e) => animalUpdateDTOGenderFromJson(e.toString()))
      .toList();
}

List<enums.AnimalUpdateDTOGender>? animalUpdateDTOGenderNullableListFromJson(
  List? animalUpdateDTOGender, [
  List<enums.AnimalUpdateDTOGender>? defaultValue,
]) {
  if (animalUpdateDTOGender == null) {
    return defaultValue;
  }

  return animalUpdateDTOGender
      .map((e) => animalUpdateDTOGenderFromJson(e.toString()))
      .toList();
}

String? animalUpdateDTOSizeNullableToJson(
    enums.AnimalUpdateDTOSize? animalUpdateDTOSize) {
  return animalUpdateDTOSize?.value;
}

String? animalUpdateDTOSizeToJson(
    enums.AnimalUpdateDTOSize animalUpdateDTOSize) {
  return animalUpdateDTOSize.value;
}

enums.AnimalUpdateDTOSize animalUpdateDTOSizeFromJson(
  Object? animalUpdateDTOSize, [
  enums.AnimalUpdateDTOSize? defaultValue,
]) {
  return enums.AnimalUpdateDTOSize.values
          .firstWhereOrNull((e) => e.value == animalUpdateDTOSize) ??
      defaultValue ??
      enums.AnimalUpdateDTOSize.swaggerGeneratedUnknown;
}

enums.AnimalUpdateDTOSize? animalUpdateDTOSizeNullableFromJson(
  Object? animalUpdateDTOSize, [
  enums.AnimalUpdateDTOSize? defaultValue,
]) {
  if (animalUpdateDTOSize == null) {
    return null;
  }
  return enums.AnimalUpdateDTOSize.values
          .firstWhereOrNull((e) => e.value == animalUpdateDTOSize) ??
      defaultValue;
}

String animalUpdateDTOSizeExplodedListToJson(
    List<enums.AnimalUpdateDTOSize>? animalUpdateDTOSize) {
  return animalUpdateDTOSize?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalUpdateDTOSizeListToJson(
    List<enums.AnimalUpdateDTOSize>? animalUpdateDTOSize) {
  if (animalUpdateDTOSize == null) {
    return [];
  }

  return animalUpdateDTOSize.map((e) => e.value!).toList();
}

List<enums.AnimalUpdateDTOSize> animalUpdateDTOSizeListFromJson(
  List? animalUpdateDTOSize, [
  List<enums.AnimalUpdateDTOSize>? defaultValue,
]) {
  if (animalUpdateDTOSize == null) {
    return defaultValue ?? [];
  }

  return animalUpdateDTOSize
      .map((e) => animalUpdateDTOSizeFromJson(e.toString()))
      .toList();
}

List<enums.AnimalUpdateDTOSize>? animalUpdateDTOSizeNullableListFromJson(
  List? animalUpdateDTOSize, [
  List<enums.AnimalUpdateDTOSize>? defaultValue,
]) {
  if (animalUpdateDTOSize == null) {
    return defaultValue;
  }

  return animalUpdateDTOSize
      .map((e) => animalUpdateDTOSizeFromJson(e.toString()))
      .toList();
}

String? animalUpdateDTOEnergyLevelNullableToJson(
    enums.AnimalUpdateDTOEnergyLevel? animalUpdateDTOEnergyLevel) {
  return animalUpdateDTOEnergyLevel?.value;
}

String? animalUpdateDTOEnergyLevelToJson(
    enums.AnimalUpdateDTOEnergyLevel animalUpdateDTOEnergyLevel) {
  return animalUpdateDTOEnergyLevel.value;
}

enums.AnimalUpdateDTOEnergyLevel animalUpdateDTOEnergyLevelFromJson(
  Object? animalUpdateDTOEnergyLevel, [
  enums.AnimalUpdateDTOEnergyLevel? defaultValue,
]) {
  return enums.AnimalUpdateDTOEnergyLevel.values
          .firstWhereOrNull((e) => e.value == animalUpdateDTOEnergyLevel) ??
      defaultValue ??
      enums.AnimalUpdateDTOEnergyLevel.swaggerGeneratedUnknown;
}

enums.AnimalUpdateDTOEnergyLevel? animalUpdateDTOEnergyLevelNullableFromJson(
  Object? animalUpdateDTOEnergyLevel, [
  enums.AnimalUpdateDTOEnergyLevel? defaultValue,
]) {
  if (animalUpdateDTOEnergyLevel == null) {
    return null;
  }
  return enums.AnimalUpdateDTOEnergyLevel.values
          .firstWhereOrNull((e) => e.value == animalUpdateDTOEnergyLevel) ??
      defaultValue;
}

String animalUpdateDTOEnergyLevelExplodedListToJson(
    List<enums.AnimalUpdateDTOEnergyLevel>? animalUpdateDTOEnergyLevel) {
  return animalUpdateDTOEnergyLevel?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalUpdateDTOEnergyLevelListToJson(
    List<enums.AnimalUpdateDTOEnergyLevel>? animalUpdateDTOEnergyLevel) {
  if (animalUpdateDTOEnergyLevel == null) {
    return [];
  }

  return animalUpdateDTOEnergyLevel.map((e) => e.value!).toList();
}

List<enums.AnimalUpdateDTOEnergyLevel> animalUpdateDTOEnergyLevelListFromJson(
  List? animalUpdateDTOEnergyLevel, [
  List<enums.AnimalUpdateDTOEnergyLevel>? defaultValue,
]) {
  if (animalUpdateDTOEnergyLevel == null) {
    return defaultValue ?? [];
  }

  return animalUpdateDTOEnergyLevel
      .map((e) => animalUpdateDTOEnergyLevelFromJson(e.toString()))
      .toList();
}

List<enums.AnimalUpdateDTOEnergyLevel>?
    animalUpdateDTOEnergyLevelNullableListFromJson(
  List? animalUpdateDTOEnergyLevel, [
  List<enums.AnimalUpdateDTOEnergyLevel>? defaultValue,
]) {
  if (animalUpdateDTOEnergyLevel == null) {
    return defaultValue;
  }

  return animalUpdateDTOEnergyLevel
      .map((e) => animalUpdateDTOEnergyLevelFromJson(e.toString()))
      .toList();
}

String? animalDTOSpeciesNullableToJson(
    enums.AnimalDTOSpecies? animalDTOSpecies) {
  return animalDTOSpecies?.value;
}

String? animalDTOSpeciesToJson(enums.AnimalDTOSpecies animalDTOSpecies) {
  return animalDTOSpecies.value;
}

enums.AnimalDTOSpecies animalDTOSpeciesFromJson(
  Object? animalDTOSpecies, [
  enums.AnimalDTOSpecies? defaultValue,
]) {
  return enums.AnimalDTOSpecies.values
          .firstWhereOrNull((e) => e.value == animalDTOSpecies) ??
      defaultValue ??
      enums.AnimalDTOSpecies.swaggerGeneratedUnknown;
}

enums.AnimalDTOSpecies? animalDTOSpeciesNullableFromJson(
  Object? animalDTOSpecies, [
  enums.AnimalDTOSpecies? defaultValue,
]) {
  if (animalDTOSpecies == null) {
    return null;
  }
  return enums.AnimalDTOSpecies.values
          .firstWhereOrNull((e) => e.value == animalDTOSpecies) ??
      defaultValue;
}

String animalDTOSpeciesExplodedListToJson(
    List<enums.AnimalDTOSpecies>? animalDTOSpecies) {
  return animalDTOSpecies?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalDTOSpeciesListToJson(
    List<enums.AnimalDTOSpecies>? animalDTOSpecies) {
  if (animalDTOSpecies == null) {
    return [];
  }

  return animalDTOSpecies.map((e) => e.value!).toList();
}

List<enums.AnimalDTOSpecies> animalDTOSpeciesListFromJson(
  List? animalDTOSpecies, [
  List<enums.AnimalDTOSpecies>? defaultValue,
]) {
  if (animalDTOSpecies == null) {
    return defaultValue ?? [];
  }

  return animalDTOSpecies
      .map((e) => animalDTOSpeciesFromJson(e.toString()))
      .toList();
}

List<enums.AnimalDTOSpecies>? animalDTOSpeciesNullableListFromJson(
  List? animalDTOSpecies, [
  List<enums.AnimalDTOSpecies>? defaultValue,
]) {
  if (animalDTOSpecies == null) {
    return defaultValue;
  }

  return animalDTOSpecies
      .map((e) => animalDTOSpeciesFromJson(e.toString()))
      .toList();
}

String? animalDTOGenderNullableToJson(enums.AnimalDTOGender? animalDTOGender) {
  return animalDTOGender?.value;
}

String? animalDTOGenderToJson(enums.AnimalDTOGender animalDTOGender) {
  return animalDTOGender.value;
}

enums.AnimalDTOGender animalDTOGenderFromJson(
  Object? animalDTOGender, [
  enums.AnimalDTOGender? defaultValue,
]) {
  return enums.AnimalDTOGender.values
          .firstWhereOrNull((e) => e.value == animalDTOGender) ??
      defaultValue ??
      enums.AnimalDTOGender.swaggerGeneratedUnknown;
}

enums.AnimalDTOGender? animalDTOGenderNullableFromJson(
  Object? animalDTOGender, [
  enums.AnimalDTOGender? defaultValue,
]) {
  if (animalDTOGender == null) {
    return null;
  }
  return enums.AnimalDTOGender.values
          .firstWhereOrNull((e) => e.value == animalDTOGender) ??
      defaultValue;
}

String animalDTOGenderExplodedListToJson(
    List<enums.AnimalDTOGender>? animalDTOGender) {
  return animalDTOGender?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalDTOGenderListToJson(
    List<enums.AnimalDTOGender>? animalDTOGender) {
  if (animalDTOGender == null) {
    return [];
  }

  return animalDTOGender.map((e) => e.value!).toList();
}

List<enums.AnimalDTOGender> animalDTOGenderListFromJson(
  List? animalDTOGender, [
  List<enums.AnimalDTOGender>? defaultValue,
]) {
  if (animalDTOGender == null) {
    return defaultValue ?? [];
  }

  return animalDTOGender
      .map((e) => animalDTOGenderFromJson(e.toString()))
      .toList();
}

List<enums.AnimalDTOGender>? animalDTOGenderNullableListFromJson(
  List? animalDTOGender, [
  List<enums.AnimalDTOGender>? defaultValue,
]) {
  if (animalDTOGender == null) {
    return defaultValue;
  }

  return animalDTOGender
      .map((e) => animalDTOGenderFromJson(e.toString()))
      .toList();
}

String? animalDTOSizeNullableToJson(enums.AnimalDTOSize? animalDTOSize) {
  return animalDTOSize?.value;
}

String? animalDTOSizeToJson(enums.AnimalDTOSize animalDTOSize) {
  return animalDTOSize.value;
}

enums.AnimalDTOSize animalDTOSizeFromJson(
  Object? animalDTOSize, [
  enums.AnimalDTOSize? defaultValue,
]) {
  return enums.AnimalDTOSize.values
          .firstWhereOrNull((e) => e.value == animalDTOSize) ??
      defaultValue ??
      enums.AnimalDTOSize.swaggerGeneratedUnknown;
}

enums.AnimalDTOSize? animalDTOSizeNullableFromJson(
  Object? animalDTOSize, [
  enums.AnimalDTOSize? defaultValue,
]) {
  if (animalDTOSize == null) {
    return null;
  }
  return enums.AnimalDTOSize.values
          .firstWhereOrNull((e) => e.value == animalDTOSize) ??
      defaultValue;
}

String animalDTOSizeExplodedListToJson(
    List<enums.AnimalDTOSize>? animalDTOSize) {
  return animalDTOSize?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalDTOSizeListToJson(List<enums.AnimalDTOSize>? animalDTOSize) {
  if (animalDTOSize == null) {
    return [];
  }

  return animalDTOSize.map((e) => e.value!).toList();
}

List<enums.AnimalDTOSize> animalDTOSizeListFromJson(
  List? animalDTOSize, [
  List<enums.AnimalDTOSize>? defaultValue,
]) {
  if (animalDTOSize == null) {
    return defaultValue ?? [];
  }

  return animalDTOSize.map((e) => animalDTOSizeFromJson(e.toString())).toList();
}

List<enums.AnimalDTOSize>? animalDTOSizeNullableListFromJson(
  List? animalDTOSize, [
  List<enums.AnimalDTOSize>? defaultValue,
]) {
  if (animalDTOSize == null) {
    return defaultValue;
  }

  return animalDTOSize.map((e) => animalDTOSizeFromJson(e.toString())).toList();
}

String? animalDTOEnergyLevelNullableToJson(
    enums.AnimalDTOEnergyLevel? animalDTOEnergyLevel) {
  return animalDTOEnergyLevel?.value;
}

String? animalDTOEnergyLevelToJson(
    enums.AnimalDTOEnergyLevel animalDTOEnergyLevel) {
  return animalDTOEnergyLevel.value;
}

enums.AnimalDTOEnergyLevel animalDTOEnergyLevelFromJson(
  Object? animalDTOEnergyLevel, [
  enums.AnimalDTOEnergyLevel? defaultValue,
]) {
  return enums.AnimalDTOEnergyLevel.values
          .firstWhereOrNull((e) => e.value == animalDTOEnergyLevel) ??
      defaultValue ??
      enums.AnimalDTOEnergyLevel.swaggerGeneratedUnknown;
}

enums.AnimalDTOEnergyLevel? animalDTOEnergyLevelNullableFromJson(
  Object? animalDTOEnergyLevel, [
  enums.AnimalDTOEnergyLevel? defaultValue,
]) {
  if (animalDTOEnergyLevel == null) {
    return null;
  }
  return enums.AnimalDTOEnergyLevel.values
          .firstWhereOrNull((e) => e.value == animalDTOEnergyLevel) ??
      defaultValue;
}

String animalDTOEnergyLevelExplodedListToJson(
    List<enums.AnimalDTOEnergyLevel>? animalDTOEnergyLevel) {
  return animalDTOEnergyLevel?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalDTOEnergyLevelListToJson(
    List<enums.AnimalDTOEnergyLevel>? animalDTOEnergyLevel) {
  if (animalDTOEnergyLevel == null) {
    return [];
  }

  return animalDTOEnergyLevel.map((e) => e.value!).toList();
}

List<enums.AnimalDTOEnergyLevel> animalDTOEnergyLevelListFromJson(
  List? animalDTOEnergyLevel, [
  List<enums.AnimalDTOEnergyLevel>? defaultValue,
]) {
  if (animalDTOEnergyLevel == null) {
    return defaultValue ?? [];
  }

  return animalDTOEnergyLevel
      .map((e) => animalDTOEnergyLevelFromJson(e.toString()))
      .toList();
}

List<enums.AnimalDTOEnergyLevel>? animalDTOEnergyLevelNullableListFromJson(
  List? animalDTOEnergyLevel, [
  List<enums.AnimalDTOEnergyLevel>? defaultValue,
]) {
  if (animalDTOEnergyLevel == null) {
    return defaultValue;
  }

  return animalDTOEnergyLevel
      .map((e) => animalDTOEnergyLevelFromJson(e.toString()))
      .toList();
}

String? userCreationDTORoleNullableToJson(
    enums.UserCreationDTORole? userCreationDTORole) {
  return userCreationDTORole?.value;
}

String? userCreationDTORoleToJson(
    enums.UserCreationDTORole userCreationDTORole) {
  return userCreationDTORole.value;
}

enums.UserCreationDTORole userCreationDTORoleFromJson(
  Object? userCreationDTORole, [
  enums.UserCreationDTORole? defaultValue,
]) {
  return enums.UserCreationDTORole.values
          .firstWhereOrNull((e) => e.value == userCreationDTORole) ??
      defaultValue ??
      enums.UserCreationDTORole.swaggerGeneratedUnknown;
}

enums.UserCreationDTORole? userCreationDTORoleNullableFromJson(
  Object? userCreationDTORole, [
  enums.UserCreationDTORole? defaultValue,
]) {
  if (userCreationDTORole == null) {
    return null;
  }
  return enums.UserCreationDTORole.values
          .firstWhereOrNull((e) => e.value == userCreationDTORole) ??
      defaultValue;
}

String userCreationDTORoleExplodedListToJson(
    List<enums.UserCreationDTORole>? userCreationDTORole) {
  return userCreationDTORole?.map((e) => e.value!).join(',') ?? '';
}

List<String> userCreationDTORoleListToJson(
    List<enums.UserCreationDTORole>? userCreationDTORole) {
  if (userCreationDTORole == null) {
    return [];
  }

  return userCreationDTORole.map((e) => e.value!).toList();
}

List<enums.UserCreationDTORole> userCreationDTORoleListFromJson(
  List? userCreationDTORole, [
  List<enums.UserCreationDTORole>? defaultValue,
]) {
  if (userCreationDTORole == null) {
    return defaultValue ?? [];
  }

  return userCreationDTORole
      .map((e) => userCreationDTORoleFromJson(e.toString()))
      .toList();
}

List<enums.UserCreationDTORole>? userCreationDTORoleNullableListFromJson(
  List? userCreationDTORole, [
  List<enums.UserCreationDTORole>? defaultValue,
]) {
  if (userCreationDTORole == null) {
    return defaultValue;
  }

  return userCreationDTORole
      .map((e) => userCreationDTORoleFromJson(e.toString()))
      .toList();
}

String? missionDTOMissionStatusNullableToJson(
    enums.MissionDTOMissionStatus? missionDTOMissionStatus) {
  return missionDTOMissionStatus?.value;
}

String? missionDTOMissionStatusToJson(
    enums.MissionDTOMissionStatus missionDTOMissionStatus) {
  return missionDTOMissionStatus.value;
}

enums.MissionDTOMissionStatus missionDTOMissionStatusFromJson(
  Object? missionDTOMissionStatus, [
  enums.MissionDTOMissionStatus? defaultValue,
]) {
  return enums.MissionDTOMissionStatus.values
          .firstWhereOrNull((e) => e.value == missionDTOMissionStatus) ??
      defaultValue ??
      enums.MissionDTOMissionStatus.swaggerGeneratedUnknown;
}

enums.MissionDTOMissionStatus? missionDTOMissionStatusNullableFromJson(
  Object? missionDTOMissionStatus, [
  enums.MissionDTOMissionStatus? defaultValue,
]) {
  if (missionDTOMissionStatus == null) {
    return null;
  }
  return enums.MissionDTOMissionStatus.values
          .firstWhereOrNull((e) => e.value == missionDTOMissionStatus) ??
      defaultValue;
}

String missionDTOMissionStatusExplodedListToJson(
    List<enums.MissionDTOMissionStatus>? missionDTOMissionStatus) {
  return missionDTOMissionStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> missionDTOMissionStatusListToJson(
    List<enums.MissionDTOMissionStatus>? missionDTOMissionStatus) {
  if (missionDTOMissionStatus == null) {
    return [];
  }

  return missionDTOMissionStatus.map((e) => e.value!).toList();
}

List<enums.MissionDTOMissionStatus> missionDTOMissionStatusListFromJson(
  List? missionDTOMissionStatus, [
  List<enums.MissionDTOMissionStatus>? defaultValue,
]) {
  if (missionDTOMissionStatus == null) {
    return defaultValue ?? [];
  }

  return missionDTOMissionStatus
      .map((e) => missionDTOMissionStatusFromJson(e.toString()))
      .toList();
}

List<enums.MissionDTOMissionStatus>?
    missionDTOMissionStatusNullableListFromJson(
  List? missionDTOMissionStatus, [
  List<enums.MissionDTOMissionStatus>? defaultValue,
]) {
  if (missionDTOMissionStatus == null) {
    return defaultValue;
  }

  return missionDTOMissionStatus
      .map((e) => missionDTOMissionStatusFromJson(e.toString()))
      .toList();
}

String? animalCreateDTOSpeciesNullableToJson(
    enums.AnimalCreateDTOSpecies? animalCreateDTOSpecies) {
  return animalCreateDTOSpecies?.value;
}

String? animalCreateDTOSpeciesToJson(
    enums.AnimalCreateDTOSpecies animalCreateDTOSpecies) {
  return animalCreateDTOSpecies.value;
}

enums.AnimalCreateDTOSpecies animalCreateDTOSpeciesFromJson(
  Object? animalCreateDTOSpecies, [
  enums.AnimalCreateDTOSpecies? defaultValue,
]) {
  return enums.AnimalCreateDTOSpecies.values
          .firstWhereOrNull((e) => e.value == animalCreateDTOSpecies) ??
      defaultValue ??
      enums.AnimalCreateDTOSpecies.swaggerGeneratedUnknown;
}

enums.AnimalCreateDTOSpecies? animalCreateDTOSpeciesNullableFromJson(
  Object? animalCreateDTOSpecies, [
  enums.AnimalCreateDTOSpecies? defaultValue,
]) {
  if (animalCreateDTOSpecies == null) {
    return null;
  }
  return enums.AnimalCreateDTOSpecies.values
          .firstWhereOrNull((e) => e.value == animalCreateDTOSpecies) ??
      defaultValue;
}

String animalCreateDTOSpeciesExplodedListToJson(
    List<enums.AnimalCreateDTOSpecies>? animalCreateDTOSpecies) {
  return animalCreateDTOSpecies?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalCreateDTOSpeciesListToJson(
    List<enums.AnimalCreateDTOSpecies>? animalCreateDTOSpecies) {
  if (animalCreateDTOSpecies == null) {
    return [];
  }

  return animalCreateDTOSpecies.map((e) => e.value!).toList();
}

List<enums.AnimalCreateDTOSpecies> animalCreateDTOSpeciesListFromJson(
  List? animalCreateDTOSpecies, [
  List<enums.AnimalCreateDTOSpecies>? defaultValue,
]) {
  if (animalCreateDTOSpecies == null) {
    return defaultValue ?? [];
  }

  return animalCreateDTOSpecies
      .map((e) => animalCreateDTOSpeciesFromJson(e.toString()))
      .toList();
}

List<enums.AnimalCreateDTOSpecies>? animalCreateDTOSpeciesNullableListFromJson(
  List? animalCreateDTOSpecies, [
  List<enums.AnimalCreateDTOSpecies>? defaultValue,
]) {
  if (animalCreateDTOSpecies == null) {
    return defaultValue;
  }

  return animalCreateDTOSpecies
      .map((e) => animalCreateDTOSpeciesFromJson(e.toString()))
      .toList();
}

String? animalCreateDTOGenderNullableToJson(
    enums.AnimalCreateDTOGender? animalCreateDTOGender) {
  return animalCreateDTOGender?.value;
}

String? animalCreateDTOGenderToJson(
    enums.AnimalCreateDTOGender animalCreateDTOGender) {
  return animalCreateDTOGender.value;
}

enums.AnimalCreateDTOGender animalCreateDTOGenderFromJson(
  Object? animalCreateDTOGender, [
  enums.AnimalCreateDTOGender? defaultValue,
]) {
  return enums.AnimalCreateDTOGender.values
          .firstWhereOrNull((e) => e.value == animalCreateDTOGender) ??
      defaultValue ??
      enums.AnimalCreateDTOGender.swaggerGeneratedUnknown;
}

enums.AnimalCreateDTOGender? animalCreateDTOGenderNullableFromJson(
  Object? animalCreateDTOGender, [
  enums.AnimalCreateDTOGender? defaultValue,
]) {
  if (animalCreateDTOGender == null) {
    return null;
  }
  return enums.AnimalCreateDTOGender.values
          .firstWhereOrNull((e) => e.value == animalCreateDTOGender) ??
      defaultValue;
}

String animalCreateDTOGenderExplodedListToJson(
    List<enums.AnimalCreateDTOGender>? animalCreateDTOGender) {
  return animalCreateDTOGender?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalCreateDTOGenderListToJson(
    List<enums.AnimalCreateDTOGender>? animalCreateDTOGender) {
  if (animalCreateDTOGender == null) {
    return [];
  }

  return animalCreateDTOGender.map((e) => e.value!).toList();
}

List<enums.AnimalCreateDTOGender> animalCreateDTOGenderListFromJson(
  List? animalCreateDTOGender, [
  List<enums.AnimalCreateDTOGender>? defaultValue,
]) {
  if (animalCreateDTOGender == null) {
    return defaultValue ?? [];
  }

  return animalCreateDTOGender
      .map((e) => animalCreateDTOGenderFromJson(e.toString()))
      .toList();
}

List<enums.AnimalCreateDTOGender>? animalCreateDTOGenderNullableListFromJson(
  List? animalCreateDTOGender, [
  List<enums.AnimalCreateDTOGender>? defaultValue,
]) {
  if (animalCreateDTOGender == null) {
    return defaultValue;
  }

  return animalCreateDTOGender
      .map((e) => animalCreateDTOGenderFromJson(e.toString()))
      .toList();
}

String? animalCreateDTOSizeNullableToJson(
    enums.AnimalCreateDTOSize? animalCreateDTOSize) {
  return animalCreateDTOSize?.value;
}

String? animalCreateDTOSizeToJson(
    enums.AnimalCreateDTOSize animalCreateDTOSize) {
  return animalCreateDTOSize.value;
}

enums.AnimalCreateDTOSize animalCreateDTOSizeFromJson(
  Object? animalCreateDTOSize, [
  enums.AnimalCreateDTOSize? defaultValue,
]) {
  return enums.AnimalCreateDTOSize.values
          .firstWhereOrNull((e) => e.value == animalCreateDTOSize) ??
      defaultValue ??
      enums.AnimalCreateDTOSize.swaggerGeneratedUnknown;
}

enums.AnimalCreateDTOSize? animalCreateDTOSizeNullableFromJson(
  Object? animalCreateDTOSize, [
  enums.AnimalCreateDTOSize? defaultValue,
]) {
  if (animalCreateDTOSize == null) {
    return null;
  }
  return enums.AnimalCreateDTOSize.values
          .firstWhereOrNull((e) => e.value == animalCreateDTOSize) ??
      defaultValue;
}

String animalCreateDTOSizeExplodedListToJson(
    List<enums.AnimalCreateDTOSize>? animalCreateDTOSize) {
  return animalCreateDTOSize?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalCreateDTOSizeListToJson(
    List<enums.AnimalCreateDTOSize>? animalCreateDTOSize) {
  if (animalCreateDTOSize == null) {
    return [];
  }

  return animalCreateDTOSize.map((e) => e.value!).toList();
}

List<enums.AnimalCreateDTOSize> animalCreateDTOSizeListFromJson(
  List? animalCreateDTOSize, [
  List<enums.AnimalCreateDTOSize>? defaultValue,
]) {
  if (animalCreateDTOSize == null) {
    return defaultValue ?? [];
  }

  return animalCreateDTOSize
      .map((e) => animalCreateDTOSizeFromJson(e.toString()))
      .toList();
}

List<enums.AnimalCreateDTOSize>? animalCreateDTOSizeNullableListFromJson(
  List? animalCreateDTOSize, [
  List<enums.AnimalCreateDTOSize>? defaultValue,
]) {
  if (animalCreateDTOSize == null) {
    return defaultValue;
  }

  return animalCreateDTOSize
      .map((e) => animalCreateDTOSizeFromJson(e.toString()))
      .toList();
}

String? animalCreateDTOEnergyLevelNullableToJson(
    enums.AnimalCreateDTOEnergyLevel? animalCreateDTOEnergyLevel) {
  return animalCreateDTOEnergyLevel?.value;
}

String? animalCreateDTOEnergyLevelToJson(
    enums.AnimalCreateDTOEnergyLevel animalCreateDTOEnergyLevel) {
  return animalCreateDTOEnergyLevel.value;
}

enums.AnimalCreateDTOEnergyLevel animalCreateDTOEnergyLevelFromJson(
  Object? animalCreateDTOEnergyLevel, [
  enums.AnimalCreateDTOEnergyLevel? defaultValue,
]) {
  return enums.AnimalCreateDTOEnergyLevel.values
          .firstWhereOrNull((e) => e.value == animalCreateDTOEnergyLevel) ??
      defaultValue ??
      enums.AnimalCreateDTOEnergyLevel.swaggerGeneratedUnknown;
}

enums.AnimalCreateDTOEnergyLevel? animalCreateDTOEnergyLevelNullableFromJson(
  Object? animalCreateDTOEnergyLevel, [
  enums.AnimalCreateDTOEnergyLevel? defaultValue,
]) {
  if (animalCreateDTOEnergyLevel == null) {
    return null;
  }
  return enums.AnimalCreateDTOEnergyLevel.values
          .firstWhereOrNull((e) => e.value == animalCreateDTOEnergyLevel) ??
      defaultValue;
}

String animalCreateDTOEnergyLevelExplodedListToJson(
    List<enums.AnimalCreateDTOEnergyLevel>? animalCreateDTOEnergyLevel) {
  return animalCreateDTOEnergyLevel?.map((e) => e.value!).join(',') ?? '';
}

List<String> animalCreateDTOEnergyLevelListToJson(
    List<enums.AnimalCreateDTOEnergyLevel>? animalCreateDTOEnergyLevel) {
  if (animalCreateDTOEnergyLevel == null) {
    return [];
  }

  return animalCreateDTOEnergyLevel.map((e) => e.value!).toList();
}

List<enums.AnimalCreateDTOEnergyLevel> animalCreateDTOEnergyLevelListFromJson(
  List? animalCreateDTOEnergyLevel, [
  List<enums.AnimalCreateDTOEnergyLevel>? defaultValue,
]) {
  if (animalCreateDTOEnergyLevel == null) {
    return defaultValue ?? [];
  }

  return animalCreateDTOEnergyLevel
      .map((e) => animalCreateDTOEnergyLevelFromJson(e.toString()))
      .toList();
}

List<enums.AnimalCreateDTOEnergyLevel>?
    animalCreateDTOEnergyLevelNullableListFromJson(
  List? animalCreateDTOEnergyLevel, [
  List<enums.AnimalCreateDTOEnergyLevel>? defaultValue,
]) {
  if (animalCreateDTOEnergyLevel == null) {
    return defaultValue;
  }

  return animalCreateDTOEnergyLevel
      .map((e) => animalCreateDTOEnergyLevelFromJson(e.toString()))
      .toList();
}

String? apiRecurringSchedulesGetDayOfWeekNullableToJson(
    enums.ApiRecurringSchedulesGetDayOfWeek?
        apiRecurringSchedulesGetDayOfWeek) {
  return apiRecurringSchedulesGetDayOfWeek?.value;
}

String? apiRecurringSchedulesGetDayOfWeekToJson(
    enums.ApiRecurringSchedulesGetDayOfWeek apiRecurringSchedulesGetDayOfWeek) {
  return apiRecurringSchedulesGetDayOfWeek.value;
}

enums.ApiRecurringSchedulesGetDayOfWeek
    apiRecurringSchedulesGetDayOfWeekFromJson(
  Object? apiRecurringSchedulesGetDayOfWeek, [
  enums.ApiRecurringSchedulesGetDayOfWeek? defaultValue,
]) {
  return enums.ApiRecurringSchedulesGetDayOfWeek.values.firstWhereOrNull(
          (e) => e.value == apiRecurringSchedulesGetDayOfWeek) ??
      defaultValue ??
      enums.ApiRecurringSchedulesGetDayOfWeek.swaggerGeneratedUnknown;
}

enums.ApiRecurringSchedulesGetDayOfWeek?
    apiRecurringSchedulesGetDayOfWeekNullableFromJson(
  Object? apiRecurringSchedulesGetDayOfWeek, [
  enums.ApiRecurringSchedulesGetDayOfWeek? defaultValue,
]) {
  if (apiRecurringSchedulesGetDayOfWeek == null) {
    return null;
  }
  return enums.ApiRecurringSchedulesGetDayOfWeek.values.firstWhereOrNull(
          (e) => e.value == apiRecurringSchedulesGetDayOfWeek) ??
      defaultValue;
}

String apiRecurringSchedulesGetDayOfWeekExplodedListToJson(
    List<enums.ApiRecurringSchedulesGetDayOfWeek>?
        apiRecurringSchedulesGetDayOfWeek) {
  return apiRecurringSchedulesGetDayOfWeek?.map((e) => e.value!).join(',') ??
      '';
}

List<String> apiRecurringSchedulesGetDayOfWeekListToJson(
    List<enums.ApiRecurringSchedulesGetDayOfWeek>?
        apiRecurringSchedulesGetDayOfWeek) {
  if (apiRecurringSchedulesGetDayOfWeek == null) {
    return [];
  }

  return apiRecurringSchedulesGetDayOfWeek.map((e) => e.value!).toList();
}

List<enums.ApiRecurringSchedulesGetDayOfWeek>
    apiRecurringSchedulesGetDayOfWeekListFromJson(
  List? apiRecurringSchedulesGetDayOfWeek, [
  List<enums.ApiRecurringSchedulesGetDayOfWeek>? defaultValue,
]) {
  if (apiRecurringSchedulesGetDayOfWeek == null) {
    return defaultValue ?? [];
  }

  return apiRecurringSchedulesGetDayOfWeek
      .map((e) => apiRecurringSchedulesGetDayOfWeekFromJson(e.toString()))
      .toList();
}

List<enums.ApiRecurringSchedulesGetDayOfWeek>?
    apiRecurringSchedulesGetDayOfWeekNullableListFromJson(
  List? apiRecurringSchedulesGetDayOfWeek, [
  List<enums.ApiRecurringSchedulesGetDayOfWeek>? defaultValue,
]) {
  if (apiRecurringSchedulesGetDayOfWeek == null) {
    return defaultValue;
  }

  return apiRecurringSchedulesGetDayOfWeek
      .map((e) => apiRecurringSchedulesGetDayOfWeekFromJson(e.toString()))
      .toList();
}

String? apiRecurringSchedulesPostDayOfWeekNullableToJson(
    enums.ApiRecurringSchedulesPostDayOfWeek?
        apiRecurringSchedulesPostDayOfWeek) {
  return apiRecurringSchedulesPostDayOfWeek?.value;
}

String? apiRecurringSchedulesPostDayOfWeekToJson(
    enums.ApiRecurringSchedulesPostDayOfWeek
        apiRecurringSchedulesPostDayOfWeek) {
  return apiRecurringSchedulesPostDayOfWeek.value;
}

enums.ApiRecurringSchedulesPostDayOfWeek
    apiRecurringSchedulesPostDayOfWeekFromJson(
  Object? apiRecurringSchedulesPostDayOfWeek, [
  enums.ApiRecurringSchedulesPostDayOfWeek? defaultValue,
]) {
  return enums.ApiRecurringSchedulesPostDayOfWeek.values.firstWhereOrNull(
          (e) => e.value == apiRecurringSchedulesPostDayOfWeek) ??
      defaultValue ??
      enums.ApiRecurringSchedulesPostDayOfWeek.swaggerGeneratedUnknown;
}

enums.ApiRecurringSchedulesPostDayOfWeek?
    apiRecurringSchedulesPostDayOfWeekNullableFromJson(
  Object? apiRecurringSchedulesPostDayOfWeek, [
  enums.ApiRecurringSchedulesPostDayOfWeek? defaultValue,
]) {
  if (apiRecurringSchedulesPostDayOfWeek == null) {
    return null;
  }
  return enums.ApiRecurringSchedulesPostDayOfWeek.values.firstWhereOrNull(
          (e) => e.value == apiRecurringSchedulesPostDayOfWeek) ??
      defaultValue;
}

String apiRecurringSchedulesPostDayOfWeekExplodedListToJson(
    List<enums.ApiRecurringSchedulesPostDayOfWeek>?
        apiRecurringSchedulesPostDayOfWeek) {
  return apiRecurringSchedulesPostDayOfWeek?.map((e) => e.value!).join(',') ??
      '';
}

List<String> apiRecurringSchedulesPostDayOfWeekListToJson(
    List<enums.ApiRecurringSchedulesPostDayOfWeek>?
        apiRecurringSchedulesPostDayOfWeek) {
  if (apiRecurringSchedulesPostDayOfWeek == null) {
    return [];
  }

  return apiRecurringSchedulesPostDayOfWeek.map((e) => e.value!).toList();
}

List<enums.ApiRecurringSchedulesPostDayOfWeek>
    apiRecurringSchedulesPostDayOfWeekListFromJson(
  List? apiRecurringSchedulesPostDayOfWeek, [
  List<enums.ApiRecurringSchedulesPostDayOfWeek>? defaultValue,
]) {
  if (apiRecurringSchedulesPostDayOfWeek == null) {
    return defaultValue ?? [];
  }

  return apiRecurringSchedulesPostDayOfWeek
      .map((e) => apiRecurringSchedulesPostDayOfWeekFromJson(e.toString()))
      .toList();
}

List<enums.ApiRecurringSchedulesPostDayOfWeek>?
    apiRecurringSchedulesPostDayOfWeekNullableListFromJson(
  List? apiRecurringSchedulesPostDayOfWeek, [
  List<enums.ApiRecurringSchedulesPostDayOfWeek>? defaultValue,
]) {
  if (apiRecurringSchedulesPostDayOfWeek == null) {
    return defaultValue;
  }

  return apiRecurringSchedulesPostDayOfWeek
      .map((e) => apiRecurringSchedulesPostDayOfWeekFromJson(e.toString()))
      .toList();
}

String? apiPetServicesCategoryCategoryGetCategoryNullableToJson(
    enums.ApiPetServicesCategoryCategoryGetCategory?
        apiPetServicesCategoryCategoryGetCategory) {
  return apiPetServicesCategoryCategoryGetCategory?.value;
}

String? apiPetServicesCategoryCategoryGetCategoryToJson(
    enums.ApiPetServicesCategoryCategoryGetCategory
        apiPetServicesCategoryCategoryGetCategory) {
  return apiPetServicesCategoryCategoryGetCategory.value;
}

enums.ApiPetServicesCategoryCategoryGetCategory
    apiPetServicesCategoryCategoryGetCategoryFromJson(
  Object? apiPetServicesCategoryCategoryGetCategory, [
  enums.ApiPetServicesCategoryCategoryGetCategory? defaultValue,
]) {
  return enums.ApiPetServicesCategoryCategoryGetCategory.values
          .firstWhereOrNull(
              (e) => e.value == apiPetServicesCategoryCategoryGetCategory) ??
      defaultValue ??
      enums.ApiPetServicesCategoryCategoryGetCategory.swaggerGeneratedUnknown;
}

enums.ApiPetServicesCategoryCategoryGetCategory?
    apiPetServicesCategoryCategoryGetCategoryNullableFromJson(
  Object? apiPetServicesCategoryCategoryGetCategory, [
  enums.ApiPetServicesCategoryCategoryGetCategory? defaultValue,
]) {
  if (apiPetServicesCategoryCategoryGetCategory == null) {
    return null;
  }
  return enums.ApiPetServicesCategoryCategoryGetCategory.values
          .firstWhereOrNull(
              (e) => e.value == apiPetServicesCategoryCategoryGetCategory) ??
      defaultValue;
}

String apiPetServicesCategoryCategoryGetCategoryExplodedListToJson(
    List<enums.ApiPetServicesCategoryCategoryGetCategory>?
        apiPetServicesCategoryCategoryGetCategory) {
  return apiPetServicesCategoryCategoryGetCategory
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> apiPetServicesCategoryCategoryGetCategoryListToJson(
    List<enums.ApiPetServicesCategoryCategoryGetCategory>?
        apiPetServicesCategoryCategoryGetCategory) {
  if (apiPetServicesCategoryCategoryGetCategory == null) {
    return [];
  }

  return apiPetServicesCategoryCategoryGetCategory
      .map((e) => e.value!)
      .toList();
}

List<enums.ApiPetServicesCategoryCategoryGetCategory>
    apiPetServicesCategoryCategoryGetCategoryListFromJson(
  List? apiPetServicesCategoryCategoryGetCategory, [
  List<enums.ApiPetServicesCategoryCategoryGetCategory>? defaultValue,
]) {
  if (apiPetServicesCategoryCategoryGetCategory == null) {
    return defaultValue ?? [];
  }

  return apiPetServicesCategoryCategoryGetCategory
      .map((e) =>
          apiPetServicesCategoryCategoryGetCategoryFromJson(e.toString()))
      .toList();
}

List<enums.ApiPetServicesCategoryCategoryGetCategory>?
    apiPetServicesCategoryCategoryGetCategoryNullableListFromJson(
  List? apiPetServicesCategoryCategoryGetCategory, [
  List<enums.ApiPetServicesCategoryCategoryGetCategory>? defaultValue,
]) {
  if (apiPetServicesCategoryCategoryGetCategory == null) {
    return defaultValue;
  }

  return apiPetServicesCategoryCategoryGetCategory
      .map((e) =>
          apiPetServicesCategoryCategoryGetCategoryFromJson(e.toString()))
      .toList();
}

String? apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeNullableToJson(
    enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType?
        apiPetServicesAnimalTypeAnimalTypeGetAnimalType) {
  return apiPetServicesAnimalTypeAnimalTypeGetAnimalType?.value;
}

String? apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeToJson(
    enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType
        apiPetServicesAnimalTypeAnimalTypeGetAnimalType) {
  return apiPetServicesAnimalTypeAnimalTypeGetAnimalType.value;
}

enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType
    apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeFromJson(
  Object? apiPetServicesAnimalTypeAnimalTypeGetAnimalType, [
  enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType? defaultValue,
]) {
  return enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType.values
          .firstWhereOrNull((e) =>
              e.value == apiPetServicesAnimalTypeAnimalTypeGetAnimalType) ??
      defaultValue ??
      enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType
          .swaggerGeneratedUnknown;
}

enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType?
    apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeNullableFromJson(
  Object? apiPetServicesAnimalTypeAnimalTypeGetAnimalType, [
  enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType? defaultValue,
]) {
  if (apiPetServicesAnimalTypeAnimalTypeGetAnimalType == null) {
    return null;
  }
  return enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType.values
          .firstWhereOrNull((e) =>
              e.value == apiPetServicesAnimalTypeAnimalTypeGetAnimalType) ??
      defaultValue;
}

String apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeExplodedListToJson(
    List<enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType>?
        apiPetServicesAnimalTypeAnimalTypeGetAnimalType) {
  return apiPetServicesAnimalTypeAnimalTypeGetAnimalType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeListToJson(
    List<enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType>?
        apiPetServicesAnimalTypeAnimalTypeGetAnimalType) {
  if (apiPetServicesAnimalTypeAnimalTypeGetAnimalType == null) {
    return [];
  }

  return apiPetServicesAnimalTypeAnimalTypeGetAnimalType
      .map((e) => e.value!)
      .toList();
}

List<enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType>
    apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeListFromJson(
  List? apiPetServicesAnimalTypeAnimalTypeGetAnimalType, [
  List<enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType>? defaultValue,
]) {
  if (apiPetServicesAnimalTypeAnimalTypeGetAnimalType == null) {
    return defaultValue ?? [];
  }

  return apiPetServicesAnimalTypeAnimalTypeGetAnimalType
      .map((e) =>
          apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeFromJson(e.toString()))
      .toList();
}

List<enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType>?
    apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeNullableListFromJson(
  List? apiPetServicesAnimalTypeAnimalTypeGetAnimalType, [
  List<enums.ApiPetServicesAnimalTypeAnimalTypeGetAnimalType>? defaultValue,
]) {
  if (apiPetServicesAnimalTypeAnimalTypeGetAnimalType == null) {
    return defaultValue;
  }

  return apiPetServicesAnimalTypeAnimalTypeGetAnimalType
      .map((e) =>
          apiPetServicesAnimalTypeAnimalTypeGetAnimalTypeFromJson(e.toString()))
      .toList();
}

String? apiMissionsIdPaymentStatusGet$ResponseNullableToJson(
    enums.ApiMissionsIdPaymentStatusGet$Response?
        apiMissionsIdPaymentStatusGet$Response) {
  return apiMissionsIdPaymentStatusGet$Response?.value;
}

String? apiMissionsIdPaymentStatusGet$ResponseToJson(
    enums.ApiMissionsIdPaymentStatusGet$Response
        apiMissionsIdPaymentStatusGet$Response) {
  return apiMissionsIdPaymentStatusGet$Response.value;
}

enums.ApiMissionsIdPaymentStatusGet$Response
    apiMissionsIdPaymentStatusGet$ResponseFromJson(
  Object? apiMissionsIdPaymentStatusGet$Response, [
  enums.ApiMissionsIdPaymentStatusGet$Response? defaultValue,
]) {
  return enums.ApiMissionsIdPaymentStatusGet$Response.values.firstWhereOrNull(
          (e) => e.value == apiMissionsIdPaymentStatusGet$Response) ??
      defaultValue ??
      enums.ApiMissionsIdPaymentStatusGet$Response.swaggerGeneratedUnknown;
}

enums.ApiMissionsIdPaymentStatusGet$Response?
    apiMissionsIdPaymentStatusGet$ResponseNullableFromJson(
  Object? apiMissionsIdPaymentStatusGet$Response, [
  enums.ApiMissionsIdPaymentStatusGet$Response? defaultValue,
]) {
  if (apiMissionsIdPaymentStatusGet$Response == null) {
    return null;
  }
  return enums.ApiMissionsIdPaymentStatusGet$Response.values.firstWhereOrNull(
          (e) => e.value == apiMissionsIdPaymentStatusGet$Response) ??
      defaultValue;
}

String apiMissionsIdPaymentStatusGet$ResponseExplodedListToJson(
    List<enums.ApiMissionsIdPaymentStatusGet$Response>?
        apiMissionsIdPaymentStatusGet$Response) {
  return apiMissionsIdPaymentStatusGet$Response
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> apiMissionsIdPaymentStatusGet$ResponseListToJson(
    List<enums.ApiMissionsIdPaymentStatusGet$Response>?
        apiMissionsIdPaymentStatusGet$Response) {
  if (apiMissionsIdPaymentStatusGet$Response == null) {
    return [];
  }

  return apiMissionsIdPaymentStatusGet$Response.map((e) => e.value!).toList();
}

List<enums.ApiMissionsIdPaymentStatusGet$Response>
    apiMissionsIdPaymentStatusGet$ResponseListFromJson(
  List? apiMissionsIdPaymentStatusGet$Response, [
  List<enums.ApiMissionsIdPaymentStatusGet$Response>? defaultValue,
]) {
  if (apiMissionsIdPaymentStatusGet$Response == null) {
    return defaultValue ?? [];
  }

  return apiMissionsIdPaymentStatusGet$Response
      .map((e) => apiMissionsIdPaymentStatusGet$ResponseFromJson(e.toString()))
      .toList();
}

List<enums.ApiMissionsIdPaymentStatusGet$Response>?
    apiMissionsIdPaymentStatusGet$ResponseNullableListFromJson(
  List? apiMissionsIdPaymentStatusGet$Response, [
  List<enums.ApiMissionsIdPaymentStatusGet$Response>? defaultValue,
]) {
  if (apiMissionsIdPaymentStatusGet$Response == null) {
    return defaultValue;
  }

  return apiMissionsIdPaymentStatusGet$Response
      .map((e) => apiMissionsIdPaymentStatusGet$ResponseFromJson(e.toString()))
      .toList();
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
