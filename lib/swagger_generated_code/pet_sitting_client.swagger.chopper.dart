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
  Future<Response<AnimalWithOwner>> _apiAnimalsPut(
      {required AnimalAnimal? animal}) {
    final Uri $url = Uri.parse('/api/animals');
    final $body = animal;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AnimalWithOwner, AnimalWithOwner>($request);
  }

  @override
  Future<Response<AnimalWithOwner>> _apiAnimalsPost(
      {required AnimalAnimal? animal}) {
    final Uri $url = Uri.parse('/api/animals');
    final $body = animal;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AnimalWithOwner, AnimalWithOwner>($request);
  }

  @override
  Future<Response<List<AnimalWithOwner>>> _apiAnimalsOwnerOwnerIdGet(
      {required String? ownerId}) {
    final Uri $url = Uri.parse('/api/animals/owner/${ownerId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<AnimalWithOwner>, AnimalWithOwner>($request);
  }

  @override
  Future<Response<AnimalWithOwner>> _apiAnimalsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/animals/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AnimalWithOwner, AnimalWithOwner>($request);
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
  Future<Response<MissionsMissionWithDetails>> _apiMissionsPost(
      {required MissionsCreateMissionRequest? mission}) {
    final Uri $url = Uri.parse('/api/missions');
    final $body = mission;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<MissionsMissionWithDetails, MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<List<MissionsMission>>> _apiMissionsClientClientIdGet(
      {required String? clientId}) {
    final Uri $url = Uri.parse('/api/missions/client/${clientId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<MissionsMission>, MissionsMission>($request);
  }

  @override
  Future<Response<List<MissionsMissionWithDetails>>>
      _apiMissionsClientClientIdDetailsGet({required String? clientId}) {
    final Uri $url = Uri.parse('/api/missions/client/${clientId}/details');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<MissionsMissionWithDetails>,
        MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<List<MissionsMissionWithDetails>>> _apiMissionsDateRangeGet({
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
    return client.send<List<MissionsMissionWithDetails>,
        MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<List<MissionsMissionWithDetails>>>
      _apiMissionsVetAssistantVetAssistantIdGet(
          {required String? vetAssistantId}) {
    final Uri $url = Uri.parse('/api/missions/vet-assistant/${vetAssistantId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<MissionsMissionWithDetails>,
        MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<MissionsMissionWithDetails>> _apiMissionsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/missions/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<MissionsMissionWithDetails, MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<MissionsMissionWithDetails>>
      _apiMissionsIdAssignVetAssistantIdPut({
    required String? id,
    required String? vetAssistantId,
  }) {
    final Uri $url = Uri.parse('/api/missions/${id}/assign/${vetAssistantId}');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client
        .send<MissionsMissionWithDetails, MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<MissionsMissionWithDetails>> _apiMissionsIdCancelPut(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/missions/${id}/cancel');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client
        .send<MissionsMissionWithDetails, MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<MissionsMissionWithDetails>> _apiMissionsIdCompletePut(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/missions/${id}/complete');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client
        .send<MissionsMissionWithDetails, MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<MissionsMissionWithDetails>> _apiMissionsIdConfirmPut(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/missions/${id}/confirm');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client
        .send<MissionsMissionWithDetails, MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<MissionsMissionWithDetails>> _apiMissionsIdMarkPaidPut(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/missions/${id}/mark-paid');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client
        .send<MissionsMissionWithDetails, MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<MissionsMissionWithDetails>> _apiMissionsIdStatusPut({
    required String? id,
    required MissionsUpdateMissionStatusRequest? status,
  }) {
    final Uri $url = Uri.parse('/api/missions/${id}/status');
    final $body = status;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<MissionsMissionWithDetails, MissionsMissionWithDetails>($request);
  }

  @override
  Future<Response<List<PetServicesPetService>>> _apiPetServicesGet() {
    final Uri $url = Uri.parse('/api/pet-services');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<PetServicesPetService>, PetServicesPetService>($request);
  }

  @override
  Future<Response<PetServicesPetService>> _apiPetServicesPost(
      {required PetServicesPetService? service}) {
    final Uri $url = Uri.parse('/api/pet-services');
    final $body = service;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PetServicesPetService, PetServicesPetService>($request);
  }

  @override
  Future<Response<List<PetServicesPetService>>>
      _apiPetServicesAnimalTypeAnimalTypeGet({required String? animalType}) {
    final Uri $url = Uri.parse('/api/pet-services/animal-type/${animalType}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<PetServicesPetService>, PetServicesPetService>($request);
  }

  @override
  Future<Response<List<PetServicesPetService>>>
      _apiPetServicesCategoryCategoryGet({required String? category}) {
    final Uri $url = Uri.parse('/api/pet-services/category/${category}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<PetServicesPetService>, PetServicesPetService>($request);
  }

  @override
  Future<Response<PetServicesPetService>> _apiPetServicesIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/pet-services/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<PetServicesPetService, PetServicesPetService>($request);
  }

  @override
  Future<Response<PetServicesPetService>> _apiPetServicesIdPut({
    required String? id,
    required PetServicesPetService? service,
  }) {
    final Uri $url = Uri.parse('/api/pet-services/${id}');
    final $body = service;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PetServicesPetService, PetServicesPetService>($request);
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
  Future<Response<List<UsersUser>>> _apiUsersGet() {
    final Uri $url = Uri.parse('/api/users');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<UsersUser>, UsersUser>($request);
  }

  @override
  Future<Response<UsersUser>> _apiUsersPost(
      {required UsersCreateUserRequest? user}) {
    final Uri $url = Uri.parse('/api/users');
    final $body = user;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UsersUser, UsersUser>($request);
  }

  @override
  Future<Response<UsersUser>> _apiUsersEmailEmailGet({required String? email}) {
    final Uri $url = Uri.parse('/api/users/email/${email}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UsersUser, UsersUser>($request);
  }

  @override
  Future<Response<UsersUser>> _apiUsersMeGet() {
    final Uri $url = Uri.parse('/api/users/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UsersUser, UsersUser>($request);
  }

  @override
  Future<Response<UsersUser>> _apiUsersIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/users/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UsersUser, UsersUser>($request);
  }

  @override
  Future<Response<UsersUser>> _apiUsersIdPut({
    required String? id,
    required UsersUpdateUserRequest? user,
  }) {
    final Uri $url = Uri.parse('/api/users/${id}');
    final $body = user;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UsersUser, UsersUser>($request);
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
}
