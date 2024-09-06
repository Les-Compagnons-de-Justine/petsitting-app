import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum UserUpdateDTORole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CLIENT')
  $client('CLIENT'),
  @JsonValue('VET_ASSISTANT')
  vetAssistant('VET_ASSISTANT');

  final String? value;

  const UserUpdateDTORole(this.value);
}

enum UserDTORole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CLIENT')
  $client('CLIENT'),
  @JsonValue('VET_ASSISTANT')
  vetAssistant('VET_ASSISTANT');

  final String? value;

  const UserDTORole(this.value);
}

enum RecurringScheduleDTODayOfWeek {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MONDAY')
  monday('MONDAY'),
  @JsonValue('TUESDAY')
  tuesday('TUESDAY'),
  @JsonValue('WEDNESDAY')
  wednesday('WEDNESDAY'),
  @JsonValue('THURSDAY')
  thursday('THURSDAY'),
  @JsonValue('FRIDAY')
  friday('FRIDAY'),
  @JsonValue('SATURDAY')
  saturday('SATURDAY'),
  @JsonValue('SUNDAY')
  sunday('SUNDAY');

  final String? value;

  const RecurringScheduleDTODayOfWeek(this.value);
}

enum UserRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CLIENT')
  $client('CLIENT'),
  @JsonValue('VET_ASSISTANT')
  vetAssistant('VET_ASSISTANT');

  final String? value;

  const UserRole(this.value);
}

enum PetServiceDTOCategory {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BASIC_CARE')
  basicCare('BASIC_CARE'),
  @JsonValue('MEDICAL')
  medical('MEDICAL'),
  @JsonValue('TRAINING')
  training('TRAINING'),
  @JsonValue('TRANSPORT')
  transport('TRANSPORT'),
  @JsonValue('SPECIALIZED')
  specialized('SPECIALIZED'),
  @JsonValue('HOUSE_CARE')
  houseCare('HOUSE_CARE');

  final String? value;

  const PetServiceDTOCategory(this.value);
}

enum PetServiceDTOAnimalTypes {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DOG')
  dog('DOG'),
  @JsonValue('CAT')
  cat('CAT'),
  @JsonValue('BIRD')
  bird('BIRD'),
  @JsonValue('REPTILE')
  reptile('REPTILE'),
  @JsonValue('SMALL_MAMMAL')
  smallMammal('SMALL_MAMMAL'),
  @JsonValue('EXOTIC')
  exotic('EXOTIC'),
  @JsonValue('FISH')
  fish('FISH');

  final String? value;

  const PetServiceDTOAnimalTypes(this.value);
}

enum AnimalUpdateDTOSpecies {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DOG')
  dog('DOG'),
  @JsonValue('CAT')
  cat('CAT'),
  @JsonValue('BIRD')
  bird('BIRD'),
  @JsonValue('FISH')
  fish('FISH'),
  @JsonValue('REPTILE')
  reptile('REPTILE'),
  @JsonValue('RODENT')
  rodent('RODENT'),
  @JsonValue('RABBIT')
  rabbit('RABBIT'),
  @JsonValue('FERRET')
  ferret('FERRET'),
  @JsonValue('HORSE')
  horse('HORSE'),
  @JsonValue('COW')
  cow('COW'),
  @JsonValue('PIG')
  pig('PIG'),
  @JsonValue('SHEEP')
  sheep('SHEEP'),
  @JsonValue('GOAT')
  goat('GOAT'),
  @JsonValue('POULTRY')
  poultry('POULTRY'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const AnimalUpdateDTOSpecies(this.value);
}

enum AnimalUpdateDTOGender {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MALE')
  male('MALE'),
  @JsonValue('FEMALE')
  female('FEMALE');

  final String? value;

  const AnimalUpdateDTOGender(this.value);
}

enum AnimalUpdateDTOSize {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SMALL')
  small('SMALL'),
  @JsonValue('MEDIUM')
  medium('MEDIUM'),
  @JsonValue('LARGE')
  large('LARGE');

