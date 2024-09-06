import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.enums.swagger.dart';

class RoleBasedNavigation {
  static void navigateToCreateMission(BuildContext context) {
    final userRole = UserManager().currentUser?.role;

    switch (userRole) {
      case UserDTORole.vetAssistant:
        context.navigate(RouteNames.asvCreateMission);
        break;
      default:
        context.navigate(RouteNames.createMission);
        break;
    }
  }

  static void navigateToPetServicesList(BuildContext context) {
    final userRole = UserManager().currentUser?.role;

    switch (userRole) {
      case UserDTORole.vetAssistant:
        context.push(RouteNames.petServicesAdmin);
        break;
      default:
        context.push(RouteNames.petServiceList);
        break;
    }
  }
}
