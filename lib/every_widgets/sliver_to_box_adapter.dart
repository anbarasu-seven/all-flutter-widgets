//! SliverToBoxAdapter

import 'package:flutter/material.dart';

class MySliverToBoxAdapter extends StatelessWidget {
  const MySliverToBoxAdapter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
            child: Center(
              child: Text('Sliver To Box Adapter'),
            ),
          ),
        ),
      ],
    );
  }
}
