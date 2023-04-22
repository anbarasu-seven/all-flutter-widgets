//! toggle buttons

import 'package:flutter/material.dart';

class MyToggleButtons extends StatefulWidget {
  const MyToggleButtons({Key? key}) : super(key: key);

  @override
  State<MyToggleButtons> createState() => _MyToggleButtonsState();
}

class _MyToggleButtonsState extends State<MyToggleButtons> {
  List<bool> isSelected = [
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: const [
          Icon(Icons.home),
          Icon(Icons.settings),
          Icon(Icons.person),
        ],
        onPressed: (int index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
        isSelected: isSelected,
      ),
    );
  }
}
