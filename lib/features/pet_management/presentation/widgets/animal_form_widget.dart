import 'package:flutter/material.dart';
import 'package:petsitting/core/extensions/animal_extension.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AnimalFormWidget extends StatelessWidget {
  final AnimalDTO? animal;
  final String ownerId;
  final void Function(AnimalCreateDTO)? onCreate;
  final void Function(AnimalUpdateDTO)? onUpdate;

  const AnimalFormWidget({
    super.key,
    required this.ownerId,
    this.animal,
    this.onCreate,
    this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    final form = FormGroup({
      // Basic Information
      'name': FormControl<String>(
        value: animal?.name ?? '',
        validators: [Validators.required],
      ),
      'species': FormControl<AnimalDTOSpecies>(
        value: animal?.species,
        validators: [Validators.required],
      ),
      'breed': FormControl<String>(value: animal?.breed ?? ''),
      'gender': FormControl<AnimalDTOGender>(
        value: animal?.gender,
      ),
      'birthDate': FormControl<DateTime>(
        value: animal?.birthDate,
        validators: [Validators.required],
      ),
      'weight': FormControl<double>(value: animal?.weight),
      'size': FormControl<AnimalDTOSize>(value: animal?.size),

      // Identification
      'microchipNumber': FormControl<String>(
        value: animal?.microchipNumber,
      ),
      'vaccinationsUpToDate': FormControl<bool>(
        value: animal?.vaccinationsUpToDate ?? false,
      ),

      // Health Information
      'medicalConditions': FormControl<String>(
        value: animal?.medicalConditions,
      ),
      'medications': FormArray<String>(
        animal?.medications?.map((med) => FormControl<String>(value: med)).toList() ?? [],
      ),
      'allergies': FormArray<String>(
        animal?.allergies?.map((allergy) => FormControl<String>(value: allergy)).toList() ?? [],
      ),
      'specialNeeds': FormControl<String>(
        value: animal?.specialNeeds,
      ),
      'feedingInstructions': FormControl<String>(
        value: animal?.feedingInstructions,
      ),
      'behaviorNotes': FormControl<String>(
        value: animal?.behaviorNotes,
      ),

      // Behavior
      'energyLevel': FormControl<AnimalDTOEnergyLevel>(
        value: animal?.energyLevel,
      ),
      'houseTrained': FormControl<bool>(
        value: animal?.houseTrained ?? false,
      ),
      'petFriendly': FormControl<bool>(
        value: animal?.petFriendly ?? false,
      ),
      'childFriendly': FormControl<bool>(
        value: animal?.childFriendly ?? false,
      ),

      // Additional Information
      'photoUrl': FormControl<String>(
        value: animal?.photoUrl,
      ),
      'veterinarianContact': FormControl<String>(
        value: animal?.veterinarianContact,
      ),
      'lastVetVisit': FormControl<DateTime>(
        value: animal?.lastVetVisit,
      ),
      'specialInstructions': FormControl<String>(
        value: animal?.specialInstructions,
      ),
    });

    return ReactiveForm(
      formGroup: form,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  '* Champs obligatoires',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Basic Information Fields
            ReactiveTextField<String>(
              formControlName: 'name',
              decoration: getInputDecoration('Nom de l\'animal'),
              validationMessages: {
                ValidationMessage.required: (error) => 'Le nom est requis',
              },
            ),
            const SizedBox(height: 16),
            ReactiveDropdownField<AnimalDTOSpecies>(
              formControlName: 'species',
              padding: const EdgeInsets.all(0),
              decoration: getInputDecoration('Espèce'),
              validationMessages: {
                ValidationMessage.required: (error) => 'L\'espèce est requise',
              },
              items: AnimalDTOSpecies.values.map((species) {
                return DropdownMenuItem(
                  value: species,
                  child: Text(_getEnumDisplayName(species)),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            ReactiveTextField<String>(
              formControlName: 'breed',
              decoration: getOptionalInputDecoration('Race (optionnel)'),
            ),
            const SizedBox(height: 16),
            ReactiveDropdownField<AnimalDTOGender>(
              formControlName: 'gender',
              padding: const EdgeInsets.all(0),
              decoration: getOptionalInputDecoration('Genre'),
              items: AnimalDTOGender.values.where((value) => value != AnimalDTOGender.swaggerGeneratedUnknown).map((gender) {
                return DropdownMenuItem(
                  value: gender,
                  child: Text(_getEnumDisplayName(gender)),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            ReactiveDatePicker<DateTime>(
              formControlName: 'birthDate',
              firstDate: DateTime(2000),
              lastDate: DateTime.now(),
              builder: (context, picker, child) {
                return ReactiveTextField<DateTime>(
                  formControlName: 'birthDate',
                  readOnly: true,
                  decoration: getInputDecoration('Date de naissance').copyWith(
                    suffixIcon: const Icon(Icons.calendar_today),
                  ),
                  onTap: (_) => picker.showPicker(),
                  validationMessages: {
                    ValidationMessage.required: (error) => 'La date de naissance est requise',
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            ReactiveTextField<double>(
              formControlName: 'weight',
              decoration: getOptionalInputDecoration('Poids (kg)'),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              validationMessages: {
                ValidationMessage.number: (error) => 'Entrée invalide',
              },
            ),
            const SizedBox(height: 16),
            ReactiveDropdownField<AnimalDTOSize>(
              formControlName: 'size',
              padding: const EdgeInsets.all(0),
              decoration: getOptionalInputDecoration('Taille'),
              items: AnimalDTOSize.values.map((size) {
                return DropdownMenuItem(
                  value: size,
                  child: Text(_getEnumDisplayName(size)),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            // Identification Fields
            ReactiveTextField<String>(
              formControlName: 'microchipNumber',
              decoration: getOptionalInputDecoration('Numéro de puce (optionnel)'),
            ),
            const SizedBox(height: 16),
            ReactiveCheckboxListTile(
              formControlName: 'vaccinationsUpToDate',
              title: const Text('Vaccinations à jour'),
              controlAffinity: ListTileControlAffinity.leading,
            ),

            // Health Information Fields
            const SizedBox(height: 16),
            ReactiveTextField<String>(
              formControlName: 'medicalConditions',
              decoration: getOptionalInputDecoration('Conditions médicales (optionnel)'),
            ),
            const SizedBox(height: 16),

            // Medications Section
            _buildMedications(form.control('medications') as FormArray<String>),
            const SizedBox(height: 16),

            // Allergies Section
            _buildAllergies(form.control('allergies') as FormArray<String>),
            const SizedBox(height: 16),

            ReactiveTextField<String>(
              formControlName: 'specialNeeds',
              decoration: getOptionalInputDecoration('Besoin particulier (optionnel)'),
            ),
            const SizedBox(height: 16),
            ReactiveTextField<String>(
              formControlName: 'feedingInstructions',
              decoration: getOptionalInputDecoration('Instructions d\'alimentation'),
            ),
            const SizedBox(height: 16),
            ReactiveTextField<String>(
              formControlName: 'behaviorNotes',
              decoration: getOptionalInputDecoration('Notes sur le comportement'),
            ),

            // Behavior Fields
            const SizedBox(height: 16),
            ReactiveDropdownField<AnimalDTOEnergyLevel>(
              formControlName: 'energyLevel',
              decoration: getOptionalInputDecoration('Niveau d\'énergie'),
              items: AnimalDTOEnergyLevel.values.map((level) {
                return DropdownMenuItem(
                  value: level,
                  child: Text(_getEnumDisplayName(level)),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            ReactiveCheckboxListTile(
              formControlName: 'houseTrained',
              title: const Text('Propre à la maison'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(height: 16),
            ReactiveCheckboxListTile(
              formControlName: 'petFriendly',
              title: const Text('Sociable avec les animaux'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(height: 16),
            ReactiveCheckboxListTile(
              formControlName: 'childFriendly',
              title: const Text('Sociable avec les enfants'),
              controlAffinity: ListTileControlAffinity.leading,
            ),

            // Additional Information Fields
            const SizedBox(height: 16),
            ReactiveTextField<String>(
              formControlName: 'photoUrl',
              decoration: getOptionalInputDecoration('URL de la photo'),
            ),
            const SizedBox(height: 16),
            ReactiveTextField<String>(
              formControlName: 'veterinarianContact',
              decoration: getOptionalInputDecoration('Contact du vétérinaire'),
            ),
            const SizedBox(height: 16),
            ReactiveDatePicker<DateTime>(
              formControlName: 'lastVetVisit',
              firstDate: DateTime(2000),
              lastDate: DateTime.now(),
              builder: (context, picker, child) {
                return ReactiveTextField<DateTime>(
                  formControlName: 'lastVetVisit',
                  readOnly: true,
                  decoration: getOptionalInputDecoration('Dernière visite chez le vétérinaire').copyWith(
                    suffixIcon: const Icon(Icons.calendar_today),
                  ),
                  onTap: (_) => picker.showPicker(),
                );
              },
            ),
            const SizedBox(height: 16),
            ReactiveTextField<String>(
              formControlName: 'specialInstructions',
              decoration: getOptionalInputDecoration('Instructions spéciales'),
            ),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                if (form.valid) {
                  // Collect data from FormArrays
                  final medicationsArray = form.control('medications') as FormArray<String>;
                  final allergiesArray = form.control('allergies') as FormArray<String>;

                  final medicationsList = medicationsArray.controls.map((control) => control.value).whereType<String>().toList();
                  final allergiesList = allergiesArray.controls.map((control) => control.value).whereType<String>().toList();

                  if (animal != null) {
                    final updatedAnimal = AnimalUpdateDTO(
                      id: animal!.id!,
                      name: form.control('name').value,
                      ownerId: animal!.owner.id,
                      species: (form.control('species').value as AnimalDTOSpecies).toUpdateDTOSpecies(),
                      breed: form.control('breed').value,
                      gender: (form.control('gender').value as AnimalDTOGender?)?.toUpdateDTOGender(),
                      birthDate: form.control('birthDate').value,
                      weight: form.control('weight').value,
                      size: (form.control('size').value as AnimalDTOSize?)?.toUpdateDTOSize(),
                      microchipNumber: form.control('microchipNumber').value,
                      vaccinationsUpToDate: form.control('vaccinationsUpToDate').value,
                      medicalConditions: form.control('medicalConditions').value,
                      medications: medicationsList.isNotEmpty ? medicationsList : null,
                      allergies: allergiesList.isNotEmpty ? allergiesList : null,
                      specialNeeds: form.control('specialNeeds').value,
                      feedingInstructions: form.control('feedingInstructions').value,
                      behaviorNotes: form.control('behaviorNotes').value,
                      energyLevel: (form.control('energyLevel').value as AnimalDTOEnergyLevel?)?.toUpdateDTOEnergyLevel(),
                      houseTrained: form.control('houseTrained').value,
                      petFriendly: form.control('petFriendly').value,
                      childFriendly: form.control('childFriendly').value,
                      photoUrl: form.control('photoUrl').value,
                      veterinarianContact: form.control('veterinarianContact').value,
                      lastVetVisit: form.control('lastVetVisit').value,
                      specialInstructions: form.control('specialInstructions').value,
                    );
                    onUpdate?.call(updatedAnimal);
                  } else {
                    final newAnimal = AnimalCreateDTO(
                      name: form.control('name').value,
                      ownerId: ownerId,
                      species: (form.control('species').value as AnimalDTOSpecies).toCreateDTOSpecies(),
                      breed: form.control('breed').value,
                      gender: (form.control('gender').value as AnimalDTOGender?)?.toCreateDTOGender(),
                      birthDate: form.control('birthDate').value,
                      weight: form.control('weight').value,
                      size: (form.control('size').value as AnimalDTOSize?)?.toCreateDTOSize(),
                      microchipNumber: form.control('microchipNumber').value,
                      vaccinationsUpToDate: form.control('vaccinationsUpToDate').value,
                      medicalConditions: form.control('medicalConditions').value,
                      medications: medicationsList.isNotEmpty ? medicationsList : null,
                      allergies: allergiesList.isNotEmpty ? allergiesList : null,
                      specialNeeds: form.control('specialNeeds').value,
                      feedingInstructions: form.control('feedingInstructions').value,
                      behaviorNotes: form.control('behaviorNotes').value,
                      energyLevel: (form.control('energyLevel').value as AnimalDTOEnergyLevel?)?.toCreateDTOEnergyLevel(),
                      houseTrained: form.control('houseTrained').value,
                      petFriendly: form.control('petFriendly').value,
                      childFriendly: form.control('childFriendly').value,
                      photoUrl: form.control('photoUrl').value,
                      veterinarianContact: form.control('veterinarianContact').value,
                      lastVetVisit: form.control('lastVetVisit').value,
                      specialInstructions: form.control('specialInstructions').value,
                    );
                    onCreate?.call(newAnimal);
                  }
                } else {
                  form.markAllAsTouched();
                }
              },
              child: const Text('Enregistrer'),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration getInputDecoration(String label) {
    return InputDecoration(
      labelText: '$label *',
    );
  }

  InputDecoration getOptionalInputDecoration(String label) {
    return InputDecoration(
      labelText: label,
    );
  }

  Widget _buildMedications(FormArray<String> medications) {
    return ReactiveFormArray<String>(
      formArray: medications,
      builder: (context, formArray, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Médicaments',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...List.generate(formArray.controls.length, (index) {
              final control = formArray.controls[index] as FormControl<String>;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ReactiveTextField<String>(
                        formControl: control,
                        decoration: InputDecoration(
                          labelText: 'Médicament ${index + 1}',
                          border: const OutlineInputBorder(),
                          errorStyle: const TextStyle(color: Colors.redAccent),
                        ),
                        validationMessages: {
                          ValidationMessage.required: (error) => 'Ce champ est requis',
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.remove_circle, color: Colors.red),
                      onPressed: () {
                        medications.removeAt(index);
                      },
                    ),
                  ],
                ),
              );
            }),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () {
                medications.add(FormControl<String>(validators: [Validators.required]));
              },
              icon: const Icon(Icons.add),
              label: const Text('Ajouter un médicament'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildAllergies(FormArray<String> allergies) {
    return ReactiveFormArray<String>(
      formArray: allergies,
      builder: (context, formArray, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Allergies',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...List.generate(formArray.controls.length, (index) {
              final control = formArray.controls[index] as FormControl<String>;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ReactiveTextField<String>(
                        formControl: control,
                        decoration: InputDecoration(
                          labelText: 'Allergie ${index + 1}',
                          border: const OutlineInputBorder(),
                          errorStyle: const TextStyle(color: Colors.redAccent),
                        ),
                        validationMessages: {
                          ValidationMessage.required: (error) => 'Ce champ est requis',
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.remove_circle, color: Colors.red),
                      onPressed: () {
                        allergies.removeAt(index);
                      },
                    ),
                  ],
                ),
              );
            }),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () {
                allergies.add(FormControl<String>(validators: [Validators.required]));
              },
              icon: const Icon(Icons.add),
              label: const Text('Ajouter une allergie'),
            ),
          ],
        );
      },
    );
  }

  String _getEnumDisplayName(dynamic enumValue) {
    // Helper method to convert enum to a user-friendly string
    // Customize this method based on your enum definitions
    if (enumValue is AnimalDTOGender) {
      switch (enumValue) {
        case AnimalDTOGender.male:
          return 'Mâle';
        case AnimalDTOGender.female:
          return 'Femelle';
        default:
          return 'Autre';
      }
    } else if (enumValue is AnimalDTOSize) {
      switch (enumValue) {
        case AnimalDTOSize.small:
          return 'Petit';
        case AnimalDTOSize.medium:
          return 'Moyen';
        case AnimalDTOSize.large:
          return 'Grand';
        default:
          return 'Autre';
      }
    } else if (enumValue is AnimalDTOEnergyLevel) {
      switch (enumValue) {
        case AnimalDTOEnergyLevel.low:
          return 'Faible';
        case AnimalDTOEnergyLevel.medium:
          return 'Moyen';
        case AnimalDTOEnergyLevel.high:
          return 'Élevé';
        default:
          return 'Autre';
      }
    } else if (enumValue is AnimalDTOSpecies) {
      switch (enumValue) {
        case AnimalDTOSpecies.dog:
          return 'Chien';
        case AnimalDTOSpecies.cat:
          return 'Chat';
        case AnimalDTOSpecies.bird:
          return 'Oiseau';
        case AnimalDTOSpecies.fish:
          return 'Poisson';
        case AnimalDTOSpecies.reptile:
          return 'Reptile';
        case AnimalDTOSpecies.swaggerGeneratedUnknown:
          return 'Inconnu';
        case AnimalDTOSpecies.rodent:
          return 'Rongeur';
        case AnimalDTOSpecies.rabbit:
          return 'Lapin';
        case AnimalDTOSpecies.ferret:
          return 'Furet';
        case AnimalDTOSpecies.horse:
          return 'Cheval';
        case AnimalDTOSpecies.cow:
          return 'Vache';
        case AnimalDTOSpecies.pig:
          return 'Cochon';
        case AnimalDTOSpecies.sheep:
          return 'Mouton';
        case AnimalDTOSpecies.goat:
          return 'Chèvre';
        case AnimalDTOSpecies.poultry:
          return 'Volaille';
        case AnimalDTOSpecies.other:
          return 'Autre';
      }
    }
    return enumValue.toString().split('.').last.replaceAll('_', ' ');
  }
}
