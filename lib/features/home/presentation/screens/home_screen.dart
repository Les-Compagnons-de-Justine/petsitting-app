import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petsitting/core/extensions/responsive_extension.dart';
import 'package:petsitting/core/router/role_based_navigation.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/core/widgets/custom_app_bar.dart';
import 'package:petsitting/features/home/presentation/widgets/missions_list_widget.dart';
import 'package:petsitting/features/home/presentation/widgets/pet_service_list_widget.dart';
import 'package:petsitting/features/home/presentation/widgets/weather_display.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = useMemoized(() => UserManager().currentUser);
    final fabKey = useMemoized(() => GlobalKey<ExpandableFabState>());

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Les compagnons de Justine',
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        key: fabKey,
        children: [
          FloatingActionButton.small(
            heroTag: null,
            child: const FaIcon(FontAwesomeIcons.paw),
            onPressed: () {
              //TODO : push Create animal route
            },
          ),
          FloatingActionButton.small(
            heroTag: null,
            child: const FaIcon(FontAwesomeIcons.person),
            onPressed: () {
              //TODO : push Create client route
            },
          ),
          FloatingActionButton.small(
            heroTag: null,
            child: const FaIcon(FontAwesomeIcons.fileContract),
            onPressed: () {
              fabKey.currentState?.toggle();
              RoleBasedNavigation.navigateToCreateMission(context);
            },
          ),
        ],
      ).displayOnMobile(context),
      body: ListView(
        children: [
          const SizedBox(height: 8),
          if (user != null)
            WeatherDisplay(
              latitude: user.address.latitude,
              longitude: user.address.longitude,
            ),
          const MissionsListWidget(),
          const PetServiceListWidget(),
        ],
      ),
    );
  }
}
