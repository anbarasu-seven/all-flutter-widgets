import 'package:flutter/material.dart';

//!AbsorbPointer

class MyAbsorbPointer extends StatelessWidget {
  const MyAbsorbPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Anbarasu Button dfddgdfbgf bfgbfg"),
                ),
              ),
              SizedBox(
                width: 100.0,
                height: 200.0,
                child: AbsorbPointer(
                  absorbing: true,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade200,
                    ),
                    onPressed: () {},
                    child: null,
                  ),
                ),
              ),
            ],
          ),
          Text("Stack widget with Clip"),
          SizedBox(
            width: 100,
            height: 100,
            child: Stack(
              clipBehavior: Clip.antiAlias,
              alignment: AlignmentDirectional.center,
              fit: StackFit.loose,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: ColoredBox(color: Colors.black54,),
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: ColoredBox(color: Colors.redAccent,),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
