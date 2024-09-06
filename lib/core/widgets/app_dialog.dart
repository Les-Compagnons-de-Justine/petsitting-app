import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            child,
            Positioned(
              right: 8,
              top: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
