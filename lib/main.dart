import 'package:appsmartfarm_flutter/packages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/routes.dart' as custom_route;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: custom_route.Route.getAll(),
      debugShowCheckedModeBanner: false,
      title: 'App_SmartFarm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xff70A7FA),
        backgroundColor: const Color(0xfff0f0f0),
        disabledColor: const Color(0xffededed),
        colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color.fromARGB(255, 255, 255, 255)),
        textTheme: GoogleFonts.openSansTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Splash(),
    );
  }
}
