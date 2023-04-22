//!SizedOverflowBox

import 'package:flutter/material.dart';

class MySizedOverflowBox extends StatelessWidget {
  const MySizedOverflowBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.orangeAccent,
        child: SizedOverflowBox(
          size: const Size(100, 100),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('This is a button'),
          ),
        ),
      ),
    );
  }
}
