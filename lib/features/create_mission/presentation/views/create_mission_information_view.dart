import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/core/utils/user_value_accessor.dart';
import 'package:petsitting/features/auth/presentation/widgets/address_search_widget.dart';
import 'package:petsitting/features/create_mission/presentation/models/mission_creation.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CreateMissionInformationView extends HookWidget {
  final MissionCreation initialData;
  final Function(MissionCreation) onMissionInformationSubmitted;

  const CreateMissionInformationView({
    super.key,
    required this.initialData,
    required this.onMissionInformationSubmitted,
  });

  FormGroup buildForm(UserDTO? currentUser, MissionCreation initialData) {
    return fb.group({
      'customer': FormControl<UserDTO>(validators: [Validators.required], value: currentUser, disabled: true),
      'startDate': FormControl<DateTime>(validators: [Validators.required], value: initialData.startDate),
      'endDate': FormControl<DateTime>(validators: [Validators.required], value: initialData.endDate),
      'notes': FormControl<String>(value: initialData.notes),
      'location': FormControl<PlaceDetailsDTO>(validators: [Validators.required], value: initialData.location),
    });
  }

  @override
  Widget build(BuildContext context) {
    final form = useMemoized(() => buildForm(UserManager().currentUser, initialData));
    final addressController = useTextEditingController(text: initialData.location?.formattedAddress);
    final addressFocusNode = useFocusNode();

    return ReactiveForm(
      formGroup: form,
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ReactiveTextField<UserDTO>(
            formControlName: 'customer',
            readOnly: true,
            valueAccessor: UserValueAccessor(),
            decoration: const InputDecoration(
              labelText: 'Client',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ReactiveDateTimePicker(
            formControlName: 'startDate',
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)),
            type: ReactiveDatePickerFieldType.date,
            decoration: const InputDecoration(
              labelText: 'Date de début',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.calendar_today),
            ),
          ),
          const SizedBox(height: 16),
          ReactiveDateTimePicker(
            formControlName: 'endDate',
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)),
            type: ReactiveDatePickerFieldType.date,
            decoration: const InputDecoration(
              labelText: 'Date de fin',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.calendar_today),
            ),
          ),
          const SizedBox(height: 16),
          ReactiveTextField(
            formControlName: 'notes',
            decoration: const InputDecoration(
              labelText: 'Notes',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 16),
          AddressSearchWidget(
            controller: addressController,
            addressFocusNode: addressFocusNode,
            onAddressValidated: (placeDetails) {
              form.control('location').value = PlaceDetailsDTO(
                name: placeDetails.name,
                formattedAddress: placeDetails.formattedAddress,
                latitude: placeDetails.latitude,
                longitude: placeDetails.longitude,
              );
            },
          ),
          const SizedBox(height: 16),
          ReactiveFormConsumer(
            builder: (context, form, child) {
              return ElevatedButton(
                onPressed: form.valid ? () => _submitForm(context, form) : null,
                child: const Text('Suivant: Ajouter des services'),
              );
            },
          ),
        ],
      ),
    );
  }

  void _submitForm(BuildContext context, FormGroup form) {
    final missionInformation = MissionCreation(
      customer: form.control('customer').value,
      startDate: form.control('startDate').value,
      endDate: form.control('endDate').value,
      notes: form.control('notes').value,
      location: form.control('location').value,
    );

    onMissionInformationSubmitted(missionInformation);
  }
}
