//! OrientationBuilder

import 'package:flutter/material.dart';

class MyOrientationBuilder extends StatelessWidget {
  const MyOrientationBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const Center(
            child: Text('Portrait'),
          );
        } else {
          return const Center(
            child: Text('Landscape'),
          );
        }
      },
    );
  }
}
