import 'package:flutter/material.dart';

class NormalGridView extends StatefulWidget {
  @override
  _NormalGridViewState createState() => _NormalGridViewState();
}

class _NormalGridViewState extends State<NormalGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NormalGridView",style: TextStyle(
          fontSize: 50,
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontFamily: 'NerkoOne'
        ),),
        centerTitle: true,
      ),
    );
  }
}
