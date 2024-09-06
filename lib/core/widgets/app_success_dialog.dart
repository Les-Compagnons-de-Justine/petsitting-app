import 'package:flutter/material.dart';
import 'package:petsitting/core/const/const.dart';

class AppSuccessDialog extends StatelessWidget {
  const AppSuccessDialog({
    super.key,
    required this.title,
    required this.buttonText,
    required this.onButtonPressed,
    this.message,
  });

  final String title;
  final String? message;
  final String buttonText;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  ConstData.a24,
                  height: 120,
                ),
                Image.asset(
                  ConstData.a25,
                  height: 60,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            if (message != null) ...[
              const SizedBox(height: 10),
              Text(
                message!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
            const SizedBox(height: 30),
            TextButton(
              onPressed: onButtonPressed,
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
