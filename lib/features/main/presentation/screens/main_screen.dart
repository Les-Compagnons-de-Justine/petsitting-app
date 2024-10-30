import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:petsitting/features/main/presentation/components/appbar_component.dart';
import 'package:petsitting/features/main/presentation/components/drawer_screen_component.dart';

class MainScreen extends HookWidget {
  final Widget child;

  const MainScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final zoomDrawerController = useMemoized(() => ZoomDrawerController(), []);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: AppBarComponent(
                zoomDrawerController: zoomDrawerController,
              ),
            ),
            Expanded(
              child: ZoomDrawer(
                controller: zoomDrawerController,
                mainScreenScale: 0.3,
                androidCloseOnBackTap: true,
                style: DrawerStyle.defaultStyle,
                closeCurve: Curves.decelerate,
                mainScreenTapClose: true,
                menuScreenWidth: MediaQuery.of(context).size.width,
                angle: -9,
                borderRadius: 50,
                mainScreen: child,
                menuScreen: DrawerScreenComponent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
