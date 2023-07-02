import 'package:appsmartfarm_flutter/packages.dart';
import 'package:appsmartfarm_flutter/controllers/HumidityController.dart';

class HumidityScreen extends StatelessWidget {
  const HumidityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HumidityController>(
      init: HumidityController(),
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(children: [
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
                  onChangeEnd: (value) => controller.humidity.value = value,
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
                                  '${percentage.toStringAsFixed(0)} %',
                                  style: TextStyle(
                                    fontSize: 15 +
                                        (22 * 683 / Get.mediaQuery.size.height),
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
            const Text('ກົດເພື່ອປິດ'),
            AppSpaces.vertical10,
            AppButton(
              onTap: () {},
              text: 'ຕັ້ງຄ່າອຸ່ນຫະພູມ',
            ),
            AppSpaces.vertical30,
          ]),
        );
      },
    );
  }
}
