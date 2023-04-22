//!CupertinoActionSheetAction

import 'package:flutter/cupertino.dart';

class MyCupertinoActionSheetAction extends StatefulWidget {
  const MyCupertinoActionSheetAction({Key? key}) : super(key: key);

  @override
  State<MyCupertinoActionSheetAction> createState() => _MyCupertinoActionSheetActionState();
}

class _MyCupertinoActionSheetActionState extends State<MyCupertinoActionSheetAction> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: const Text('CupertinoActionSheet'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('Flutter Mapp'),
                message: const Text('Your Message'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    child: const Text('Do something'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: const Text('Do something else'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
