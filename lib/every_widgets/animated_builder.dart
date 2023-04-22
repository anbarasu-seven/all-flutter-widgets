import 'dart:math' as math;

//!AnimatedBuilder

import 'package:flutter/material.dart';

class MyAnimatedBuilder extends StatefulWidget {
  const MyAnimatedBuilder({Key? key}) : super(key: key);

  @override
  State<MyAnimatedBuilder> createState() => _MyAnimatedBuilderState();
}

class _MyAnimatedBuilderState extends State<MyAnimatedBuilder> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: const FlutterLogo(
          size: 100,
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
