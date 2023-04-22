//! RefreshIndicator

import 'package:flutter/material.dart';

class MyRefreshIndicator extends StatefulWidget {
  const MyRefreshIndicator({Key? key}) : super(key: key);
  @override
  _MyRefreshIndicatorState createState() => _MyRefreshIndicatorState();
}

class _MyRefreshIndicatorState extends State<MyRefreshIndicator> {
  List<String> items = [
    "Item 1",
    "Item 2",
  ];

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(
          const Duration(seconds: 1),
        );
        int nextItem = items.length + 1;
        items.add("Item $nextItem");
        setState(() {});
      },
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(items[index]),
                tileColor: Colors.white24,
              ),
            )),
        padding: const EdgeInsets.all(5),
      ),
      color: Colors.white,
      backgroundColor: Colors.orangeAccent,
    );
  }
}
