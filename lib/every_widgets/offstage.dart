//! Offstage

import 'package:flutter/material.dart';

class MyOffstage extends StatefulWidget {
  const MyOffstage({Key? key}) : super(key: key);

  @override
  State<MyOffstage> createState() => _MyOffstageState();
}

class _MyOffstageState extends State<MyOffstage> {
  bool isHided = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Offstage(
            offstage: isHided,
            child: const Icon(
              Icons.flutter_dash,
              size: 100,
            ),
          ),
          ElevatedButton(
            child: Text('isHided = $isHided'),
            onPressed: () {
              setState(() {
                isHided = !isHided;
              });
            },
          ),
        ],
      ),
    );
  }
}
