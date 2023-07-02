import 'package:appsmartfarm_flutter/screens/BottomNavigationScreen/BottomNavigationScreen.dart';
import 'package:appsmartfarm_flutter/screens/HomeScreen/HomeScreen.dart';
import 'package:appsmartfarm_flutter/screens/LoginScreen/LoginScreen.dart';
import 'package:appsmartfarm_flutter/screens/RegisterScreen/RegisterScreen.dart';

import 'package:flutter/cupertino.dart';

class Route {
  static const login = 'login';
  static const register = 'register';
  static const tap = 'tapmenu';
  static const home = 'home';

  static Map<String, WidgetBuilder> getAll() => _route;
  static final Map<String, WidgetBuilder> _route = {
    'login': (context) => const Login(),
    'register': (context) => const RegisterScreen(),
    'tapmenu': (context) => const BottomNavigationScreen(),
    'home': (context) => const HomeScreen(),
  };
}
