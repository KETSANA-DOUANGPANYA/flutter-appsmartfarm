import 'package:appsmartfarm_flutter/controllers/HomeScreenController.dart';
import 'package:appsmartfarm_flutter/screens/MushroomDome/MushroomDomeScreen.dart';
import 'package:appsmartfarm_flutter/screens/SaladDome/SaladDomeScreen.dart';
import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:appsmartfarm_flutter/utils/AppSpaces.dart';
import 'package:appsmartfarm_flutter/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const TopSelectButton(),
              AppSpaces.vertical10,
              Expanded(
                child: Row(children: [
                  HomeButton(
                    image: AppAssets.salad,
                    text: 'ໂຮງສະຫັຼດ',
                    isSelected: controller.index == 0,
                    onTap: () {
                      controller.setIndex(0);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SaladDomeScreen(),
                        ),
                      );
                    },
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.mushroom,
                    text: 'ໂຮງເຫັດ',
                    isSelected: controller.index == 1,
                    onTap: () {
                      controller.setIndex(1);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MushroomDomeScreen(),
                        ),
                      );
                    },
                  ),
                ]),
              ),
              AppSpaces.vertical500,
            ],
          ),
        );
      },
    );
  }
}
