//!CupertinoSlidingSegmentedControl

import 'package:flutter/cupertino.dart';

class MyCupertinoSlidingSegmentedControl extends StatefulWidget {
  const MyCupertinoSlidingSegmentedControl({Key? key}) : super(key: key);

  @override
  State<MyCupertinoSlidingSegmentedControl> createState() => _MyCupertinoSlidingSegmentedControlState();
}

class _MyCupertinoSlidingSegmentedControlState extends State<MyCupertinoSlidingSegmentedControl> {
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSlidingSegmentedControl(
        children: const {
          0: Text('Text 0'),
          1: Text('Text 1'),
          2: Text('Text 2'),
        },
        groupValue: _sliding,
        onValueChanged: (int? newValue) {
          setState(() {
            _sliding = newValue;
          });
        },
      ),
    );
  }
}
