import 'package:flutter/material.dart';

import 'MyHomePage_screen.dart';
import 'homeCard.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boost app',
      home: MyHomePage(),
    );
  }
}
