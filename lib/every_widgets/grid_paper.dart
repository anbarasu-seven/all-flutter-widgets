//! GridPaper
import 'package:flutter/material.dart';

class MyGridPaper extends StatelessWidget {
  const MyGridPaper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: GridPaper(
        color: Colors.pink,
        divisions: 1,
        interval: 210,
        subdivisions: 6,
      ),
    );
  }
}
