// lib/utils/responsive_utils.dart

import 'package:flutter/material.dart';

class ScreenSizes {
  static const double mobile = 600;
  static const double tablet = 1200;
}

/// Détermine si l'écran est considéré comme mobile
bool isMobile(BuildContext context) {
  return MediaQuery.of(context).size.width < ScreenSizes.mobile;
}

/// Détermine si l'écran est considéré comme tablette
bool isTablet(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return width >= ScreenSizes.mobile && width < ScreenSizes.tablet;
}

/// Détermine si l'écran est considéré comme desktop
bool isDesktop(BuildContext context) {
  return MediaQuery.of(context).size.width >= ScreenSizes.tablet;
}
