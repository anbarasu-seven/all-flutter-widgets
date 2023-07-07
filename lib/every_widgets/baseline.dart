//! Baseline

import 'package:flutter/material.dart';

class MyBaseline extends StatelessWidget {
  const MyBaseline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.orange,
        child: const Baseline(
          baseline: 150,
          baselineType: TextBaseline.alphabetic,
          child: FlutterLogo(size: 50),
        ),
      ),
    );
  }
}
