import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/di/injection.dart';
import 'package:petsitting/features/auth/presentation/bloc/address/address_cubit.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:searchfield/searchfield.dart';

class AddressSearchWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode addressFocusNode;
  final Function(PlaceDetails) onAddressValidated;

  const AddressSearchWidget({
    super.key,
    required this.controller,
    required this.addressFocusNode,
    required this.onAddressValidated,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddressCubit(getIt()),
      child: BlocListener<AddressCubit, AddressState>(
        listener: (context, state) {
          if (state.placeDetails != null) {
            onAddressValidated(state.placeDetails!);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<AddressCubit, AddressState>(
              builder: (context, state) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    height: 50,
                    child: SearchField<PlaceSuggestion>(
                      controller: controller,
                      focusNode: addressFocusNode,
                      suggestions: state.suggestions
                          .map((suggestion) => SearchFieldListItem<PlaceSuggestion>(
                                suggestion.description,
                                item: suggestion,
                              ))
                          .toList(),
                      searchInputDecoration: SearchInputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 16),
                        hintText: 'Recherchez une adresse',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).dividerColor, width: 1.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 1.5),
                        ),
                      ),
                      suggestionsDecoration: SuggestionDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
                      ),
                      onSearchTextChanged: (query) {
                        if (query.isNotEmpty) {
                          EasyDebounce.debounce(
                            'search_address_suggestion',
                            const Duration(milliseconds: 800),
                            () => context.read<AddressCubit>().searchAddressSuggestions(query),
                          );
                        }
                        return null;
                      },
                      onSuggestionTap: (suggestion) {
                        controller.text = suggestion.searchKey;
                        context.read<AddressCubit>().validateAddress(suggestion.item!);
                      },
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 8),
            BlocBuilder<AddressCubit, AddressState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const CircularProgressIndicator();
                } else if (state.errorMessage != null) {
                  return Text(
                    state.errorMessage!,
                    style: const TextStyle(color: Colors.red),
                  );
                } else if (state.placeDetails != null) {
                  return const Text(
                    "Adresse validée !",
                    style: TextStyle(color: Colors.green),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
