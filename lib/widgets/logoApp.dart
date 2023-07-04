import 'package:appsmartfarm_flutter/packages.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.iconapp))),
    );
  }
}
