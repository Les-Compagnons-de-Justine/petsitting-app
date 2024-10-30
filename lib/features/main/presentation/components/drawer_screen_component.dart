import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/utils/text_styles.dart';
import 'package:petsitting/core/utils/user_manager.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.enums.swagger.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class DrawerScreenComponent extends HookWidget {
  const DrawerScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final user = useMemoized(() => UserManager().currentUser);

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              context.push(RouteNames.editProfile);
            },
            child: Row(
              children: [
                SizedBox(width: 16),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.cardColor,
                  ),
                  child: Image.asset(
                    "assets/images/theme15/account_images/profile2.png",
                    height: 45,
                    width: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user != null ? "${user.firstname!} ${user.lastname!}" : "Bonjour",
                      style: boldTextStyle(),
                    ),
                    SizedBox(height: 2),
                    if (user != null)
                      Text(
                        user.email!,
                        style: secondaryTextStyle(),
                      )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          ListTile(
            title: Text("Home", style: primaryTextStyle(size: 20)),
            leading: Icon(Icons.home_outlined),
            onTap: () {
              context.go(RouteNames.home);
            },
          ),
          ListTile(
            title: Text("Missions", style: primaryTextStyle(size: 20)),
            leading: Icon(Icons.file_open_outlined),
            onTap: () {
              context.go(RouteNames.missions);
            },
          ),
          if (user != null && user.role == UsersUserRole.roleclient)
            ListTile(
              title: Text("Mes animaux", style: primaryTextStyle(size: 20)),
              leading: Icon(Icons.pets),
              onTap: () {
                context.go(RouteNames.animals);
              },
            ),
          ListTile(
            title: Text("Messages", style: primaryTextStyle(size: 20)),
            leading: Icon(Icons.message),
            onTap: () {
              context.go(RouteNames.messages);
            },
          ),
          ListTile(
            title: Text("Settings", style: primaryTextStyle(size: 20)),
            leading: Icon(Icons.account_circle_outlined),
            onTap: () {
              context.go(RouteNames.settings);
            },
          ),
          SizedBox(height: 130),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => context.go(RouteNames.settings),
                icon: Icon(Icons.settings, color: Colors.grey),
              ),
              Container(
                height: 25,
                width: 1.5,
                decoration: BoxDecoration(color: context.cardColor),
              ),
              SizedBox(width: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/theme15/icons/logout.png",
                    height: 22,
                    width: 22,
                    color: Colors.grey,
                  ),
                  TextButton(
                    style: ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.all(2))),
                    onPressed: () {
                      _handleSignOut(context);
                    },
                    child: Text(
                      "Se deconnecter",
                      style: primaryTextStyle(size: 20, color: Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  void _handleSignOut(BuildContext context) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      text: 'Êtes-vous sûr de vouloir vous déconnecter ?',
      confirmBtnText: 'Oui',
      cancelBtnText: 'Non',
      onConfirmBtnTap: () {
        context.read<AuthBloc>().add(AuthEventSignOut());
        Navigator.of(context).pop(); // Close the alert
      },
    );
  }
}
