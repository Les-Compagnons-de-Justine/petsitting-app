import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:petsitting/core/extensions/context_extension.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key, required this.zoomDrawerController});

  final ZoomDrawerController zoomDrawerController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            zoomDrawerController.toggle!();
          },
          child: Container(
            padding: EdgeInsets.all(10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.cardColor,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(1, 1)),
                BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(0, 1)),
              ],
            ),
            child: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
          ),
        ),
        Text(
          "Les compagnons de Justine",
          style: context.textTheme.headlineSmall,
        ),
        SizedBox(
          width: 50,
        ),
      ],
    );
  }
}
