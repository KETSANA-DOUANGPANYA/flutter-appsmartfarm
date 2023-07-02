import 'package:appsmartfarm_flutter/screens/BottomNavigationScreen/BottomNavigationScreen.dart';
import 'package:appsmartfarm_flutter/screens/LoginScreen/LoginScreen.dart';
import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.white,
      duration: 2000,
      splash: Image.asset(
        AppAssets.salad,
        width: 400,
        height: 400,
      ),
      nextScreen: const Login(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
