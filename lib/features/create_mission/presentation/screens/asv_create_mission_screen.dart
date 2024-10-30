import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:petsitting/core/error/bloc/error_bloc.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/features/auth/presentation/widgets/user_creation_form_widget.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/create_mission/create_mission_bloc.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/user_creation/user_creation_cubit.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/user_search/user_search_cubit.dart';
import 'package:petsitting/features/create_mission/widgets/user_search_field.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AsvCreateMissionScreen extends HookWidget {
  const AsvCreateMissionScreen({super.key});

  FormGroup buildForm() => FormGroup({
        'clientId': FormControl<String>(validators: [Validators.required]),
        'beginDate': FormControl<DateTime>(validators: [Validators.required]),
        'endDate': FormControl<DateTime>(validators: [Validators.required]),
        'notes': FormControl<String>(),
        'price': FormControl<double>(validators: [Validators.required, Validators.min(0)]),
        'services': FormControl<List<MissionsAnimalServiceWithDetails>>(value: []),
      });

  @override
  Widget build(BuildContext context) {
    final form = useMemoized(() => buildForm());
    final selectedUser = useState<UsersUser?>(null);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Créer une mission',
      ),
      body: BlocConsumer<CreateMissionBloc, CreateMissionState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (mission) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Mission créée avec succès')),
              );
              Navigator.of(context).pop();
            },
            failure: (error) {
              context.read<ErrorBloc>().handleErrorMessage(error);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return ReactiveForm(
            formGroup: form,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      BlocBuilder<UserSearchCubit, UserSearchState>(
                        builder: (context, state) {
                          final users = state.maybeWhen(
                            loaded: (users) => users,
                            orElse: () => <UsersUser>[],
                          );
                          return UserSearchField(
                            onUserSelected: (UsersUser user) {
                              selectedUser.value = user;
                              form.control('clientId').value = user.id;
                            },
                            users: users,
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      ReactiveDateTimePicker(
                        formControlName: 'beginDate',
                        type: ReactiveDatePickerFieldType.dateTime,
                        decoration: const InputDecoration(
                          labelText: 'Date et heure de début',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ReactiveDateTimePicker(
                        formControlName: 'endDate',
                        type: ReactiveDatePickerFieldType.dateTime,
                        decoration: const InputDecoration(
                          labelText: 'Date et heure de fin',
                          border: OutlineInputBorder(),
                        ),
                        validationMessages: {
                          'required': (error) => 'Ce champ est requis',
                          'mustBeAfterStart': (error) => 'La date de fin doit être après la date de début',
                        },
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
                      ReactiveTextField(
                        formControlName: 'price',
                        decoration: const InputDecoration(
                          labelText: 'Prix',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validationMessages: {
                          'required': (error) => 'Veuillez entrer le prix',
                          'min': (error) => 'Le prix doit être positif',
                        },
                      ),
                      const SizedBox(height: 16),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        child: const Text('Ajouter un nouveau client'),
                        onPressed: () => _showAddCustomerDialog(context),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ReactiveFormConsumer(
                    builder: (context, form, child) {
                      return ElevatedButton(
                        onPressed: form.valid
                            ? () {
                                //final missionCreationDTO = MissionCreationDTO(
                                //  clientId: form.control('clientId').value,
                                //  startTime: form.control('beginDate').value,
                                //  endTime: form.control('endDate').value,
                                //  notes: form.control('notes').value,
                                //  missionAnimalServices: form.control('services').value,
                                //  // TODO (Add place details)
                                //  location: const PlaceDetailsDTO(
                                //    name: "name",
                                //    formattedAddress: "formattedAddress",
                                //    latitude: 123,
                                //    longitude: 456,
                                //  ),
                                //);
                                //context.read<CreateMissionBloc>().add(
                                //      CreateMissionEvent.createMission(missionCreationDTO),
                                //    );
                              }
                            : null,
                        child: const Text('Créer la mission'),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showAddCustomerDialog(BuildContext context) {
    showBarModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return UserCreationFormWidget(
          onUserCreated: (user) {
            context.read<UserCreationCubit>().createUser(user);
          },
        );
      },
    );
  }
}
