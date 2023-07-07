//! Checkbox
import 'package:flutter/material.dart';

class MyCheckboxWidget extends StatefulWidget {
  const MyCheckboxWidget({Key? key}) : super(key: key);

  @override
  State<MyCheckboxWidget> createState() => _MyCheckboxWidgetState();
}

class _MyCheckboxWidgetState extends State<MyCheckboxWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
        value: isChecked,
        activeColor: Colors.orangeAccent,
        tristate: false,
        onChanged: (newBool) {
          setState(() {
            isChecked = newBool;
          });
        },
      ),
    );
  }
}
