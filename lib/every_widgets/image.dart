//!Image

import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: NetworkImage('https://tinyurl.com/yc4pctt5'),
        color: Colors.blue,
        colorBlendMode: BlendMode.colorBurn,
      ),
    );
  }
}
