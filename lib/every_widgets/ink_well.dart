//! InkWell

import 'package:flutter/material.dart';

class MyInkWell extends StatefulWidget {
  const MyInkWell({Key? key}) : super(key: key);

  @override
  State<MyInkWell> createState() => _MyInkWellState();
}

class _MyInkWellState extends State<MyInkWell> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            color = Colors.red;
          });
        },
        //onDoubleTap: () {},
        //onLongPress: () {},
        child: Ink(
          height: 300,
          width: 300,
          color: color,
          child: const Center(
            child: Text('Click'),
          ),
        ),
      ),
    );
  }
}
