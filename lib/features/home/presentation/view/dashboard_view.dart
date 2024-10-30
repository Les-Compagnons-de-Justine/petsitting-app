import 'package:flutter/material.dart';
import 'package:petsitting/features/home/presentation/components/dashboard_card_component.dart';
import 'package:petsitting/features/home/presentation/components/dashboard_title_component.dart';
import 'package:petsitting/features/home/presentation/widgets/missions_list_widget.dart';
import 'package:petsitting/features/home/presentation/widgets/pet_service_list_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28),
                DashboardTitleComponent(),
                SizedBox(height: 8),
                MissionsListWidget(),
                SizedBox(height: 16),
                VetAssistantCardComponent(),
                PetServiceListWidget(),
              ],
            ),
          ),
        ),
      );
    }
  }
}
