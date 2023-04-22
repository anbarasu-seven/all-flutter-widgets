//!Dismissible

import 'package:flutter/material.dart';

class MyDismissible extends StatefulWidget {
  const MyDismissible({Key? key}) : super(key: key);

  @override
  State<MyDismissible> createState() => _MyDismissibleState();
}

class _MyDismissibleState extends State<MyDismissible> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          background: Container(
            color: Colors.red,
            child: const Icon(Icons.delete),
          ),
          key: ValueKey<int>(items[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              items.removeAt(index);
            });
          },
          child: ListTile(
            title: Text(
              'Item ${items[index]}',
            ),
          ),
        );
      },
    );
  }
}
