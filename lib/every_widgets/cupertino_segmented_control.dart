//!CupertinoSegmentedControl

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoSegmentedControl extends StatefulWidget {
  const MyCupertinoSegmentedControl({Key? key}) : super(key: key);

  @override
  MyCupertinoSegmentedControlState createState() => MyCupertinoSegmentedControlState();
}

class MyCupertinoSegmentedControlState extends State<MyCupertinoSegmentedControl> {
  String? _currentText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          CupertinoSegmentedControl(
            children: {
              'Flutter': Container(
                color: _currentText == 'Flutter'
                    ? Colors.orangeAccent[100]
                    : Colors.white,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: const Text('Flutter'),
              ),
              'Mapp': Container(
                color: _currentText == 'Mapp'
                    ? Colors.orangeAccent[100]
                    : Colors.white,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: const Text('Mapp'),
              ),
              'YouTube': Container(
                color: _currentText == 'YouTube'
                    ? Colors.orangeAccent[100]
                    : Colors.white,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: const Text('YouTube'),
              ),
            },
            onValueChanged: (String value) {
              setState(() {
                _currentText = value;
              });
            },
          ),
          const SizedBox(height: 50),
          _currentText != null
              ? Text(
                  _currentText!,
                  style: const TextStyle(fontSize: 50),
                )
              : Container()
        ],
      ),
    );
  }
}
