//! BlockSemantics

import 'package:flutter/material.dart';

class MyBlockSemantics extends StatefulWidget {
  const MyBlockSemantics({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyBlockSemanticsState();
  }
}

class _MyBlockSemanticsState extends State<MyBlockSemantics> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width: 500,
        height: double.infinity,
        child: Column(
          children: [
            OutlinedButton(
              child: const Text('Click'),
              onPressed: () => setState(() {
                isShow = true;
              }),
            ),
            if (isShow)
              BlockSemantics(
                blocking: isShow,
                child: Card(
                  color: Colors.orangeAccent,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('This is a card'),
                        TextButton(
                          child: const Text('Close'),
                          onPressed: () => setState(
                            () {
                              isShow = false;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
