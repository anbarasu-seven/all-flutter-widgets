//! ConstrainedBox
import 'package:flutter/material.dart';

class MyConstrainedBox extends StatelessWidget {
  const MyConstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 200,
          maxHeight: 100,
          
        ),
        child: Container(
          color: Colors.orangeAccent,
          width: double.infinity,
        ),
      ),
    );
  }
}