  final String? value;

  const AnimalUpdateDTOSize(this.value);
}

enum AnimalUpdateDTOEnergyLevel {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LOW')
  low('LOW'),
  @JsonValue('MEDIUM')
  medium('MEDIUM'),
  @JsonValue('HIGH')
  high('HIGH');

  final String? value;

  const AnimalUpdateDTOEnergyLevel(this.value);
}

enum AnimalDTOSpecies {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DOG')
  dog('DOG'),
  @JsonValue('CAT')
  cat('CAT'),
  @JsonValue('BIRD')
  bird('BIRD'),
  @JsonValue('FISH')
  fish('FISH'),
  @JsonValue('REPTILE')
  reptile('REPTILE'),
  @JsonValue('RODENT')
  rodent('RODENT'),
  @JsonValue('RABBIT')
  rabbit('RABBIT'),
  @JsonValue('FERRET')
  ferret('FERRET'),
  @JsonValue('HORSE')
  horse('HORSE'),
  @JsonValue('COW')
  cow('COW'),
  @JsonValue('PIG')
  pig('PIG'),
  @JsonValue('SHEEP')
  sheep('SHEEP'),
  @JsonValue('GOAT')
  goat('GOAT'),
  @JsonValue('POULTRY')
  poultry('POULTRY'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const AnimalDTOSpecies(this.value);
}

enum AnimalDTOGender {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MALE')
  male('MALE'),
  @JsonValue('FEMALE')
  female('FEMALE');

  final String? value;

  const AnimalDTOGender(this.value);
}

enum AnimalDTOSize {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SMALL')
  small('SMALL'),
  @JsonValue('MEDIUM')
  medium('MEDIUM'),
  @JsonValue('LARGE')
  large('LARGE');

  final String? value;

  const AnimalDTOSize(this.value);
}

enum AnimalDTOEnergyLevel {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LOW')
  low('LOW'),
  @JsonValue('MEDIUM')
  medium('MEDIUM'),
  @JsonValue('HIGH')
  high('HIGH');

  final String? value;

  const AnimalDTOEnergyLevel(this.value);
}

enum UserCreationDTORole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CLIENT')
  $client('CLIENT'),
  @JsonValue('VET_ASSISTANT')
  vetAssistant('VET_ASSISTANT');

  final String? value;

  const UserCreationDTORole(this.value);
}

enum MissionDTOMissionStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('CONFIRMED')
  confirmed('CONFIRMED'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('COMPLETED')
  completed('COMPLETED'),
  @JsonValue('CANCELLED')
  cancelled('CANCELLED');

  final String? value;

  const MissionDTOMissionStatus(this.value);
}

enum AnimalCreateDTOSpecies {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DOG')
  dog('DOG'),
  @JsonValue('CAT')
  cat('CAT'),
  @JsonValue('BIRD')
  bird('BIRD'),
  @JsonValue('FISH')
  fish('FISH'),
  @JsonValue('REPTILE')
  reptile('REPTILE'),
  @JsonValue('RODENT')
  rodent('RODENT'),
  @JsonValue('RABBIT')
  rabbit('RABBIT'),
  @JsonValue('FERRET')
  ferret('FERRET'),
  @JsonValue('HORSE')
  horse('HORSE'),
  @JsonValue('COW')
  cow('COW'),
  @JsonValue('PIG')
  pig('PIG'),
  @JsonValue('SHEEP')
  sheep('SHEEP'),
  @JsonValue('GOAT')
  goat('GOAT'),
  @JsonValue('POULTRY')
  poultry('POULTRY'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const AnimalCreateDTOSpecies(this.value);
}

enum AnimalCreateDTOGender {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MALE')
  male('MALE'),
  @JsonValue('FEMALE')
  female('FEMALE');

  final String? value;

