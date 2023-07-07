import 'package:flutter/material.dart';

//! AnimatedCrossFade

class MyAnimatedCrossFade extends StatefulWidget {
  const MyAnimatedCrossFade({Key? key}) : super(key: key);

  @override
  State<MyAnimatedCrossFade> createState() => _MyAnimatedCrossFadeState();
}

class _MyAnimatedCrossFadeState extends State<MyAnimatedCrossFade> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: const Text(
            'Switch',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        AnimatedCrossFade(
          firstChild: Image.asset(
            'assets/icon/blue.jpg',
            width: double.infinity,
          ),
          secondChild: Image.asset(
            'assets/icon/ocean.jpg',
            width: double.infinity,
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ],
    );
  }
}
