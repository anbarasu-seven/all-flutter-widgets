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
      child: Column(
        children: [
          ElevatedButton(
            child: const Text('Show Dialog'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const AboutDialog(
                  applicationIcon: Center(child: FlutterLogo()),
                  applicationLegalese: 'Legalese',
                  applicationName: 'Flutter App',
                  applicationVersion: 'version 1.0.0',
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text('This is an about dialog in Flutter')
                    )
                  ],
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Show About Dialog'),
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationIcon: Center(child: FlutterLogo()),
                applicationLegalese: 'Legalese',
                applicationName: 'Flutter App',
                applicationVersion: 'version 1.0.0',
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text('This is an about dialog in Flutter')
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
