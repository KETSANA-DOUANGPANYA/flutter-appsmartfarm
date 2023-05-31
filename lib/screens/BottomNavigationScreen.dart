import 'package:appsmartfarm_flutter/controllers/BottomNavigationController.dart';
import 'package:appsmartfarm_flutter/screens/HomeScreen.dart';
import 'package:appsmartfarm_flutter/screens/LightsScreen.dart';
import 'package:appsmartfarm_flutter/screens/TempatureScreen.dart';
import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(
        init: BottomNavigationController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              body: IndexedStack(
                index: 0,
                children: [
                  [
                    const HomeScreen(),
                    const TempatureScreen(),
                    const LightsScreen(),
                  ][controller.index]
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: controller.index,
                onTap: controller.setIndex,
                selectedLabelStyle: const TextStyle(fontSize: 10),
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey,
                items: const [
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage(AppAssets.bedroom),
                      width: 30,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.verified_user),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.signal_cellular_alt),
                    label: '',
                  ),
                ],
              ),
            ),
          );
        });
  }
}
