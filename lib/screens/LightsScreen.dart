import 'package:appsmartfarm_flutter/controllers/LightsController.dart';
import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:appsmartfarm_flutter/utils/AppSpaces.dart';
import 'package:appsmartfarm_flutter/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:appsmartfarm_flutter/constants/routes.dart' as custom_route;

class LightsScreen extends StatelessWidget {
  const LightsScreen({Key? key}) : super(key: key);

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
      body: GetBuilder<LightsController>(
        init: LightsController(),
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
                        controller.index.value = 0;
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
                'ຄວາມເຂັ້ມເເສງ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
              AppSpaces.vertical10,
              Image.asset(
                AppAssets.sun,
                height: 40,
              ),
              AppSpaces.vertical10,
              Expanded(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Get.theme.primaryColor,
                      inactiveTrackColor: Get.theme.disabledColor,
                      thumbColor: Colors.transparent,
                      overlayColor: Colors.transparent,
                      thumbSelector: (textDirection, values, tapValue,
                              thumbSize, trackSize, dx) =>
                          Thumb.start,
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 1,
                        elevation: 0.0,
                      ),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 1),
                      trackHeight: Get.width / 3,
                      // trackShape:
                      // CustomRoundedRectSliderTrackShape(Radius.circular(12)),
                    ),
                    child: Obx(
                      () => Slider(
                        onChanged: (value) =>
                            controller.sliderData.value = value,
                        min: 0,
                        max: 100,
                        value: controller.sliderData.value,
                      ),
                    ),
                  ),
                ),
              ),
              AppSpaces.vertical20,
              Obx(
                () => FlutterSwitch(
                  value: controller.switchData.value,
                  onToggle: (value) => controller.switchData.value = value,
                  inactiveColor: Get.theme.disabledColor,
                  activeColor: Get.theme.disabledColor,
                  padding: 0.0,
                  toggleColor: Get.theme.primaryColor,
                  toggleSize: 30.0,
                  height: 30,
                ),
              ),
              AppSpaces.vertical20,
            ]),
          );
        },
      ),
    );
  }
}
