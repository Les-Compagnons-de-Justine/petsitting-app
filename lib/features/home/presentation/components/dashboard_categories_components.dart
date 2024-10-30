import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/utils/colors.dart';
import 'package:petsitting/core/utils/nb_utils.dart';
import 'package:petsitting/core/utils/text_styles.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.enums.swagger.dart';

class DashboardCategoriesComponents extends HookWidget {
  const DashboardCategoriesComponents({
    super.key,
    required this.animalSpecies,
  });

  final List<AnimalSpecies> animalSpecies;

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Wrap(
        spacing: 16,
        children: List.generate(animalSpecies.length, (index) {
          return GestureDetector(
            onTap: () {
              currentIndex.value = index;
            },
            child: Container(
              padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 20),
              decoration: BoxDecoration(
                color: currentIndex.value == index ? primarycolor : context.cardColor,
                borderRadius: BorderRadius.all(Radius.circular(45)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex.value == index ? Colors.white : Colors.grey.shade600,
                      image: DecorationImage(image: AssetImage(animalSpecies[index].imagePath)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    animalSpecies[index].name,
                    style: primaryTextStyle(color: currentIndex.value == index ? white : textSecondaryColorGlobal),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

extension AnimalSpeciesExt on AnimalSpecies {
  String get imagePath {
    switch (this) {
      case AnimalSpecies.dog:
        return "assets/images/theme15/pets_images/dog2.png";
      case AnimalSpecies.cat:
        return "assets/images/theme15/pets_screen/cat.png";
      case AnimalSpecies.bird:
        return "assets/images/theme15/pets_images/chick_image.png";
      case AnimalSpecies.fish:
        return "assets/images/theme15/pets_screen/fishimage.png";
      case AnimalSpecies.reptile:
      case AnimalSpecies.rodent:
      case AnimalSpecies.rabbit:
      case AnimalSpecies.ferret:
      case AnimalSpecies.horse:
      case AnimalSpecies.cow:
      case AnimalSpecies.pig:
      case AnimalSpecies.sheep:
      case AnimalSpecies.goat:
      case AnimalSpecies.poultry:
      case AnimalSpecies.other:
      case AnimalSpecies.swaggerGeneratedUnknown:
        return "assets/images/theme15/pets_images/dog2.png";
    }
  }
}
