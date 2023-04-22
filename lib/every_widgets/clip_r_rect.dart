//! ClipRRect
import 'package:flutter/material.dart';

class MyClipRRect extends StatefulWidget {
  const MyClipRRect({Key? key}) : super(key: key);

  @override
  State<MyClipRRect> createState() => _MyClipRRectState();
}

class _MyClipRRectState extends State<MyClipRRect> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/icon/ocean.jpg',
          width: 350,
        ),
      ),
    );
  }
}
