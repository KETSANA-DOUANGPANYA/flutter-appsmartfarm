import 'package:appsmartfarm_flutter/controllers/HomeScreenController.dart';
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
                    image: AppAssets.livingroom.toString(),
                    text: 'Living Room',
                    isSelected: controller.index == 0,
                    onTap: () => controller.setIndex(0),
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.bedroom.toString(),
                    text: 'Bedroom',
                    isSelected: controller.index == 1,
                    onTap: () => controller.setIndex(1),
                  ),
                ]),
              ),
              AppSpaces.vertical20,
              Expanded(
                child: Row(children: [
                  HomeButton(
                    image: AppAssets.kitchen.toString(),
                    text: 'Kitchen',
                    isSelected: controller.index == 2,
                    onTap: () => controller.setIndex(2),
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.bathroom.toString(),
                    text: 'Bathroom',
                    isSelected: controller.index == 3,
                    onTap: () => controller.setIndex(3),
                  ),
                ]),
              ),
              AppSpaces.vertical20,
              Expanded(
                child: Row(children: [
                  HomeButton(
                    image: AppAssets.studio.toString(),
                    text: 'Studio',
                    isSelected: controller.index == 4,
                    onTap: () => controller.setIndex(4),
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.washingroom.toString(),
                    text: 'Washing Room',
                    isSelected: controller.index == 5,
                    onTap: () => controller.setIndex(5),
                  ),
                ]),
              ),
            ],
          ),
        );
      },
    );
  }
}
