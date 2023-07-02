import 'package:appsmartfarm_flutter/screens/LoginScreen/components/body.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String emailPref = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Scaffold(body: Body()));
  }
}
