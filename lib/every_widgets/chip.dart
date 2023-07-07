//! Chip
import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  const MyChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        label: const Text("This is a Flutter chip"),
        onDeleted: () {
          debugPrint("Do something");
        },
      ),
    );
  }
}
