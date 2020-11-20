import 'package:flutter/material.dart';

import 'ui/MyHomePage_screen.dart';
import 'ui/gridview.dart';
import 'cards/homeCard.dart';
import 'ui/normalListview.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boost app',
      home: NormalListView(),
    );
  }
}
