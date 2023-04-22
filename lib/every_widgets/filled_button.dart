//! FilledButton

import 'package:flutter/material.dart';

class MyFilledButton extends StatelessWidget {
  const MyFilledButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () {},
        child: const Text('Filled Button'),
      ),
    );
  }
}
