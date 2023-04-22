//! ScaleTransition

import 'package:flutter/material.dart';

class MyScaleTransition extends StatefulWidget {
  const MyScaleTransition({Key? key}) : super(key: key);

  @override
  State<MyScaleTransition> createState() => _MyScaleTransitionState();
}

class _MyScaleTransitionState extends State<MyScaleTransition> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _animation,
        child: const FlutterLogo(size: 150.0),
      ),
    );
  }
}
