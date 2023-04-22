//!FlutterErrorDetails

import 'package:flutter/material.dart';

void initFlutterErrorDetail() {
  try {
    //do some error
    5/0;
  } catch (error) {
    // Catch & report error.
    FlutterError.reportError(FlutterErrorDetails(
      exception: error,
      library: 'Flutter test framework',
      context: ErrorSummary('while running async test code'),
    ));
  }
}

class FlutterErrorDetailWidget extends StatelessWidget {
  const FlutterErrorDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: const Center(child: Text('Click FAB to trigger error')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          initFlutterErrorDetail();
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}