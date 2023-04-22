import 'package:flutter/material.dart';

//!AboutDialog

class MyAboutDialog extends StatefulWidget {
  const MyAboutDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<MyAboutDialog> createState() => _MyAboutDialogState();
}

class _MyAboutDialogState extends State<MyAboutDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show About Dialog'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AboutDialog(
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'Legalese',
              applicationName: 'Flutter App',
              applicationVersion: 'version 1.0.0',
              children: [
                Text('This is a text created by Flutter Mapp'),
              ],
            ),
          );
        },
      ),
    );
  }
}
