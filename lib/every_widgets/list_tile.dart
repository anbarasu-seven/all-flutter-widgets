//!ListTile

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: const Text('Flutter Mapp'),
        tileColor: Colors.orangeAccent,
        onTap: () {},
        leading: const Icon(Icons.person),
        trailing: const Icon(Icons.menu),
      ),
    );
  }
}