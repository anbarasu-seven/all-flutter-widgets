import 'package:flutter/material.dart';
import 'package:the_widgets/model/model.dart';
import 'package:the_widgets/second_route.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
      ),
      //! Just change the Widget001 for the Widget you want.
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 214,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondRoute(
                          widgetName: ExampleDestination.widgetsList[index])),
                );
              },
              child: Container(
                height: 50,
                child:
                    Center(child: Text(ExampleDestination.widgetsList[index])),
              ),
            );
          }),
    );
  }
}
