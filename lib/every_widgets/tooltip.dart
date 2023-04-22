//!Tooltip
import 'package:flutter/material.dart';

class MyTooltip extends StatelessWidget {
  const MyTooltip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Tooltip(
        message: 'This is an image',
        child: Image.asset('assets/icon/ocean.jpg'),
      ),
    );
  }
}
