import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:petsitting/app/app.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_cubit.dart';
import 'package:petsitting/core/bloc/animal/single/single_animal_cubit.dart';
import 'package:petsitting/core/bloc/pet_service/pet_service_cubit.dart';
import 'package:petsitting/core/di/injection.dart';
import 'package:petsitting/core/error/app_error.dart';
import 'package:petsitting/core/error/bloc/error_bloc.dart';
import 'package:petsitting/core/repositories/animal/animal_repository.dart';
import 'package:petsitting/core/repositories/animal/animal_repository_impl.dart';
import 'package:petsitting/core/repositories/mission/mission_repository.dart';
import 'package:petsitting/core/repositories/mission/mission_repository_impl.dart';
import 'package:petsitting/core/repositories/pet_service/pet_service_repository.dart';
import 'package:petsitting/core/repositories/pet_service/pet_service_repository_impl.dart';
import 'package:petsitting/core/repositories/user/user_repository.dart';
import 'package:petsitting/core/repositories/user/user_repository_impl.dart';
import 'package:petsitting/core/utils/flavor_config.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/create_mission/create_mission_bloc.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/user_creation/user_creation_cubit.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/user_search/user_search_cubit.dart';
import 'package:petsitting/features/home/presentation/bloc/missions/missions_cubit.dart';
import 'package:petsitting/features/mission/data/repository/mission_detail_repository.dart';
import 'package:petsitting/firebase_options.dart';
import 'package:url_strategy/url_strategy.dart';

import 'features/auth/domain/repositories/auth_repository.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void mainDelegate(Flavor environment) {
  runZonedGuarded(() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      _handleGlobalError(details.exception, details.stack);
    };

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    firebase_ui.FirebaseUIAuth.configureProviders([
      firebase_ui.EmailAuthProvider(),
    ]);

    await dotenv.load(fileName: environment.envFile);

    if (!kIsWeb) {
      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!kDebugMode);

      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    } else {
      await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
    }

    Stripe.publishableKey = dotenv.get('STRIPE_PUBLISHABLE_KEY');

    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getApplicationDocumentsDirectory(),
    );

    await setupInjection();

    setPathUrlStrategy();

    runApp(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AuthRepository>(
            create: (context) => AuthRepositoryImpl(getIt()),
          ),
          RepositoryProvider<UserRepository>(
            create: (context) => UserRepositoryImpl(getIt()),
          ),
          RepositoryProvider<MissionRepository>(
            create: (context) => MissionRepositoryImpl(getIt()),
          ),
          RepositoryProvider<PetServiceRepository>(
            create: (context) => PetServiceRepositoryImpl(getIt()),
          ),
          RepositoryProvider<AnimalRepository>(
            create: (context) => AnimalRepositoryImpl(getIt()),
          ),
          RepositoryProvider<MissionDetailRepository>(
            create: (context) => MissionDetailRepositoryImpl(getIt()),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<MissionsCubit>(
              create: (context) => MissionsCubit(context.read())
                ..fetchMissions(
                  UserManager().currentUser?.id,
                ),
            ),
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(
                authRepository: context.read<AuthRepository>(),
              ),
            ),
            BlocProvider<ErrorBloc>(
              create: (context) => ErrorBloc(),
            ),
            BlocProvider<UserCreationCubit>(
              create: (context) => UserCreationCubit(
                context.read<UserRepository>(),
              ),
            ),
            BlocProvider(
              create: (context) => PetServiceCubit(
                context.read<PetServiceRepository>(),
              )..loadPetServices(),
            ),
            BlocProvider(
              create: (context) => CreateMissionBloc(
                missionRepository: context.read<MissionRepository>(),
              ),
            ),
            BlocProvider(
              create: (context) => AnimalListCubit(
                context.read<AnimalRepository>(),
              ),
            ),
            BlocProvider(
              create: (context) => SingleAnimalCubit(
                context.read<AnimalRepository>(),
              ),
            ),
            BlocProvider(
              create: (context) => UserSearchCubit(
                context.read<UserRepository>(),
              )..fetchAllUsers(),
            ),
          ],
          child: DevicePreview(
            enabled: !kReleaseMode && kIsWeb,
            builder: (context) => MyApp(), // Wrap your app
          ),
        ),
      ),
    );
  }, (error, stack) {
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    }

    SchedulerBinding.instance.addPostFrameCallback((_) {
      _handleGlobalError(error, stack);
    });
  });
}

void _handleGlobalError(dynamic error, StackTrace? stack) {
  if (navigatorKey.currentContext == null) {
    return;
  }

  final errorBloc = BlocProvider.of<ErrorBloc>(navigatorKey.currentContext!);
  errorBloc.handleError(
    AppError(
      message: error.toString(),
      code: 'UNCAUGHT_ERROR',
      severity: ErrorSeverity.high,
      exception: error,
      stackTrace: stack,
    ),
  );
}
