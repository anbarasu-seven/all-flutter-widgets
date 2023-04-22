//! SliverPadding

import 'package:flutter/material.dart';

class MySliverPadding extends StatelessWidget {
  const MySliverPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(50.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Image.network('https://tinyurl.com/95ncjeuu'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
