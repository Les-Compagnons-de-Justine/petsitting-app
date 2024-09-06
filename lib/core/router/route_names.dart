// lib/core/router/route_names.dart
abstract class RouteNames {
  static const String home = '/';
  static const String missions = '/missions';
  static const String emailVerification = '/email-verification';
  static const String animals = '/animals';
  static const String messages = '/messages';
  static const String settings = '/settings';
  static const String createMission = '/create-mission';
  static const String createMissionInformation = '/create-mission/information';
  static const String createMissionServices = '/create-mission/services';
  static const String asvCreateMission = '/asv-create-mission';
  static const String missionDetail = '/mission/:id';
  static const String login = '/login';
  static const String userProfileSetup = '/user-profile-setup';
  static const String petServiceList = '/pet-service-list';
  static const String petServicesAdmin = '/pet-services-admin';
  static const String petServiceDetail = '/pet-service/:id';
  static const String petServiceEdit = '/pet-service-edit/:id';
  static const String editProfile = '/edit-profile';
  static const String createAnimal = '/create-animal';
  static const String editAnimal = '/edit-animal/:id';
  static const String animalDetail = '/animal/:id';

  static String missionDetailId(String id) => '/mission/$id';
  static String editAnimalId(String id) => '/edit-animal/$id';
  static String petServiceId(String id) => '/pet-service/$id';
  static String petServiceEditId(String id) => '/pet-service-edit/$id';
  static String animalDetailId(String id) => '/animal/$id';
}
