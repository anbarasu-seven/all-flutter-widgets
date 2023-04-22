//! Scrollbar

import 'package:flutter/material.dart';

class MyScrollbar extends StatefulWidget {
  const MyScrollbar({Key? key}) : super(key: key);

  @override
  State<MyScrollbar> createState() => _MyScrollbarState();
}

class _MyScrollbarState extends State<MyScrollbar> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller,
      child: ListView.builder(
        controller: controller,
        itemCount: 40,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item ${index + 1}'),
          );
        },
      ),
    );
  }
}
