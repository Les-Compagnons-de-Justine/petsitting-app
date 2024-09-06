import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/utils/colors.dart';
import 'package:petsitting/core/utils/comman.dart';
import 'package:petsitting/core/utils/text_styles.dart';

class PetsScreenOwnersComponent extends StatelessWidget {
  const PetsScreenOwnersComponent({
    super.key,
    required this.owner,
    required this.address,
    required this.onEditPressed,
  });

  final String owner;
  final String address;
  final VoidCallback onEditPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                owner,
                style: boldTextStyle(size: 18),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  SizedBox(width: 4),
                  Image.asset(
                    "assets/images/theme15/icons/location1.png",
                    height: 15,
                    width: 15,
                    color: primarycolor,
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      address,
                      style: style2,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        InkWell(
          onTap: onEditPressed,
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(1, 1)),
                BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(0, 1)),
              ],
              color: context.cardColor,
            ),
            child: FaIcon(
              FontAwesomeIcons.penToSquare,
              color: tertiarycolor,
              size: 25,
            ),
          ),
        )
      ],
    );
  }
}
