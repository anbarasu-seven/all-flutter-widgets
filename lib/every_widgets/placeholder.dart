//! Placeholder

import 'package:flutter/material.dart';

class MyPlaceholder extends StatelessWidget {
  const MyPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Placeholder(
          fallbackHeight: 300,
          fallbackWidth: 50,
          color: Colors.orangeAccent,
        ),
      ],
    );
  }
}
