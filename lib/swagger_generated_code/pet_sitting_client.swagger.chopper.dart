//Generated code

part of 'pet_sitting_client.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$PetSittingClient extends PetSittingClient {
  _$PetSittingClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = PetSittingClient;

  @override
  Future<Response<UserDTO>> _apiUsersIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/users/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserDTO, UserDTO>($request);
  }

  @override
  Future<Response<UserDTO>> _apiUsersIdPut({required UserUpdateDTO? body}) {
    final Uri $url = Uri.parse('/api/users/{id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserDTO, UserDTO>($request);
  }

  @override
  Future<Response<dynamic>> _apiUsersIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/users/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<RecurringScheduleDTO>> _apiRecurringSchedulesScheduleIdPut({
    required String? scheduleId,
    required DateTime? startTime,
    required DateTime? endTime,
  }) {
    final Uri $url = Uri.parse('/api/recurring-schedules/${scheduleId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'startTime': startTime,
      'endTime': endTime,
    };
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<RecurringScheduleDTO, RecurringScheduleDTO>($request);
  }

  @override
  Future<Response<dynamic>> _apiRecurringSchedulesScheduleIdDelete(
      {required String? scheduleId}) {
    final Uri $url = Uri.parse('/api/recurring-schedules/${scheduleId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PetServiceDTO>> _apiPetServicesIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/pet-services/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<PetServiceDTO, PetServiceDTO>($request);
  }

  @override
  Future<Response<PetServiceDTO>> _apiPetServicesIdPut({
    required String? id,
    required PetServiceDTO? body,
  }) {
    final Uri $url = Uri.parse('/api/pet-services/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PetServiceDTO, PetServiceDTO>($request);
  }

  @override
  Future<Response<dynamic>> _apiPetServicesIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/pet-services/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AnimalDTO>> _apiAnimalsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/animals/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AnimalDTO, AnimalDTO>($request);
  }

  @override
  Future<Response<AnimalDTO>> _apiAnimalsIdPut(
      {required AnimalUpdateDTO? body}) {
    final Uri $url = Uri.parse('/api/animals/{id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AnimalDTO, AnimalDTO>($request);
  }

  @override
  Future<Response<dynamic>> _apiAnimalsIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/api/animals/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserDTO>> _apiUsersPost({required UserCreationDTO? body}) {
    final Uri $url = Uri.parse('/api/users');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserDTO, UserDTO>($request);
  }

  @override
  Future<Response<UserDTO>> _apiUsersVetAssistantPost(
      {required UserCreationDTO? body}) {
    final Uri $url = Uri.parse('/api/users/vet-assistant');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserDTO, UserDTO>($request);
  }

  @override
  Future<Response<List<RecurringScheduleDTO>>> _apiRecurringSchedulesGet({
    required String? vetAssistantId,
    required String? dayOfWeek,
  }) {
    final Uri $url = Uri.parse('/api/recurring-schedules');
    final Map<String, dynamic> $params = <String, dynamic>{
      'vetAssistantId': vetAssistantId,
      'dayOfWeek': dayOfWeek,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<List<RecurringScheduleDTO>, RecurringScheduleDTO>($request);
  }

  @override
  Future<Response<RecurringScheduleDTO>> _apiRecurringSchedulesPost({
    required String? vetAssistantId,
    required String? dayOfWeek,
    required DateTime? startTime,
    required DateTime? endTime,
  }) {
    final Uri $url = Uri.parse('/api/recurring-schedules');
    final Map<String, dynamic> $params = <String, dynamic>{
      'vetAssistantId': vetAssistantId,
      'dayOfWeek': dayOfWeek,
      'startTime': startTime,
      'endTime': endTime,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<RecurringScheduleDTO, RecurringScheduleDTO>($request);
  }

  @override
  Future<Response<List<PetServiceDTO>>> _apiPetServicesGet() {
    final Uri $url = Uri.parse('/api/pet-services');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PetServiceDTO>, PetServiceDTO>($request);
  }

  @override
  Future<Response<PetServiceDTO>> _apiPetServicesPost(
      {required PetServiceDTO? body}) {
    final Uri $url = Uri.parse('/api/pet-services');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PetServiceDTO, PetServiceDTO>($request);
  }

  @override
  Future<Response<MissionDTO>> _apiMissionsPost(
      {required MissionCreationDTO? body}) {
    final Uri $url = Uri.parse('/api/missions');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<MissionDTO, MissionDTO>($request);
  }

  @override
  Future<Response<MissionDTO>> _apiMissionsStatusMissionIdStartPost(
      {required String? missionId}) {
    final Uri $url = Uri.parse('/api/missions/status/${missionId}/start');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<MissionDTO, MissionDTO>($request);
  }

  @override
  Future<Response<MissionDTO>> _apiMissionsStatusMissionIdConfirmPost(
      {required String? missionId}) {
    final Uri $url = Uri.parse('/api/missions/status/${missionId}/confirm');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<MissionDTO, MissionDTO>($request);
  }

  @override
  Future<Response<MissionDTO>> _apiMissionsStatusMissionIdCompletePost(
      {required String? missionId}) {
    final Uri $url = Uri.parse('/api/missions/status/${missionId}/complete');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<MissionDTO, MissionDTO>($request);
  }

  @override
  Future<Response<AnimalDTO>> _apiAnimalsPost(
      {required AnimalCreateDTO? body}) {
    final Uri $url = Uri.parse('/api/animals');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AnimalDTO, AnimalDTO>($request);
  }

  @override
  Future<Response<UserDTO>> _apiUsersMeGet() {
    final Uri $url = Uri.parse('/api/users/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserDTO, UserDTO>($request);
  }

  @override
  Future<Response<UserDTO>> _apiUsersFirebaseIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/users/firebase/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserDTO, UserDTO>($request);
  }

  @override
  Future<Response<UserDTO>> _apiUsersEmailGet({required String? email}) {
    final Uri $url = Uri.parse('/api/users/email');
    final Map<String, dynamic> $params = <String, dynamic>{'email': email};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<UserDTO, UserDTO>($request);
  }

  @override
  Future<Response<List<UserDTO>>> _apiUsersAllGet() {
    final Uri $url = Uri.parse('/api/users/all');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<UserDTO>, UserDTO>($request);
  }

  @override
  Future<Response<List<PlaceSuggestion>>> _apiPlacesSuggestionsGet(
      {required String? query}) {
    final Uri $url = Uri.parse('/api/places/suggestions');
    final Map<String, dynamic> $params = <String, dynamic>{'query': query};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<PlaceSuggestion>, PlaceSuggestion>($request);
  }

  @override
  Future<Response<PlaceDetails>> _apiPlacesDetailsPlaceIdGet(
      {required String? placeId}) {
    final Uri $url = Uri.parse('/api/places/details/${placeId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<PlaceDetails, PlaceDetails>($request);
  }

  @override
  Future<Response<List<PetServiceDTO>>> _apiPetServicesCategoryCategoryGet(
      {required String? category}) {
    final Uri $url = Uri.parse('/api/pet-services/category/${category}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PetServiceDTO>, PetServiceDTO>($request);
  }

  @override
  Future<Response<List<PetServiceDTO>>> _apiPetServicesAnimalTypeAnimalTypeGet(
      {required String? animalType}) {
    final Uri $url = Uri.parse('/api/pet-services/animal-type/${animalType}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PetServiceDTO>, PetServiceDTO>($request);
  }

  @override
  Future<Response<MissionDTO>> _apiMissionsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/missions/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MissionDTO, MissionDTO>($request);
  }

  @override
  Future<Response<String>> _apiMissionsIdPaymentStatusGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/missions/${id}/payment-status');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<MissionDTO>>> _apiMissionsVetAssistantVetAssistantIdGet(
      {required String? vetAssistantId}) {
    final Uri $url = Uri.parse('/api/missions/vet-assistant/${vetAssistantId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<MissionDTO>, MissionDTO>($request);
  }

  @override
  Future<Response<List<MissionDTO>>> _apiMissionsDateRangeGet({
    required String? startDate,
    required String? endDate,
  }) {
    final Uri $url = Uri.parse('/api/missions/date-range');
    final Map<String, dynamic> $params = <String, dynamic>{
      'startDate': startDate,
      'endDate': endDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<MissionDTO>, MissionDTO>($request);
  }

  @override
  Future<Response<List<MissionDTO>>> _apiMissionsClientClientIdGet(
      {required String? clientId}) {
    final Uri $url = Uri.parse('/api/missions/client/${clientId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<MissionDTO>, MissionDTO>($request);
  }

  @override
  Future<Response<List<AnimalDTO>>> _apiAnimalsOwnerOwnerIdGet(
      {required String? ownerId}) {
    final Uri $url = Uri.parse('/api/animals/owner/${ownerId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<AnimalDTO>, AnimalDTO>($request);
  }
}
