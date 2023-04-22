//!WillPopScope

import 'package:flutter/material.dart';

class MyWillPopScope extends StatefulWidget {
  const MyWillPopScope({Key? key}) : super(key: key);

  @override
  State<MyWillPopScope> createState() => _MyWillPopScopeState();
}

class _MyWillPopScopeState extends State<MyWillPopScope> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const NextPage();
            }),
          );
        },
        child: const Text('Next Page'),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('Next Page'),
        ),
        body: const Center(),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
