import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyErrorApp extends StatefulWidget {
  const MyErrorApp({super.key});

  static const String _title = 'ErrorWidget Sample';

  @override
  State<MyErrorApp> createState() => _MyErrorAppState();
}

class _MyErrorAppState extends State<MyErrorApp> {
  bool throwError = false;

  @override
  Widget build(BuildContext context) {
    if (throwError) {
      return Builder(
        builder: (BuildContext context) {
          throw Exception('oh no, an error');
        },
      );
    } else {
      return MaterialApp(
        title: MyErrorApp._title,
        home: Scaffold(
          appBar: AppBar(title: const Text(MyErrorApp._title)),
          body: Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    throwError = true;
                  });
                },
                child: const Text('Error Prone')),
          ),
        ),
      );
    }
  }
}
