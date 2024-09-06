import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:petsitting/core/router/route_names.dart';

class VerificationEmailScreen extends StatelessWidget {
  const VerificationEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EmailVerificationScreen(
      auth: FirebaseAuth.instance,
      actions: [
        EmailVerifiedAction(() {
          FirebaseAuth.instance.currentUser?.reload();
          context.pushReplacementNamed(RouteNames.userProfileSetup);
        }),
        AuthCancelledAction((context) {
          context.pushReplacementNamed(RouteNames.login);
        }),
      ],
    );
  }
}
