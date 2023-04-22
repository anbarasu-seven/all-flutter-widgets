//!CupertinoActivityIndicator

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoActivityIndicator extends StatefulWidget {
  const MyCupertinoActivityIndicator({Key? key}) : super(key: key);

  @override
  State<MyCupertinoActivityIndicator> createState() => _MyCupertinoActivityIndicatorState();
}

class _MyCupertinoActivityIndicatorState extends State<MyCupertinoActivityIndicator> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: CupertinoActivityIndicator(
          radius: 50,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}