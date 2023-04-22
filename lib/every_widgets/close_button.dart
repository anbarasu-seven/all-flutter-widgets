//! CloseButton
import 'package:flutter/material.dart';

class MyCloseButton extends StatelessWidget {
  const MyCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CloseButton(
        color: Colors.red,
        onPressed: () {
          debugPrint("Do something");
        },
      ),
    );
  }
}
