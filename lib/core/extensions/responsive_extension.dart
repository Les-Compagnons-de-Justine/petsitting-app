import 'package:flutter/material.dart';
import 'package:petsitting/core/utils/screen_sized_utils.dart';

extension ResponsiveExtension on BuildContext {
  /// Largeur de l'écran
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Hauteur de l'écran
  double get screenHeight => MediaQuery.of(this).size.height;

  /// Vérifie si l'appareil est un mobile
  bool get isMobileDevice => isMobile(this);

  /// Vérifie si l'appareil est une tablette
  bool get isTabletDevice => isTablet(this);

  /// Vérifie si l'appareil est un desktop
  bool get isDesktopDevice => isDesktop(this);

  bool get isLargerThanMobile => !isMobileDevice;
}

extension ResponsiveWidgetExtension on Widget {
  Widget? displayOnMobile(BuildContext context) {
    if (context.isMobileDevice) {
      return this;
    }
    return null;
  }

  Widget displayWhenLargerThanMobile(BuildContext context) {
    if (!context.isMobileDevice) {
      return this;
    }
    return SizedBox.shrink();
  }

  bool isMobile(BuildContext context) {
    return context.isMobileDevice;
  }
}
