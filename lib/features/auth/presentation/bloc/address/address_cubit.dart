import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart' as client;

class AddressState {
  final bool isLoading;
  final List<client.PlaceSuggestion> suggestions;
  final String? errorMessage;
  final client.PlaceDetails? placeDetails;

  AddressState({
    this.isLoading = false,
    this.suggestions = const [],
    this.errorMessage,
    this.placeDetails,
  });
}

class AddressCubit extends Cubit<AddressState> {
  AddressCubit(this.bffClient) : super(AddressState());

  final client.PetSittingClient bffClient;

  // Fonction pour rechercher des suggestions d'adresses
  Future<void> searchAddressSuggestions(String query) async {
    emit(AddressState(isLoading: true, placeDetails: null));

    try {
      final response = await bffClient.apiPlacesSuggestionsGet(query: query);

      if (response.statusCode == 200) {
        final data = response.bodyOrThrow;
        emit(AddressState(suggestions: data));
      } else {
        emit(AddressState(errorMessage: "Erreur lors de la récupération des suggestions."));
      }
    } catch (e) {
      emit(AddressState(errorMessage: "Exception: $e"));
    }
  }

  // Fonction pour valider une adresse
  Future<void> validateAddress(client.PlaceSuggestion suggestion) async {
    emit(AddressState(isLoading: true));

    try {
      final response = await bffClient.apiPlacesDetailsPlaceIdGet(placeId: suggestion.placeId);

      if (response.statusCode == 200) {
        final data = response.bodyOrThrow;
        emit(AddressState(placeDetails: data, isLoading: false));
      } else {
        emit(AddressState(errorMessage: "Erreur lors de la validation de l'adresse."));
      }
    } catch (e) {
      emit(AddressState(errorMessage: "Exception: $e"));
    }
  }
}
