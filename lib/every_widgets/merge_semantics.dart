//!MergeSemantics

import 'package:flutter/material.dart';

class MyMergeSemantics extends StatelessWidget {
  const MyMergeSemantics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Row(
        children: const [
          Icon(Icons.person),
          Text('Flutter Mapp'),
        ],
      ),
    );
  }
}
