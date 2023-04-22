//! TweenAnimationBuilder

//? LEFT: 7!

import 'package:flutter/material.dart';

class MyTweenAnimationBuilder extends StatefulWidget {
  const MyTweenAnimationBuilder({Key? key}) : super(key: key);

  @override
  State<MyTweenAnimationBuilder> createState() => _MyTweenAnimationBuilderState();
}

class _MyTweenAnimationBuilderState extends State<MyTweenAnimationBuilder> {
  double targetValue = 100;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: targetValue),
        duration: const Duration(milliseconds: 500),
        builder: (BuildContext context, double size, Widget? child) {
          return IconButton(
            iconSize: size,
            color: Colors.orangeAccent,
            icon: const Icon(Icons.flutter_dash),
            onPressed: () {
              setState(() {
                targetValue = targetValue == 100 ? 250 : 100;
              });
            },
          );
        },
      ),
    );
  }
}
