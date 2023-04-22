//! OverflowBar

import 'package:flutter/material.dart';

class MyOverflowBar extends StatelessWidget {
  const MyOverflowBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OverflowBar(
        spacing: 8,
        children: <Widget>[
          ElevatedButton(
            child: const Text('Flutter Mapp'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text('Flutter Mapp'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text('Flutter Mapp'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
