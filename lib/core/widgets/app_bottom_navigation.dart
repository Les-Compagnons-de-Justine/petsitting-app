import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/utils/colors.dart';
import 'package:petsitting/core/utils/text_styles.dart';

class AppBottomNavigationBar extends HookWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(
      _getIndexFromLocation(GoRouterState.of(context).uri.toString()),
    );

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: context.cardColor,
      selectedItemColor: primarycolor,
      currentIndex: selectedIndex.value,
      iconSize: 25,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        selectedIndex.value = index;
        context.go(_getLocationFromIndex(index));
      },
      selectedLabelStyle: primaryTextStyle(),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_rounded),
          label: "Favourite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "Messages",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: "Account",
        ),
      ],
    );
  }

  int _getIndexFromLocation(String location) {
    if (location.startsWith(RouteNames.home)) return 0;
    if (location.startsWith(RouteNames.animals)) return 1;
    if (location.startsWith(RouteNames.messages)) return 2;
    if (location.startsWith(RouteNames.settings)) return 3;
    return 0;
  }

  String _getLocationFromIndex(int index) {
    switch (index) {
      case 0:
        return RouteNames.home;
      case 1:
        return RouteNames.animals;
      case 2:
        return RouteNames.messages;
      case 3:
        return RouteNames.settings;
      default:
        return RouteNames.home;
    }
  }
}
