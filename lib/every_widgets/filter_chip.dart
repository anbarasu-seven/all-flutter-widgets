//!FilterChip

import 'package:flutter/material.dart';

class MyFilterChip extends StatefulWidget {
  const MyFilterChip({Key? key}) : super(key: key);

  @override
  State createState() => MyFilterChipState();
}

class MyFilterChipState extends State<MyFilterChip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilterChip(
        label: const Text('FilterChip'),
        selected: isSelected,
        onSelected: (bool value) {
          setState(() {
            isSelected = !isSelected;
          });
        },
        avatar: const Text('F'),
      ),
    );
  }
}
