//! CircularProgressIndicator
import 'package:flutter/material.dart';

class MyCircularProgressIndicator extends StatelessWidget {
  const MyCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.redAccent,
        backgroundColor: Colors.black12,
        strokeWidth: 2.0,
      ),
    );
  }
}
