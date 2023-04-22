//!MaterialButton

import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {
  const MyMaterialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () {},
        child: const Text('Click'),
        highlightColor: Colors.orangeAccent,
        splashColor: Colors.redAccent,
        color: Colors.blueGrey,
      ),
    );
  }
}
