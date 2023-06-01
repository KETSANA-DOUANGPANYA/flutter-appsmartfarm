import 'package:appsmartfarm_flutter/controllers/HumidityController.dart';
import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:appsmartfarm_flutter/utils/AppSpaces.dart';
import 'package:appsmartfarm_flutter/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:appsmartfarm_flutter/constants/routes.dart' as custom_route;

class HumidityScreen extends StatelessWidget {
  const HumidityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, custom_route.Route.tap);
            },
            icon: Image.asset(
              AppAssets.arrow,
              width: 25,
            )),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.salad,
              scale: 12,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'ໂຮງເຮືອນສະຫຼັດ',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              AppAssets.salad,
              scale: 12,
            ),
          ],
        ),
        backgroundColor: Colors.white10,
      ),
      body: GetBuilder<HumidityController>(
        init: HumidityController(),
        builder: (controller) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(children: [
              AppSpaces.vertical10,
              SizedBox(
                height: (Get.width - 60) / 3,
                child: Obx(
                  () => Row(children: [
                    HomeButton(
                      image: AppAssets.temperature,
                      isSelected: controller.index.value == 0,
                      text: 'ອຸ່ນຫະພູມ',
                      onTap: () {
                        controller.index.value = 1;
                        Navigator.pushReplacementNamed(
                            context, custom_route.Route.temperature);
                      },
                      unSelectedImageColor: Colors.black,
                      fontSize: 16,
                    ),
                    AppSpaces.horizontal10,
                    HomeButton(
                      image: AppAssets.humidity,
                      isSelected: controller.index.value == 1,
                      text: 'ຄວາມຊຸ່ມ',
                      unSelectedImageColor: Colors.black,
                      onTap: () {
                        controller.index.value = 1;
                        Navigator.pushReplacementNamed(
                            context, custom_route.Route.humidity);
                      },
                      fontSize: 16,
                    ),
                    AppSpaces.horizontal10,
                    HomeButton(
                      image: AppAssets.light,
                      isSelected: controller.index.value == 2,
                      text: 'ເເສງ',
                      unSelectedImageColor: Colors.black,
                      onTap: () {
                        controller.index.value = 2;
                        Navigator.pushReplacementNamed(
                            context, custom_route.Route.lightscreen);
                      },
                      fontSize: 16,
                    ),
                  ]),
                ),
              ),
              AppSpaces.vertical20,
              const Text(
                'ຄວາມຊຸ່ມ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
              AppSpaces.vertical30,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SleekCircularSlider(
                    appearance: CircularSliderAppearance(
                      customColors: CustomSliderColors(
                        trackColor: Get.theme.disabledColor,
                        dotColor: Get.theme.disabledColor,
                        progressBarColor: Get.theme.primaryColor,
                      ),
                      startAngle: 130.0,
                      angleRange: 280.0,
                      size: Get.mediaQuery.size.height,
                      customWidths: CustomSliderWidths(
                          progressBarWidth: 5, handlerSize: 10),
                    ),
                    min: 13,
                    max: 25,
                    initialValue: controller.humidity.value,
                    onChangeEnd: (_value) => controller.humidity.value = _value,
                    innerWidget: (percentage) => Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 7,
                                  spreadRadius: 8,
                                ),
                              ],
                            ),
                            child: Container(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Get.theme.primaryColor,
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    '${percentage.toStringAsFixed(0)}°C',
                                    style: TextStyle(
                                      fontSize: 15 +
                                          (22 *
                                              683 /
                                              Get.mediaQuery.size.height),
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ))),
                      ),
                    ),
                  ),
                ),
              ),
              const CircleButton(),
              AppSpaces.vertical10,
              const Text('Click to turn off'),
              AppSpaces.vertical10,
              AppButton(
                onTap: () {},
                text: 'Set Tempature',
              ),
              AppSpaces.vertical30,
            ]),
          );
        },
      ),
    );
  }
}