  const AnimalCreateDTOGender(this.value);
}

enum AnimalCreateDTOSize {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SMALL')
  small('SMALL'),
  @JsonValue('MEDIUM')
  medium('MEDIUM'),
  @JsonValue('LARGE')
  large('LARGE');

  final String? value;

  const AnimalCreateDTOSize(this.value);
}

enum AnimalCreateDTOEnergyLevel {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LOW')
  low('LOW'),
  @JsonValue('MEDIUM')
  medium('MEDIUM'),
  @JsonValue('HIGH')
  high('HIGH');

  final String? value;

  const AnimalCreateDTOEnergyLevel(this.value);
}

enum ApiRecurringSchedulesGetDayOfWeek {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MONDAY')
  monday('MONDAY'),
  @JsonValue('TUESDAY')
  tuesday('TUESDAY'),
  @JsonValue('WEDNESDAY')
  wednesday('WEDNESDAY'),
  @JsonValue('THURSDAY')
  thursday('THURSDAY'),
  @JsonValue('FRIDAY')
  friday('FRIDAY'),
  @JsonValue('SATURDAY')
  saturday('SATURDAY'),
  @JsonValue('SUNDAY')
  sunday('SUNDAY');

  final String? value;

  const ApiRecurringSchedulesGetDayOfWeek(this.value);
}

enum ApiRecurringSchedulesPostDayOfWeek {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MONDAY')
  monday('MONDAY'),
  @JsonValue('TUESDAY')
  tuesday('TUESDAY'),
  @JsonValue('WEDNESDAY')
  wednesday('WEDNESDAY'),
  @JsonValue('THURSDAY')
  thursday('THURSDAY'),
  @JsonValue('FRIDAY')
  friday('FRIDAY'),
  @JsonValue('SATURDAY')
  saturday('SATURDAY'),
  @JsonValue('SUNDAY')
  sunday('SUNDAY');

  final String? value;

  const ApiRecurringSchedulesPostDayOfWeek(this.value);
}

enum ApiPetServicesCategoryCategoryGetCategory {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BASIC_CARE')
  basicCare('BASIC_CARE'),
  @JsonValue('MEDICAL')
  medical('MEDICAL'),
  @JsonValue('TRAINING')
  training('TRAINING'),
  @JsonValue('TRANSPORT')
  transport('TRANSPORT'),
  @JsonValue('SPECIALIZED')
  specialized('SPECIALIZED'),
  @JsonValue('HOUSE_CARE')
  houseCare('HOUSE_CARE');

  final String? value;

  const ApiPetServicesCategoryCategoryGetCategory(this.value);
}

enum ApiPetServicesAnimalTypeAnimalTypeGetAnimalType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DOG')
  dog('DOG'),
  @JsonValue('CAT')
  cat('CAT'),
  @JsonValue('BIRD')
  bird('BIRD'),
  @JsonValue('REPTILE')
  reptile('REPTILE'),
  @JsonValue('SMALL_MAMMAL')
  smallMammal('SMALL_MAMMAL'),
  @JsonValue('EXOTIC')
  exotic('EXOTIC'),
  @JsonValue('FISH')
  fish('FISH');

  final String? value;

  const ApiPetServicesAnimalTypeAnimalTypeGetAnimalType(this.value);
}

enum ApiMissionsIdPaymentStatusGet$Response {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SUCCEEDED')
  succeeded('SUCCEEDED'),
  @JsonValue('PROCESSING')
  processing('PROCESSING'),
  @JsonValue('REQUIRES_PAYMENT_METHOD')
  requiresPaymentMethod('REQUIRES_PAYMENT_METHOD'),
  @JsonValue('REQUIRES_CONFIRMATION')
  requiresConfirmation('REQUIRES_CONFIRMATION'),
  @JsonValue('CANCELED')
  canceled('CANCELED'),
  @JsonValue('UNKNOWN')
  unknown('UNKNOWN');

  final String? value;

  const ApiMissionsIdPaymentStatusGet$Response(this.value);
}
