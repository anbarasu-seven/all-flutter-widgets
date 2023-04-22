//! InteractiveViewer

import 'package:flutter/material.dart';

class MyInteractiveViewer extends StatefulWidget {
  const MyInteractiveViewer({Key? key}) : super(key: key);

  @override
  State<MyInteractiveViewer> createState() => _MyInteractiveViewerState();
}

class _MyInteractiveViewerState extends State<MyInteractiveViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(
          double.infinity,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Flutter Mapp',
            ),
          ),
        ),
      ),
    );
  }
}
