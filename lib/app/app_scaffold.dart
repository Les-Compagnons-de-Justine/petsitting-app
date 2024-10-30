import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_side_menu/flutter_side_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: Row(
            children: [
              ResponsiveVisibility(
                hiddenConditions: [
                  Condition.smallerThan(name: DESKTOP),
                ],
                child: SideMenu(
                  resizerToggleData: ResizerToggleData(
                    iconColor: Theme.of(context).primaryColor,
                    opacity: 0.5,
                  ),
                  builder: (sideMenuContext) {
                    return SideMenuData(
                      header: Text(
                        'Menu',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      items: [
                        SideMenuItemDataTile(
                          isSelected: GoRouterState.of(context).uri.toString() == RouteNames.home,
                          onTap: () => context.go(RouteNames.home),
                          title: 'Accueil',
                          highlightSelectedColor: Theme.of(context).primaryColor,
                          hoverColor: Theme.of(context).primaryColor.brighten(),
                          icon: const Icon(FontAwesomeIcons.house),
                        ),
                        SideMenuItemDataTile(
                          isSelected: GoRouterState.of(context).uri.toString() == RouteNames.animals,
                          onTap: () => context.go(RouteNames.animals),
                          highlightSelectedColor: Theme.of(context).primaryColor,
                          hoverColor: Theme.of(context).primaryColor.brighten(),
                          title: 'Mes animaux',
                          icon: const Icon(FontAwesomeIcons.paw),
                        ),
                        SideMenuItemDataTile(
                          isSelected: GoRouterState.of(context).uri.toString() == RouteNames.createMission,
                          onTap: () => context.go(RouteNames.createMission),
                          title: 'Créer une mission',
                          highlightSelectedColor: Theme.of(context).primaryColor,
                          hoverColor: Theme.of(context).primaryColor.brighten(),
                          icon: const Icon(FontAwesomeIcons.plus),
                        ),
                      ],
                      footer: Column(
                        children: [
                          const Divider(),
                          if (UserManager().currentUser != null)
                            ListTile(
                              title: TextButton(
                                onPressed: () {
                                  context.read<AuthBloc>().add(AuthEventSignOut());
                                },
                                child: const Text('Déconnexion'),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: child,
              ),
            ],
          ),
        );
      },
    );
  }
}
