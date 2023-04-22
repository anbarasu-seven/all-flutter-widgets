//!PopupMenuButton

import 'package:flutter/material.dart';

class MyPopupMenuButton extends StatefulWidget {
  const MyPopupMenuButton({Key? key}) : super(key: key);

  @override
  State<MyPopupMenuButton> createState() => _MyPopupMenuButtonState();
}

class _MyPopupMenuButtonState extends State<MyPopupMenuButton> {
  String title = 'First item';
  String item1 = 'First item';
  String item2 = 'Second item';
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text(item1),
            value: item1,
          ),
          PopupMenuItem(
            child: Text(item2),
            value: item2,
          )
        ],
        onSelected: (String newValue) {
          setState(() {
            title = newValue;
          });
        },
      ),
    );
  }
}
