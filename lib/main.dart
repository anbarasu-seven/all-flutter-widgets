import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:the_widgets/first_route.dart';

const Color darkBlue = Color(0xFF12202F);

void main() {
  initErrorWidgetSetup();
  runApp(const MyApp());
}

void initErrorWidgetSetup() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    if (kDebugMode) {
      return ErrorWidget(details.exception);
    }
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Error!\n${details.exception}',
        style: const TextStyle(color: Colors.yellow),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      ),
    );
  };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Every Flutter Widget',
      home: FirstRoute(),
    );
  }
}
