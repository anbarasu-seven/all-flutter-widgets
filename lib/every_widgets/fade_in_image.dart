//!FadeInImage

import 'package:flutter/material.dart';

class MyFadeInImage extends StatelessWidget {
  const MyFadeInImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/icon/ocean.jpg',
        image: 'https://tinyurl.com/p4475pwh',
      ),
    );
  }
}
