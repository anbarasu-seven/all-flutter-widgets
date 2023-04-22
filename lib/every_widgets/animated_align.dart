import 'package:flutter/material.dart';

//! AnimatedAlign

class MyAnimatedAlign extends StatefulWidget {
  const MyAnimatedAlign({Key? key}) : super(key: key);

  @override
  State<MyAnimatedAlign> createState() => _MyAnimatedAlignState();
}

class _MyAnimatedAlignState extends State<MyAnimatedAlign> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250.0,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
