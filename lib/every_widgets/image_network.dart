//!Image.network

 import 'package:flutter/material.dart';


 class MyImageNetwork extends StatelessWidget {
   const MyImageNetwork({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     var title = 'Web Images';

     return MaterialApp(
       title: title,
       home: Scaffold(
         appBar: AppBar(
           title: Text(title),
         ),
         body: Image.network('https://picsum.photos/250?image=9'),
       ),
     );
   }
 }