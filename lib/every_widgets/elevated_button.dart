//!ElevatedButton

import 'package:flutter/material.dart';

class MyElevatedButton extends StatefulWidget {
  const MyElevatedButton({Key? key}) : super(key: key);

  @override
  State<MyElevatedButton> createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ElevatedButton(
            onPressed: null,
            child: Text('Disabled'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Enabled'),
            icon: const Icon(Icons.message),
          ),
        ],
      ),
    );
  }
}
