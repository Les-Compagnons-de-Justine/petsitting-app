import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:petsitting/core/bloc/animal/list/animal_list_cubit.dart';
import 'package:petsitting/core/extensions/animal_extension.dart';
import 'package:petsitting/core/extensions/context_extension.dart';
import 'package:petsitting/core/router/route_names.dart';
import 'package:petsitting/core/utils/colors.dart';
import 'package:petsitting/core/utils/comman.dart';
import 'package:petsitting/core/utils/text_styles.dart';
import 'package:petsitting/core/widgets/app_button.dart';
import 'package:petsitting/features/pet_management/presentation/widgets/pets_screen_appbar_components.dart';
import 'package:petsitting/features/pet_management/presentation/widgets/pets_screen_details_card.dart';
import 'package:petsitting/features/pet_management/presentation/widgets/pets_screen_owners_component.dart';

class PetDetailScreen extends StatelessWidget {
  const PetDetailScreen({
    super.key,
    required this.petId,
  });

  final String petId;

  @override
  Widget build(BuildContext context) {
    final animal = context.watch<AnimalListCubit>().state.maybeWhen(
          loaded: (animals) =>
              animals.firstWhere((element) => element.id == petId),
          orElse: () => null,
        );

    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(height: height + height / 4 - 40),
                Container(
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/theme15/pets_screen/pets_screen_image_1.jpg",
                    fit: BoxFit.cover,
                    height: height * 0.58,
                  ),
                ),
                Positioned(
                  top: height * 0.45,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: context.cardColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: PetsScreenOwnersComponent(
                            owner: animal!.name,
                            address: animal.owner.address.formattedAddress,
                            onEditPressed: () => context
                                .navigate(RouteNames.editAnimalId(animal.id!)),
                          ),
                        ),
                        Wrap(
                          spacing: 24,
                          children: [
                            PetsScreenDetailsCardComponents(
                                color: Color(0xfffce5e0),
                                gender: animal.gender?.readableName ??
                                    "À renseigner",
                                sex: "Sexe"),
                            PetsScreenDetailsCardComponents(
                                color: Color(0xffeaf9e7),
                                gender:
                                    Jiffy.parseFromDateTime(animal.birthDate)
                                        .diff(Jiffy.now(), unit: Unit.year)
                                        .abs()
                                        .toString(),
                                sex: "Age"),
                            if (animal.weight != null)
                              PetsScreenDetailsCardComponents(
                                  color: Colors.blue.shade50,
                                  gender: "${animal.weight} Kg",
                                  sex: "Poids"),
                          ],
                        ),
                        SizedBox(height: 20),
                        FutureBuilder(
                          future: AdaptiveTheme.getThemeMode(),
                          builder: (context, snapshot) {
                            return Container(
                              padding: EdgeInsets.all(16),
                              width: MediaQuery.of(context).size.width - 16,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 0.5,
                                    spreadRadius: 0.2,
                                    offset: Offset(1, 1),
                                  ),
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 0.5,
                                    spreadRadius: 0.2,
                                    offset: Offset(0, 1),
                                  )
                                ],
                                color: (snapshot.data?.isDark ?? false)
                                    ? Colors.black12
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(36),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 0.5,
                                            spreadRadius: 0.2,
                                            offset: Offset(1, 1)),
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 0.5,
                                            spreadRadius: 0.2,
                                            offset: Offset(0, 1))
                                      ],
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/theme15/account_images/profile2.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${animal.owner.firstname} ${animal.owner.lastname}",
                                          style: boldTextStyle(),
                                        ),
                                        SizedBox(height: 6),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/images/theme15/icons/location.png",
                                              height: 15,
                                              width: 15,
                                              color: tertiarycolor,
                                            ),
                                            SizedBox(width: 4),
                                            Expanded(
                                              child: Text(
                                                animal.owner.address
                                                    .formattedAddress,
                                                style: style2,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Wrap(
                                    spacing: 8,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xffbfdcf7),
                                          ),
                                          child: Image.asset(
                                            "assets/images/theme15/icons/messenger.png",
                                            height: 20,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xfff8e5e4),
                                          ),
                                          child: Icon(
                                            Icons.call,
                                            size: 20,
                                            color: tertiarycolor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 16),
                        if (animal.behaviorNotes != null)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Details',
                              textAlign: TextAlign.left,
                              style: boldTextStyle(size: 20),
                            ),
                            SizedBox(height: 10),
                            
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 32,
                                child: Text(
                                  animal.behaviorNotes!,
                                  textAlign: TextAlign.justify,
                                  style: primaryTextStyle(),
                                ),
                              ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: primarycolor,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 0.5,
                                            spreadRadius: 0.2,
                                            offset: Offset(1, 1)),
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 0.5,
                                            spreadRadius: 0.2,
                                            offset: Offset(0, 1)),
                                      ]),
                                  child: Image.asset(
                                    height: 30,
                                    width: 30,
                                    "assets/images/theme15/icons/chat_icon.png",
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 16),
                                AppButton(
                                  text: 'Adopt Now',
                                  textColor: Colors.white,
                                  color: primarycolor,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).viewPadding.top + 16,
                  width: MediaQuery.of(context).size.width - 32,
                  left: 16,
                  child: PetsScreenAppbarComponents(
                      rightIconImage:
                          "assets/images/theme15/icons/donation.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
