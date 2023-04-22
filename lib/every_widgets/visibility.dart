//! Visibility

import 'package:flutter/material.dart';

class MyVisibility extends StatefulWidget {
  const MyVisibility({Key? key}) : super(key: key);

  @override
  State<MyVisibility> createState() => _MyVisibilityState();
}

class _MyVisibilityState extends State<MyVisibility> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: const Text(
              'Show / Hide',
            ),
          ),
          Image.asset(
            'assets/icon/blue.jpg',
            width: 300,
          ),
          const SizedBox(height: 30),
          Visibility(
            visible: isVisible,
            child: Image.asset(
              'assets/icon/ocean.jpg',
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
