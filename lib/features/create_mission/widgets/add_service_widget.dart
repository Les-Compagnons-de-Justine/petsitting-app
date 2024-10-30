import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_cubit.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_state.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_cubit.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_state.dart';
import 'package:petsitting/core/utils/decimal_value_accessor.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddServiceWidget extends HookWidget {
  final Function(MissionsAnimalServiceWithDetails) onAddService;
  final String userId;
  final DateTime missionDate;

  const AddServiceWidget({
    super.key,
    required this.onAddService,
    required this.userId,
    required this.missionDate,
  });

  FormGroup buildForm() {
    return FormGroup({
      'animal': FormControl<AnimalWithOwner>(validators: [Validators.required]),
      'service': FormControl<PetServicesPetService>(
        validators: [Validators.required],
        disabled: true,
      ),
      "durationMinutes": FormControl<int>(
        validators: [
          Validators.required,
          Validators.min(0),
        ],
      ),
      'price': FormControl<double>(
        validators: [
          Validators.required,
          Validators.min(0),
        ],
      ),
    });
  }

  @override
  Widget build(BuildContext context) {
    final form = useMemoized(() => buildForm());

    useEffect(() {
      context.read<AnimalListCubit>().loadAnimals(userId);
      return null;
    }, []);

    return BlocBuilder<PetServiceCubit, PetServiceState>(
      builder: (context, petServiceState) {
        return BlocBuilder<AnimalListCubit, AnimalListState>(
          builder: (context, animalState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ReactiveForm(
                formGroup: form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ... (existing form fields)
                    const SizedBox(height: 16),
                    _buildAnimalDropdown(animalState, onChanged: (control) {
                      if (control.value != null) {
                        form.control('service').markAsEnabled();
                        form.control('durationMinutes').markAsEnabled();
                        form.control('price').markAsEnabled();
                      }
                    }),
                    const SizedBox(height: 16),
                    _buildServiceDropdown(petServiceState, form),
                    const SizedBox(height: 16),
                    ReactiveTextField(
                      formControlName: 'durationMinutes',
                      decoration: const InputDecoration(
                        labelText: 'Durée (en minutes)',
                      ),
                      keyboardType: TextInputType.number,
                      validationMessages: {
                        'required': (error) => 'Ce champ est requis',
                        'number': (error) => 'Veuillez entrer un nombre',
                        'min': (error) => 'La durée doit être supérieure à 0',
                      },
                    ),
                    const SizedBox(height: 16),
                    ReactiveTextField<double>(
                      formControlName: 'price',
                      valueAccessor: DecimalValueAccessor(),
                      decoration: const InputDecoration(
                        labelText: 'Prix',
                        suffixIcon: Icon(Icons.euro),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      validationMessages: {
                        'required': (error) => 'Ce champ est requis',
                        'number': (error) => 'Veuillez entrer un nombre',
                      },
                    ),
                    const SizedBox(height: 24),
                    ReactiveFormConsumer(
                      builder: (context, form, child) {
                        return ElevatedButton(
                          onPressed: form.valid ? () => _submitForm(context, form) : null,
                          child: const Text('Ajouter le service'),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _submitForm(BuildContext context, FormGroup form) {
    if (form.valid) {
      final selectedAnimal = form.control('animal').value as AnimalWithOwner;
      final selectedService = form.control('service').value as PetServicesPetService;
      final price = form.control('price').value as double;

      final missionAnimalService = MissionsAnimalServiceWithDetails(
        animal: selectedAnimal,
        petService: selectedService,
        date: missionDate.toIso8601String(),
        price: price,
      );

      onAddService(missionAnimalService);
      Navigator.of(context).pop();
    }
  }

  Widget _buildAnimalDropdown(
    AnimalListState state, {
    Function(FormControl<AnimalWithOwner>)? onChanged,
  }) {
    if (state.status == AnimalListStatus.error) {
      return const Text('Erreur lors du chargement des animaux.');
    } else if (state.status == AnimalListStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ReactiveDropdownField<AnimalWithOwner>(
      formControlName: 'animal',
      onChanged: onChanged,
      items: state.animals
          .map((animal) => DropdownMenuItem(
                value: animal,
                child: Text(animal.name!),
              ))
          .toList(),
      decoration: const InputDecoration(
        labelText: 'Sélectionnez un animal',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildServiceDropdown(PetServiceState state, FormGroup form) {
    return state.maybeWhen(
      loaded: (services, _) => ReactiveDropdownField<PetServicesPetService>(
        formControlName: 'service',
        items: services
            .map((service) => DropdownMenuItem(
                  value: service,
                  child: Text(service.name!),
                ))
            .toList(),
        decoration: const InputDecoration(
          labelText: 'Sélectionnez un service',
          border: OutlineInputBorder(),
        ),
        onChanged: (service) {
          if (service.value != null) {
            form.control('durationMinutes').value = service.value!.durationMinutes;
            form.control('price').value = service.value!.basePrice;
          }
        },
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (message) => Text('Erreur: $message'),
      orElse: () => const SizedBox(),
    );
  }
}
