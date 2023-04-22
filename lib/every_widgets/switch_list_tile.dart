//! SwitchListTile

import 'package:flutter/material.dart';

class MySwitchListTile extends StatefulWidget {
  const MySwitchListTile({Key? key}) : super(key: key);

  @override
  State<MySwitchListTile> createState() => _MySwitchListTileState();
}

class _MySwitchListTileState extends State<MySwitchListTile> {
  bool lights = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        title: const Text('Lights'),
        value: lights,
        onChanged: (bool value) {
          setState(() {
            lights = value;
          });
        },
        secondary: const Icon(Icons.lightbulb_outline),
      ),
    );
  }
}
