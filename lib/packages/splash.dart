import 'package:appsmartfarm_flutter/screens/LoginScreen/LoginScreen.dart';
import 'package:appsmartfarm_flutter/utils/AppAssets.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        duration: 5000,
        splash: Image.asset(
          AppAssets.iconapp,
        ),
        splashIconSize: 200,
        nextScreen: const Login(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
