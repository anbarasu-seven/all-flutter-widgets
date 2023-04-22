//! RadioListTile

import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class MyRadioListTile extends StatefulWidget {
  const MyRadioListTile({Key? key}) : super(key: key);

  @override
  State<MyRadioListTile> createState() => _MyRadioListTileState();
}

List<String> options = ['Option 1', 'Option 2'];

class _MyRadioListTileState extends State<MyRadioListTile> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          title: const Text('Option 1'),
          value: options[0],
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text('Option 2'),
          value: options[1],
          groupValue: currentOption,
          onChanged: (value) {
            setState(() {
              currentOption = value.toString();
            });
          },
        ),
      ],
    );
  }
}
