//!CupertinoDatePicker

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoTimerPicker extends StatefulWidget {
  const MyCupertinoTimerPicker({Key? key}) : super(key: key);

  @override
  State<MyCupertinoTimerPicker> createState() => _MyCupertinoTimerPickerState();
}

class _MyCupertinoTimerPickerState extends State<MyCupertinoTimerPicker> {
  Duration duration = const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text(
              '${duration.inHours}-${duration.inMinutes}-${duration.inSeconds}'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 250,
                child: CupertinoTimerPicker(
                  backgroundColor: Colors.orangeAccent,
                  onTimerDurationChanged: (Duration newTime) {
                    setState(() => duration = newTime);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
