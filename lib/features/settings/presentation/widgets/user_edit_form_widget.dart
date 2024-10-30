import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/features/auth/presentation/widgets/address_search_widget.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UserEditFormWidget extends HookWidget {
  final UsersUser user;
  final Function(UsersUpdateUserRequest) onUserUpdated;

  const UserEditFormWidget({
    super.key,
    required this.user,
    required this.onUserUpdated,
  });

  FormGroup buildForm() => fb.group({
        'firstname': FormControl<String>(
          value: user.firstname,
          validators: [Validators.required],
        ),
        'lastname': FormControl<String>(
          value: user.lastname,
          validators: [Validators.required],
        ),
        'phone': FormControl<String>(
          value: user.phone,
          validators: [
            Validators.required,
            Validators.pattern(r'^\+?[0-9]{10,14}$'),
          ],
        ),
        'address': FormControl<PlaceDetails>(
          value: user.address,
          validators: [Validators.required],
        ),
      });

  @override
  Widget build(BuildContext context) {
    final form = useMemoized(() => buildForm());
    final addressController = useTextEditingController(text: user.address!.formattedAddress);
    final addressFocusNode = useFocusNode();

    return ReactiveForm(
      formGroup: form,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReactiveTextField(
              formControlName: 'firstname',
              decoration: const InputDecoration(
                labelText: 'Prénom',
              ),
              validationMessages: {
                'required': (error) => 'Ce champ est requis',
              },
            ),
            const SizedBox(height: 16),
            ReactiveTextField(
              formControlName: 'lastname',
              decoration: const InputDecoration(
                labelText: 'Nom',
              ),
              validationMessages: {
                'required': (error) => 'Ce champ est requis',
              },
            ),
            const SizedBox(height: 16),
            ReactiveTextField(
              formControlName: 'phone',
              decoration: const InputDecoration(
                labelText: 'Téléphone',
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
                form.control('address').value = PlaceDetails(
                  name: placeDetails.name,
                  formattedAddress: placeDetails.formattedAddress,
                  latitude: placeDetails.latitude,
                  longitude: placeDetails.longitude,
                );
              },
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ReactiveFormConsumer(
                builder: (context, form, child) {
                  return ElevatedButton(
                    onPressed: form.valid ? () => _submitForm(form) : null,
                    child: const Text('Mettre à jour le profil'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm(FormGroup form) {
    if (form.valid) {
      final updatedUser = UsersUpdateUserRequest(
        id: user.id,
        firebaseUid: user.firebaseId ?? '',
        firstname: form.control('firstname').value,
        lastname: form.control('lastname').value,
        email: user.email,
        phone: form.control('phone').value,
        address: form.control('address').value,
      );
      onUserUpdated(updatedUser);
    }
  }
}
