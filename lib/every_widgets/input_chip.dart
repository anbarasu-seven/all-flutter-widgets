//!InputChip

import 'package:flutter/material.dart';

class MyInputChip extends StatefulWidget {
  const MyInputChip({Key? key}) : super(key: key);

  @override
  State<MyInputChip> createState() => _MyInputChipState();
}

class _MyInputChipState extends State<MyInputChip> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InputChip(
        avatar: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://tinyurl.com/5n88rk79',
          ),
        ),
        label: const Text('Einstein'),
        onSelected: (bool newBool) {
          setState(() {
            isSelected = !isSelected;
          });
        },
        selected: isSelected,
        selectedColor: Colors.white38,
        deleteIcon: const Icon(Icons.cancel_outlined),
        onDeleted: () {},
      ),
    );
  }
}
