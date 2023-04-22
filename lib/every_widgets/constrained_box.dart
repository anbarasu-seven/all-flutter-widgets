//! ConstrainedBox
import 'package:flutter/material.dart';

class MyConstrainedBox extends StatelessWidget {
  const MyConstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 900,
          maxHeight: 350,
          
        ),
        child: Container(
          color: Colors.orangeAccent,
          width: double.infinity,
        ),
      ),
    );
  }
}
