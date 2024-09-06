import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/extensions/responsive_extension.dart';

class CustomAppBar extends HookWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final bool centerTitle;
  final double? titleSpacing;
  final double? toolbarHeight;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final ShapeBorder? shape;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final bool primary;
  final bool? automaticallyImplyLeading;
  final TextStyle? titleTextStyle;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.centerTitle = false,
    this.titleSpacing,
    this.toolbarHeight,
    this.flexibleSpace,
    this.bottom,
    this.shape,
    this.iconTheme,
    this.actionsIconTheme,
    this.primary = true,
    this.automaticallyImplyLeading,
    this.titleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      title: Text(title),
      actions: actions,
      leading: leading,
      backgroundColor: backgroundColor ?? theme.primaryColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      toolbarHeight: toolbarHeight,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      shape: shape,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      primary: primary,
      automaticallyImplyLeading: automaticallyImplyLeading ?? context.isMobileDevice,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}
