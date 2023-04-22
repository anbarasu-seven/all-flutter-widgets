//! Shortcuts

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IncrementIntent extends Intent {
  const IncrementIntent();
}

class DecrementIntent extends Intent {
  const DecrementIntent();
}

class MyShortcuts extends StatefulWidget {
  const MyShortcuts({Key? key}) : super(key: key);

  @override
  State<MyShortcuts> createState() => _MyShortcutsState();
}

class _MyShortcutsState extends State<MyShortcuts> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <ShortcutActivator, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowUp): const IncrementIntent(),
        LogicalKeySet(LogicalKeyboardKey.arrowDown): const DecrementIntent(),
      },
      child: Actions(
        actions: {
          IncrementIntent: CallbackAction(
            onInvoke: (intent) => setState(() {
              count = count + 1;
            }),
          ),
          DecrementIntent: CallbackAction(
            onInvoke: (intent) => setState(() {
              count = count - 1;
            }),
          ),
        },
        child: Focus(
          child: Center(
            child: Text(
              'Counter: $count',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
