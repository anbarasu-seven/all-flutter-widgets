//!CupertinoTextField

import 'package:flutter/cupertino.dart';

class MyCupertinoTextField extends StatelessWidget {
  MyCupertinoTextField({Key? key}) : super(key: key);
  final TextEditingController _textController =
      TextEditingController(text: 'Flutter Mapp');
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemOrange,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: CupertinoTextField(
              controller: _textController,
            ),
          ),
        ),
      ),
    );
  }
}
