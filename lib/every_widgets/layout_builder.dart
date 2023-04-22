//!LayoutBuilder

import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatelessWidget {
  const MyLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Center(
            child: Image.network(
              'https://tinyurl.com/5n97bfvp',
            ),
          );
        } else {
          return const Center(
            child: Text('Screen under 600'),
          );
        }
      },
    );
  }
}
