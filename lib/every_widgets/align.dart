import 'package:flutter/material.dart';

class MyAlignWidget extends StatelessWidget {
  const MyAlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.red,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          height: 120.0,
          width: double.infinity,
          color: Colors.blueGrey,
          child: const Align(
            alignment: Alignment.bottomLeft,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
