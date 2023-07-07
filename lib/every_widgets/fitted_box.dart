//!FittedBox

import 'package:flutter/material.dart';

class MyFittedBox extends StatelessWidget {
  const MyFittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        color: Colors.orangeAccent,
        child: const FittedBox(
          child: Text(
            'This is a pretty',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
