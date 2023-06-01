import 'package:appsmartfarm_flutter/controllers/HomeScreenController.dart';
import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:appsmartfarm_flutter/utils/AppSpaces.dart';
import 'package:appsmartfarm_flutter/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appsmartfarm_flutter/constants/routes.dart' as custom_route;

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
                      Navigator.pushReplacementNamed(
                          context, custom_route.Route.temperature);
                    },
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.mushroom,
                    text: 'ໂຮງເຫັດ',
                    isSelected: controller.index == 1,
                    onTap: () {
                      controller.setIndex(1);
                      Navigator.pushReplacementNamed(
                          context, custom_route.Route.temperature);
                    },
                  ),
                ]),
              ),
              AppSpaces.vertical20,
              Expanded(
                child: Row(children: [
                  HomeButton(
                    image: AppAssets.nullfuture,
                    text: 'Null',
                    isSelected: controller.index == 2,
                    onTap: () => controller.setIndex(2),
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.nullfuture,
                    text: 'Null',
                    isSelected: controller.index == 3,
                    onTap: () => controller.setIndex(3),
                  ),
                ]),
              ),
              AppSpaces.vertical20,
              Expanded(
                child: Row(children: [
                  HomeButton(
                    image: AppAssets.nullfuture,
                    text: 'Null',
                    isSelected: controller.index == 4,
                    onTap: () => controller.setIndex(4),
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.nullfuture,
                    text: 'Null',
                    isSelected: controller.index == 5,
                    onTap: () => controller.setIndex(5),
                  ),
                ]),
              ),
              AppSpaces.vertical30,
            ],
          ),
        );
      },
    );
  }
}
