//!FadeInImage

import 'package:flutter/material.dart';

class MyFadeInImage extends StatelessWidget {
  const MyFadeInImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/icon/ocean.jpg',
        image: 'https://images.pexels.com/photos/2236713/pexels-photo-2236713.jpeg',
      ),
    );
  }
}
