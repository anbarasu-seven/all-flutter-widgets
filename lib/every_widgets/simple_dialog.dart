//! SimpleDialog

import 'package:flutter/material.dart';

class MySimpleDialog extends StatefulWidget {
  const MySimpleDialog({Key? key}) : super(key: key);

  @override
  State<MySimpleDialog> createState() => _MyHomePage14State();
}

class _MyHomePage14State extends State<MySimpleDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => SimpleDialog(
              title: const Text('Flutter Mapp'),
              contentPadding: const EdgeInsets.all(20.0),
              children: [
                const Text('More information'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                )
              ],
            ),
          );
        },
        child: const Text('Show Dialog'),
      ),
    );
  }
}
