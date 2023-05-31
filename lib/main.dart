import 'package:appsmartfarm_flutter/screens/BottomNavigationScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'HR Controller',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xff867cef),
        backgroundColor: const Color(0xfff0f0f0),
        disabledColor: const Color(0xffededed),
        colorScheme:
            ColorScheme.fromSwatch(accentColor: const Color(0xffaf92ea)),
        textTheme: GoogleFonts.openSansTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BottomNavigationScreen(),
    );
  }
}
