//!MouseRegion

import 'package:flutter/material.dart';

class MyMouseRegion extends StatefulWidget {
  const MyMouseRegion({Key? key}) : super(key: key);

  @override
  State<MyMouseRegion> createState() => _MyMouseRegionState();
}

class _MyMouseRegionState extends State<MyMouseRegion> {
  int enterCount = 0;
  int exitCount = 0;
  double x = 0.0;
  double y = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        onEnter: (PointerEvent details) {
          setState(() {
            enterCount++;
          });
        },
        onHover: (PointerEvent details) {
          setState(() {
            x = details.position.dx;
            y = details.position.dy;
          });
        },
        onExit: (PointerEvent details) {
          setState(() {
            exitCount++;
          });
        },
        child: Container(
          color: Colors.orangeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Enters: $enterCount',
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              Text(
                'Exits: $exitCount',
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              Text(
                'Curser: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
