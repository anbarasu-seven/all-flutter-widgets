//!FlutterLogo

import 'package:flutter/material.dart';

class MyFlutterLogo extends StatelessWidget {
  const MyFlutterLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FlutterLogo(
        size: 300,
        style: FlutterLogoStyle.markOnly,
        textColor: Colors.blue,
      ),
    );
  }
}
