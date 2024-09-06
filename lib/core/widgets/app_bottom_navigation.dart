import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/utils/app_constant.dart';
import 'package:petsitting/core/utils/app_widget.dart';
import 'package:petsitting/core/utils/assets_utils.dart';
import 'package:petsitting/core/utils/colors.dart';
import 'package:petsitting/core/utils/nb_utils.dart';

class AppBottomNavigation extends HookWidget {
  const AppBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(_getIndexFromLocation(GoRouterState.of(context).uri.toString()));

    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(32),
          height: 70,
          decoration: BoxDecoration(
            color: context.scaffoldBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: shadowColorGlobal,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: tabItem(selectedIndex.value == 0, ic_activity, "Accueil", () {
                  selectedIndex.value = 0;
                  context.go(RouteNames.home);
                }),
              ),
              Flexible(
                flex: 1,
                child: tabItem(selectedIndex.value == 1, ic_list, "Mes Animaux", () {
                  selectedIndex.value = 1;
                  context.go(RouteNames.animals);
                }),
              ),
              Flexible(
                flex: 1,
                child: tabItem(selectedIndex.value == 2, ic_meal, "Messages", () {
                  selectedIndex.value = 2;
                  context.go(RouteNames.messages);
                }),
              ),
              Flexible(
                flex: 1,
                child: tabItem(selectedIndex.value == 3, ic_work_bn, "Settings", () {
                  selectedIndex.value = 3;
                  context.go(RouteNames.settings);
                }),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget tabItem(bool isSelected, String icon, String name, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          decoration: isSelected ? BoxDecoration(shape: BoxShape.rectangle, color: primarycolor, borderRadius: BorderRadius.circular(8)) : BoxDecoration(),
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Column(
              children: <Widget>[
                SvgPicture.asset(
                  icon,
                  width: 20,
                  height: 20,
                  colorFilter: ColorFilter.mode(isSelected ? Colors.white : secondarycolor, BlendMode.srcIn),
                ),
                text(name, textColor: isSelected ? Colors.white : secondarycolor, fontSize: textSizeSmall)
              ],
            ),
          ),
        ),
      ),
    );
  }

  int _getIndexFromLocation(String location) {
    if (location.startsWith(RouteNames.home)) return 0;
    if (location.startsWith(RouteNames.animals)) return 1;
    if (location.startsWith(RouteNames.messages)) return 2;
    if (location.startsWith(RouteNames.settings)) return 3;
    return 0;
  }
}
