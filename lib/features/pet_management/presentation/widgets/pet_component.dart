import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/utils/colors.dart';
import 'package:petsitting/core/utils/text_styles.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class PetComponent extends StatelessWidget {
  const PetComponent({super.key, required this.animal, this.onTap});

  final AnimalWithOwner animal;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: animal.gender == AnimalGender.male ? Colors.lightBlueAccent.shade100 : Colors.pinkAccent.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    animal.gender == AnimalGender.male ? "assets/images/theme15/dashboard/d3.png" : "assets/images/theme15/dashboard/d4.png",
                    //"images/theme15/dashboard/d3.png",
                    height: 150,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      animal.name!,
                      style: boldTextStyle(),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/theme15/icons/location1.png",
                          height: 13,
                          width: 13,
                          color: primarycolor,
                        ),
                        SizedBox(width: 4),
                        Text(
                          animal.owner!.address!.name!,
                          style: secondaryTextStyle(),
                        ),
                      ],
                    ),
                    Text(
                      'Né le ${Jiffy.parse(animal.birthDate!).format(pattern: "dd/MM/yyyy")}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
