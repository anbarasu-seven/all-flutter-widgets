import 'package:flutter/material.dart';

//! AlertDialog

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Alert Dialog'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0))),
              title: const Text('Flutter Mapp'),
              elevation: 20.0,
              shadowColor: Colors.pink,
              contentPadding: const EdgeInsets.all(20.0),
              content: const Text('This is the Alert Dialog'),
            ),
          );
        },
      ),
    );
  }
}
