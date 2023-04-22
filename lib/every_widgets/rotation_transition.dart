//! RotationTransition

import 'package:flutter/material.dart';

class MyRotationTransition extends StatefulWidget {
  const MyRotationTransition({Key? key}) : super(key: key);

  @override
  State<MyRotationTransition> createState() => _MyRotationTransitionState();
}

class _MyRotationTransitionState extends State<MyRotationTransition> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInCirc,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: _animation,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(size: 150.0),
        ),
      ),
    );
  }
}
