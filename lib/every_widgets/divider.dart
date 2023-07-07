//!divider

import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey,
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 2,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
