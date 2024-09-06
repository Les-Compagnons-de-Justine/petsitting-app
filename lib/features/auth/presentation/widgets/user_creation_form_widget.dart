import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/error/bloc/error_bloc.dart';
import 'package:petsitting/features/auth/presentation/widgets/address_search_widget.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UserCreationFormWidget extends HookWidget {
  final Function(UserCreationDTO) onUserCreated;

  const UserCreationFormWidget({
    super.key,
    required this.onUserCreated,
  });

  FormGroup buildForm() => fb.group({
        'firstname': FormControl<String>(
          validators: [Validators.required],
        ),
        'lastname': FormControl<String>(
          validators: [Validators.required],
        ),
        'phone': FormControl<String>(
          validators: [
            Validators.required,
            Validators.pattern(r'^\+?[0-9]{10,14}$'),
          ],
        ),
        'address': FormControl<PlaceDetails>(),
      });

  @override
  Widget build(BuildContext context) {
    final form = useMemoized(() => buildForm());
    final addressController = useTextEditingController();
    final addressFocusNode = useFocusNode();

    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: MediaQuery.of(context).padding.top + 16,
        bottom: MediaQuery.of(context).padding.bottom + 30,
      ),
      child: ReactiveForm(
        formGroup: form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  ReactiveTextField(
                    formControlName: 'firstname',
                    decoration: const InputDecoration(
                      hintText: 'Prénom',
                    ),
                    validationMessages: {
                      'required': (error) => 'Ce champ est requis',
                    },
                  ),
                  const SizedBox(height: 16),
                  ReactiveTextField(
                    formControlName: 'lastname',
                    decoration: const InputDecoration(
                      hintText: 'Nom',
                    ),
                    validationMessages: {
                      'required': (error) => 'Ce champ est requis',
                    },
                  ),
                  const SizedBox(height: 16),
                  ReactiveTextField(
                    formControlName: 'phone',
                    decoration: const InputDecoration(
                      hintText: 'Téléphone',
                    ),
                    keyboardType: TextInputType.phone,
                    validationMessages: {
                      'required': (error) => 'Ce champ est requis',
                      'pattern': (error) => 'Veuillez entrer un numéro de téléphone valide',
                    },
                  ),
                  const SizedBox(height: 16),
                  AddressSearchWidget(
                    controller: addressController,
                    addressFocusNode: addressFocusNode,
                    onAddressValidated: (placeDetails) {
                      form.control('address').value = placeDetails;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ReactiveFormConsumer(
              builder: (context, form, child) {
                return TextButton(
                  child: const Text('Valider'),
                  onPressed: () {
                    if (form.valid) {
                      final formData = form.value;
                      final address = formData['address'] as PlaceDetails?;
                      if (address == null) {
                        context.read<ErrorBloc>().handleErrorMessage('Veuillez entrer une adresse valide');
                        return;
                      }
                      final newUser = UserCreationDTO(
                        firebaseUid: '', // This should be handled by your backend
                        lastname: formData['lastname'] as String,
                        firstname: formData['firstname'] as String,
                        email: '',
                        address: PlaceDetailsDTO(
                          name: address.name,
                          formattedAddress: address.formattedAddress,
                          latitude: address.latitude,
                          longitude: address.longitude,
                        ),
                        phone: formData['phone'] as String,
                        role: UserCreationDTORole.$client,
                        isVerified: false,
                        registrationDate: DateTime.now(),
                      );
                      onUserCreated(newUser);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
