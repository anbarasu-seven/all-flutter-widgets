//! ExpandIcon

import 'package:flutter/material.dart';

class MyExpandIcon extends StatefulWidget {
  const MyExpandIcon({Key? key}) : super(key: key);

  @override
  State<MyExpandIcon> createState() => _MyExpandIconState();
}

class _MyExpandIconState extends State<MyExpandIcon> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.orangeAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Title',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              ExpandIcon(
                isExpanded: _isExpanded,
                color: Colors.white,
                expandedColor: Colors.black,
                onPressed: (bool isExpanded) {
                  setState(() {
                    _isExpanded = !isExpanded;
                  });
                },
              ),
            ],
          ),
        ),
        if (_isExpanded)
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text('Flutter Mapp'),
          ),
      ],
    );
  }
}
