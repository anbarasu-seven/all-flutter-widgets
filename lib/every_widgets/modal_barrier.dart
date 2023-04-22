//!ModalBarrier

import 'package:flutter/material.dart';

class MyModalBarrier extends StatefulWidget {
  const MyModalBarrier({Key? key}) : super(key: key);

  @override
  State<MyModalBarrier> createState() => _MyModalBarrierState();
}

class _MyModalBarrierState extends State<MyModalBarrier> {
  bool activated = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                activated = !activated;
              });
            },
            child: const Text('Reactivate'),
          ),
        ),
        if (activated)
          Opacity(
            opacity: 0.4,
            child: ModalBarrier(
              dismissible: false,
              onDismiss: () {
                setState(() {
                  activated = !activated;
                });
              },
              color: Colors.orangeAccent,
            ),
          ),
      ],
    );
  }
}
