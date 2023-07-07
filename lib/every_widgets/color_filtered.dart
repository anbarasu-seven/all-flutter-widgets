//! ColorFiltered
import 'package:flutter/material.dart';

class MyColorFiltered extends StatelessWidget {
  const MyColorFiltered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(
        Colors.blue,
        BlendMode.color,
      ),
      child: Image.asset('assets/icon/blue.jpg'),
    );
  }
}
