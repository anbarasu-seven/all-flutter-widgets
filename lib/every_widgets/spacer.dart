//! spacer

import 'package:flutter/material.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orangeAccent,
          height: 100,
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          color: Colors.orangeAccent,
          height: 100,
        ),
        const Spacer(
          flex: 2,
        ),
        Container(
          color: Colors.orangeAccent,
          height: 100,
        )
      ],
    );
  }
}
