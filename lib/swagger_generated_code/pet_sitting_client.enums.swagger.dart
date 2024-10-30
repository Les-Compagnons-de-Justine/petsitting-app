import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AnimalEnergyLevel {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LOW')
  low('LOW'),
  @JsonValue('NORMAL')
  normal('NORMAL'),
  @JsonValue('HIGH')
  high('HIGH');

  final String? value;

  const AnimalEnergyLevel(this.value);
}

enum AnimalGender {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MALE')
  male('MALE'),
  @JsonValue('FEMALE')
  female('FEMALE');

  final String? value;

  const AnimalGender(this.value);
}

enum AnimalSize {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SMALL')
  small('SMALL'),
  @JsonValue('MEDIUM')
  medium('MEDIUM'),
  @JsonValue('LARGE')
  large('LARGE');

  final String? value;

  const AnimalSize(this.value);
}

enum AnimalSpecies {
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

  const AnimalSpecies(this.value);
}

enum MissionsStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  statuspending('PENDING'),
  @JsonValue('CONFIRMED')
  statusconfirmed('CONFIRMED'),
  @JsonValue('IN_PROGRESS')
  statusinprogress('IN_PROGRESS'),
  @JsonValue('COMPLETED')
  statuscompleted('COMPLETED'),
  @JsonValue('PAID')
  statuspaid('PAID'),
  @JsonValue('CANCELLED')
  statuscancelled('CANCELLED');

  final String? value;

  const MissionsStatus(this.value);
}

enum PetServicesAnimalType {
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
  smallmammal('SMALL_MAMMAL'),
  @JsonValue('EXOTIC')
  exotic('EXOTIC'),
  @JsonValue('FISH')
  fish('FISH');

  final String? value;

  const PetServicesAnimalType(this.value);
}

enum PetServicesCategory {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BASIC_CARE')
  basiccare('BASIC_CARE'),
  @JsonValue('MEDICAL')
  medical('MEDICAL'),
  @JsonValue('TRAINING')
  training('TRAINING'),
  @JsonValue('TRANSPORT')
  transport('TRANSPORT'),
  @JsonValue('SPECIALIZED')
  specialized('SPECIALIZED'),
  @JsonValue('HOUSE_CARE')
  housecare('HOUSE_CARE');

  final String? value;

  const PetServicesCategory(this.value);
}

enum UsersUserRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('CLIENT')
  roleclient('CLIENT'),
  @JsonValue('VET_ASSISTANT')
  roleadmin('VET_ASSISTANT');

  final String? value;

  const UsersUserRole(this.value);
}
