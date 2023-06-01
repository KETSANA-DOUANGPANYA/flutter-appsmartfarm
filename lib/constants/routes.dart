import 'package:appsmartfarm_flutter/screens/BottomNavigationScreen.dart';
import 'package:appsmartfarm_flutter/screens/HomeScreen.dart';
import 'package:appsmartfarm_flutter/screens/HumidityScreen.dart';
import 'package:appsmartfarm_flutter/screens/LightsScreen.dart';
import 'package:appsmartfarm_flutter/screens/LoginScreen/LoginScreen.dart';
import 'package:appsmartfarm_flutter/screens/RegisterScreen/RegisterScreen.dart';
import 'package:appsmartfarm_flutter/screens/TempatureScreen.dart';
import 'package:flutter/cupertino.dart';

class Route {
  static const login = 'login';
  static const register = 'register';
  static const tap = 'tapmenu';
  static const home = 'home';
  static const temperature = 'temperatureScreen';
  static const humidity = 'humidityScreen';
  static const lightscreen = 'lightscreen';

  static Map<String, WidgetBuilder> getAll() => _route;
  static final Map<String, WidgetBuilder> _route = {
    'login': (context) => const LoginScreen(),
    'register': (context) => const RegisterScreen(),
    'tapmenu': (context) => const BottomNavigationScreen(),
    'home': (context) => const HomeScreen(),
    'temperatureScreen': (context) => TempatureScreen(),
    'humidityScreen': (context) => const HumidityScreen(),
    'lightscreen': (context) => const LightsScreen(),
  };
}
