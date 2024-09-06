import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/app/app_scaffold.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/features/auth/presentation/screens/login_screen.dart';
import 'package:petsitting/features/auth/presentation/screens/user_profile_setup_screen.dart';
import 'package:petsitting/features/auth/presentation/screens/verification_email_screen.dart';
import 'package:petsitting/features/create_mission/presentation/screens/create_mission_screen.dart';
import 'package:petsitting/features/home/presentation/screens/home_screen.dart';
import 'package:petsitting/features/main/presentation/screens/main_screen.dart';
import 'package:petsitting/features/messages/presentation/screens/message_screen.dart';
import 'package:petsitting/features/mission/presentation/screen/mission_detail_screen.dart';
import 'package:petsitting/features/mission/presentation/screen/mission_list_screen.dart';
import 'package:petsitting/features/pet_management/presentation/screens/create_animal_screen.dart';
import 'package:petsitting/features/pet_management/presentation/screens/edit_animal_screen.dart';
import 'package:petsitting/features/pet_management/presentation/screens/pet_detail_screen.dart';
import 'package:petsitting/features/pet_management/presentation/screens/pet_list_screen.dart';
import 'package:petsitting/features/pet_services/presentation/screens/pet_service_detail_screen.dart';
import 'package:petsitting/features/pet_services/presentation/screens/pet_service_edit_screen.dart';
import 'package:petsitting/features/pet_services/presentation/screens/pet_service_list_screen.dart';
import 'package:petsitting/features/pet_services/presentation/screens/pet_services_admin_screen.dart';
import 'package:petsitting/features/profile/presentation/screens/profile_screen.dart';
import 'package:petsitting/features/settings/presentation/screens/settings_screen.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final goRouter = GoRouter(
    initialLocation: RouteNames.home,
    navigatorKey: rootNavigatorKey,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return AppScaffold(child: child);
        },
        routes: [
          ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) {
              return MainScreen(child: child);
            },
            routes: [
              GoRoute(
                path: RouteNames.home,
                builder: (context, state) => const HomeScreen(),
              ),
              GoRoute(
                path: RouteNames.missions,
                builder: (context, state) => const MissionListScreen(),
              ),
              GoRoute(
                path: RouteNames.animals,
                builder: (context, state) => const AnimalListScreen(),
              ),
              GoRoute(
                path: RouteNames.messages,
                builder: (context, state) => const MessageScreen(),
              ),
              GoRoute(
                path: RouteNames.settings,
                builder: (context, state) => const SettingsScreen(),
              ),
            ],
          ),
          GoRoute(
            path: RouteNames.petServiceList,
            builder: (context, state) => const PetServicesListScreen(),
          ),
          GoRoute(
            path: RouteNames.petServicesAdmin,
            builder: (context, state) => const PetServiceAdminScreen(),
          ),
          GoRoute(
            path: RouteNames.petServiceDetail,
            builder: (context, state) => PetServiceDetailScreen(petServiceId: state.pathParameters['id']!),
          ),
          GoRoute(
            path: RouteNames.petServiceEdit,
            builder: (context, state) => PetServiceEditScreen(petServiceId: state.pathParameters['id']!),
          ),
          GoRoute(
            path: RouteNames.animalDetail,
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return PetDetailScreen(petId: id);
            },
          ),
          GoRoute(
            path: RouteNames.editAnimal,
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return EditAnimalScreen(petId: id);
            },
          ),
          GoRoute(
            path: RouteNames.createMission,
            builder: (context, state) => const CreateMissionScreen(
              step: 'information',
            ),
            routes: [
              GoRoute(
                path: 'information',
                builder: (context, state) => const CreateMissionScreen(
                  step: 'information',
                ),
              ),
              GoRoute(
                path: 'services',
                builder: (context, state) => const CreateMissionScreen(
                  step: 'services',
                ),
              ),
            ],
          ),
          // Redirection de /createMission vers /createMission/information
          GoRoute(
            path: RouteNames.createMission,
            redirect: (context, state) => RouteNames.createMissionInformation,
          ),
          GoRoute(
            path: RouteNames.createAnimal,
            builder: (context, state) {
              return const CreateAnimalScreen();
            },
          ),
          GoRoute(
            path: RouteNames.missionDetail,
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return MissionDetailScreen(id: id);
            },
          ),
          GoRoute(
            path: RouteNames.editProfile,
            builder: (context, state) => ProfileScreen(),
          ),
        ],
      ),
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RouteNames.emailVerification,
        builder: (context, state) => VerificationEmailScreen(),
      ),
      GoRoute(
        path: RouteNames.userProfileSetup,
        builder: (context, state) => const UserProfileSetupScreen(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final User? user = FirebaseAuth.instance.currentUser;
      final bool isLoggedIn = UserManager().isAuthenticated;
      final bool isGoingToLogin = state.uri.toString() == RouteNames.login;

      // Liste des routes non accessibles sans authentification
      final List<String> privateRoutes = [
        RouteNames.createAnimal,
        RouteNames.editAnimal,
        RouteNames.editProfile,
        RouteNames.createMission,
        RouteNames.missionDetail,
        RouteNames.createMissionInformation,
        RouteNames.createMissionServices,
      ];

      if (user != null && !user.emailVerified) {
        return RouteNames.emailVerification;
      } else if (!isLoggedIn && !isGoingToLogin && privateRoutes.contains(state.uri.toString())) {
        debugPrint('Redirection vers la page de connexion');
        debugPrint("isGoingToLogin: $isGoingToLogin isLoggedIn: $isLoggedIn privateRoute: ${state.uri.toString()}");
        return RouteNames.login;
      }
      return null;
    },
  );
}
