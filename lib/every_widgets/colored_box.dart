//! ColoredBox
import 'package:flutter/material.dart';

class MyColoredBox extends StatelessWidget {
  const MyColoredBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ColoredBox(
        color: Colors.orangeAccent,
        child: SizedBox(
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
