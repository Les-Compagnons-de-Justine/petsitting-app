import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/utils/text_styles.dart';
import 'package:petsitting/core/utils/user_manager.dart';

class DashboardTitleComponent extends HookWidget {
  const DashboardTitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final user = useMemoized(() => UserManager().currentUser);

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 2,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Text(
            user != null ? "Bonjour ${user.firstname!} " : "Bonjour",
            style: boldTextStyle(size: 18),
            textAlign: TextAlign.start,
          ),
          if (user == null)
            Text(
              "Créez un compte ou connectez vous !",
              style: secondaryTextStyle(size: 14),
              textAlign: TextAlign.start,
            ),
        ],
      ),
    );
  }
}
