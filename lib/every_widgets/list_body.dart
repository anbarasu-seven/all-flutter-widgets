//! ListBody

import 'package:flutter/material.dart';

class MyListBody extends StatelessWidget {
  const MyListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: const [
        Text('Widget 1'),
        Text('Widget 2'),
        Text('Widget 3'),
      ],
    );
  }
}
