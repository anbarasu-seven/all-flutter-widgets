//! Badge

import 'package:flutter/material.dart';

class MyBadge extends StatelessWidget {
  const MyBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Badge(
      backgroundColor: Colors.red,
      alignment: AlignmentDirectional.topEnd,
      largeSize: 20,
      label: Text(
        '45',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Icon(
        Icons.notifications_active_rounded,
        size: 50,
      ),
    );
  }
}
