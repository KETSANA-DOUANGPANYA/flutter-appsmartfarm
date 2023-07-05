import 'package:flutter/material.dart' show Alignment, Color, LinearGradient;
import 'package:get/get.dart';

const appGradient = LinearGradient(
  colors: [
    // Get.theme.primaryColor,
    // Get.theme.colorScheme.secondary,
    Color(0xFF0066FF), Color(0xFF0066FF), Color.fromARGB(255, 165, 215, 243)
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
