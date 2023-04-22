//! richtext

import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: const TextSpan(
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 30,
          ),
          children: <TextSpan>[
            TextSpan(text: 'To the '),
            TextSpan(
              text: 'moon ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextSpan(text: 'and beyond!'),
          ],
        ),
      ),
    );
  }
}
