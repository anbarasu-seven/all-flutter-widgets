//! Center

import 'package:flutter/material.dart';

class MyCenterWidget extends StatelessWidget {
  const MyCenterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          color: Colors.orangeAccent,
          child: const Center(
            heightFactor: 5,
            child: Text('Flutter Mapp'),
          ),
        ),
      ],
    );
  }
}
