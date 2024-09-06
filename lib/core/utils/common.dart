import 'package:flutter/material.dart';
import 'package:petsitting/core/extensions/responsive_extension.dart';

EdgeInsets dynamicAppButtonPadding(BuildContext context) {
  if (context.isDesktopDevice) {
    return EdgeInsets.symmetric(vertical: 20, horizontal: 20);
  } else if (context.isTabletDevice) {
    return EdgeInsets.symmetric(vertical: 16, horizontal: 16);
  } else {
    return EdgeInsets.symmetric(vertical: 14, horizontal: 16);
  }
}
