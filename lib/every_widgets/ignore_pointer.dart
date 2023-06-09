//!IgnorePointer

import 'package:flutter/material.dart';

class MyIgnorePointer extends StatefulWidget {
  const MyIgnorePointer({Key? key}) : super(key: key);

  @override
  State<MyIgnorePointer> createState() => _MyIgnorePointerState();
}

class _MyIgnorePointerState extends State<MyIgnorePointer> {
  bool ignore = false;

  void setIgnoring(bool newValue) {
    setState(() {
      ignore = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              setIgnoring(!ignore);
            },
            child: Text(
              ignore ? 'Blocked' : 'All good',
            ),
            style: ElevatedButton.styleFrom(
              primary: ignore ? Colors.red : Colors.green,
            ),
          ),
          IgnorePointer(
            ignoring: ignore,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click me!'),
            ),
          ),
        ],
      ),
    );
  }
}
