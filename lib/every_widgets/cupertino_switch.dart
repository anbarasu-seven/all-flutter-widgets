//!CupertinoSwitch

import 'package:flutter/material.dart';

class MyCupertinoSwitch extends StatefulWidget {
  const MyCupertinoSwitch({Key? key}) : super(key: key);

  @override
  State<MyCupertinoSwitch> createState() => _Widget078State();
}

class _Widget078State extends State<MyCupertinoSwitch> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch.adaptive(
        value: _lights,
        onChanged: (bool value) {
          setState(() {
            _lights = value;
          });
        },
      ),
    );
  }
}
