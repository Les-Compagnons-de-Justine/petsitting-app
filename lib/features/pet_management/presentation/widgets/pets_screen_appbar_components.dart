import 'package:flutter/material.dart';
import 'package:petsitting/features/pet_management/presentation/widgets/common_widgets.dart';

class PetsScreenAppbarComponents extends StatelessWidget {
  const PetsScreenAppbarComponents({super.key, required this.rightIconImage});
  final String rightIconImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        backButton(context),
      ],
    );
  }
}
