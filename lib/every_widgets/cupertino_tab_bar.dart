//!CupertinoTabBar

import 'package:flutter/cupertino.dart';

class MyCupertinoTabBar extends StatefulWidget {
  const MyCupertinoTabBar({Key? key}) : super(key: key);

  @override
  State<MyCupertinoTabBar> createState() => _MyCupertinoTabBarState();
}

class _MyCupertinoTabBarState extends State<MyCupertinoTabBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Center(
              child: Icon(
                index == 0 ? CupertinoIcons.home : CupertinoIcons.settings,
              ),
            );
          },
        );
      },
    );
  }
}
