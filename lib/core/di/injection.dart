import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:petsitting/core/interceptors/firebase_auth_interceptor.dart';
import 'package:petsitting/core/utils/api_config.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:pretty_chopper_logger/pretty_chopper_logger.dart';

final getIt = GetIt.instance;

Future<void> setupInjection() async {
  final chopperClient = ChopperClient(
    baseUrl: Uri.parse(ApiConfig.baseUrl),
    interceptors: [
      CurlInterceptor(),
      FirebaseAuthInterceptor(),
      PrettyChopperLogger(),
    ],
    converter: $JsonSerializableConverter(),
  );
  getIt.registerSingleton<ChopperClient>(chopperClient);

  // Clients
  getIt.registerLazySingleton<PetSittingClient>(
    () => PetSittingClient.create(
      client: chopperClient,
    ),
  );
}
