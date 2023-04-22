//! AnimatedSize

import 'package:flutter/material.dart';

class MyAnimatedSize extends StatefulWidget {
  const MyAnimatedSize({Key? key}) : super(key: key);

  @override
  State<MyAnimatedSize> createState() => _MyAnimatedSizeState();
}

class _MyAnimatedSizeState extends State<MyAnimatedSize> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _size = _size == 300 ? 100 : 300;
        });
      },
      child: Container(
        color: Colors.white,
        child: AnimatedSize(
          curve: Curves.easeIn,
          duration: const Duration(seconds: 1),
          child: FlutterLogo(size: _size),
        ),
      ),
    );
  }
}
