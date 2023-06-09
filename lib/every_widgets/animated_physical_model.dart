import 'package:flutter/material.dart';

//! AnimatedPhysicalModel

class MyAnimatedPhysicalModel extends StatefulWidget {
  const MyAnimatedPhysicalModel({Key? key}) : super(key: key);

  @override
  MyAnimatedPhysicalModelState createState() => MyAnimatedPhysicalModelState();
}

class MyAnimatedPhysicalModelState extends State<MyAnimatedPhysicalModel> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedPhysicalModel(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            elevation: _isFlat ? 0 : 20.0,
            shape: BoxShape.circle,
            shadowColor: Colors.pink,
            color: Colors.white,
            child: const SizedBox(
              height: 120.0,
              width: 120.0,
              child: Icon(Icons.android_outlined),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Click'),
            onPressed: () {
              setState(() {
                _isFlat = !_isFlat;
              });
            },
          ),
        ],
      ),
    );
  }
}
