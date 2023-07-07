//!ExpansionTile

import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {
  const MyExpansionTile({Key? key}) : super(key: key);

  @override
  State<MyExpansionTile> createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  final bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          title: const Text('Expansion Tile'),
          children: const <Widget>[
            ListTile(
              title: Text('This is tile number'),
            ),
          ],
          onExpansionChanged: (bool expanded) {},
          controlAffinity: ListTileControlAffinity.trailing,
        ),
      ],
    );
  }
}
