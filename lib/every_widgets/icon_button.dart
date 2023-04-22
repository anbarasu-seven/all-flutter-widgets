//!IconButton

import 'package:flutter/material.dart';

class MyIconButton extends StatefulWidget {
  const MyIconButton({Key? key}) : super(key: key);

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  int click = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_box),
            iconSize: 50,
            onPressed: () {
              setState(() {
                click += 1;
              });
            },
            //with many other arguments
          ),
          Text(
            'Click $click',
            style: const TextStyle(
              fontSize: 40,
            ),
          )
        ],
      ),
    );
  }
}
