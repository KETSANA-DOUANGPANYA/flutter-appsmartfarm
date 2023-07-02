import 'package:appsmartfarm_flutter/packages.dart';
import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:appsmartfarm_flutter/utils/appGradient.dart';
import 'package:appsmartfarm_flutter/widgets/HumidityScreen.dart';
import 'package:appsmartfarm_flutter/widgets/LightsScreen.dart';
import 'package:appsmartfarm_flutter/widgets/TempatureScreen.dart';
import 'package:flutter/material.dart';
import 'package:appsmartfarm_flutter/constants/routes.dart' as custom_route;

class MushroomDomeScreen extends StatelessWidget {
  const MushroomDomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, custom_route.Route.tap);
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
                  AppAssets.mushroom,
                  scale: 12,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'ໂຮງເຮືອນເຫັດ',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  AppAssets.mushroom,
                  scale: 12,
                ),
              ],
            ),
            backgroundColor: Colors.white10,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 87,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25.0)),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: Get.theme.primaryColor,
                        borderRadius: BorderRadius.circular(25.0)),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Material(
                        elevation: 10,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          width: 87,
                          height: 87,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Tab(
                            icon: Image.asset(
                              AppAssets.washingroom,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            iconMargin: EdgeInsets.zero,
                            text: 'ອຸ່ນຫະພູມ',
                          ),
                        ),
                      ),
                      Material(
                        elevation: 10,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          width: 87,
                          height: 87,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Tab(
                            icon: Image.asset(
                              AppAssets.humidity,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            iconMargin: EdgeInsets.zero,
                            text: 'ອຸ່ນຫະພູມ',
                          ),
                        ),
                      ),
                      Material(
                        elevation: 10,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          width: 87,
                          height: 87,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Tab(
                            icon: Image.asset(
                              AppAssets.light,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            iconMargin: EdgeInsets.zero,
                            text: 'ຄວາມເຂັ້ມເເສງ',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                    child: TabBarView(
                  children: [
                    TempatureScreen(),
                    HumidityScreen(),
                    LightsScreen(),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
