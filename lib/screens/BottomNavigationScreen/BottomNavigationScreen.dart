import 'package:appsmartfarm_flutter/controllers/BottomNavigationController.dart';
import 'package:appsmartfarm_flutter/screens/HomeScreen/HomeScreen.dart';
import 'package:appsmartfarm_flutter/screens/ProfileScreen/ProfileScreen.dart';
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
                    const ProfileScreen(),
                  ][controller.index]
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: controller.index,
                onTap: controller.setIndex,
                selectedLabelStyle:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey,
                items: const [
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage(AppAssets.home),
                      width: 40,
                    ),
                    label: 'ໜ້າຫຼັກ',
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage(AppAssets.profile),
                      width: 30,
                    ),
                    label: 'ບັນຊີ',
                  ),
                ],
              ),
            ),
          );
        });
  }
}
