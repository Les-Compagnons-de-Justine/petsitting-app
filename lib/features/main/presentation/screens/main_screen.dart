import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/widgets/app_bottom_navigation.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainScreen extends HookWidget {
  final Widget child;

  const MainScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: ResponsiveVisibility(
        hiddenConditions: [
          Condition.largerThan(name: TABLET),
        ],
        child: AppBottomNavigation(),
      ),
    );
  }
}
