//!Selectable Text

import 'package:flutter/material.dart';

class MySelectableText extends StatefulWidget {
  const MySelectableText({Key? key}) : super(key: key);

  @override
  State<MySelectableText> createState() => _MySelectableTextState();
}

class _MySelectableTextState extends State<MySelectableText> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectableText(
        'This is selectable',
        style: const TextStyle(fontSize: 30),
        onSelectionChanged: (selection, cause) {},
      ),
    );
  }
}
