import 'package:flutter/material.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/utils/colors.dart';
import 'package:petsitting/core/utils/text_styles.dart';
import 'package:petsitting/core/widgets/app_button.dart';
import 'package:url_launcher/url_launcher.dart';

class VetAssistantCardComponent extends StatelessWidget {
  const VetAssistantCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      height: 150,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(1, 1)),
          BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(0, 1)),
        ],
        color: context.cardColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: -24,
            left: MediaQuery.of(context).size.width / 2,
            child: Container(
              padding: EdgeInsets.all(28),
              decoration: BoxDecoration(shape: BoxShape.circle, color: primarycolor),
            ),
          ),
          Positioned(
            left: 16,
            top: 16,
            child: Text(
              "Contactez Justine \npour reserver vos créneaux !",
              style: primaryTextStyle(),
            ),
          ),
          Positioned(
            bottom: -20,
            right: -20,
            top: 32,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(75),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: primarycolor),
                ),
                Positioned(
                  left: 40,
                  top: 16,
                  child: Image.asset(
                    "assets/images/theme15/dashboard/dashboard_card_image.png",
                    height: 100,
                    width: 100,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: AppButton(
              textColor: Colors.white,
              color: primarycolor,
              text: 'Contacter',
              textStyle: boldTextStyle(color: Colors.white),
              onTap: () async {
                Uri phone = Uri.parse('tel:0671645504');
                final isLaunch = await launchUrl(phone);

                if (!isLaunch) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Impossible de lancer l\'appel'),
                    duration: Duration(seconds: 2),
                  ));
                }
              },
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 36),
            ),
          )
        ],
      ),
    );
  }
}
