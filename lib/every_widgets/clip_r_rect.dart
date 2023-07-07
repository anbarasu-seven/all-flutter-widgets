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
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0)),
        child: Image.asset(
          'assets/icon/ocean.jpg',
        ),
      ),
    );
  }
}
