//! AnimatedSwitcher

import 'package:flutter/material.dart';

class MyAnimatedSwitcher extends StatefulWidget {
  const MyAnimatedSwitcher({Key? key}) : super(key: key);

  @override
  State<MyAnimatedSwitcher> createState() => _MyAnimatedSwitcherState();
}

class _MyAnimatedSwitcherState extends State<MyAnimatedSwitcher> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: Text(
              '$_count',
              style: const TextStyle(fontSize: 40),
              key: ValueKey(_count),
            ),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
          ),
          Column(
            children: [
              ElevatedButton(
                child: const Text('Add'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              FilledButton(
                child: const Text('Add'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              OutlinedButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.ice_skating),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              BackButton(
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              CloseButton(
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              MaterialButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Text("Material Button"),
                ),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Text("Text Button"),
                ),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
