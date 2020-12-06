import 'package:flutter/material.dart';

class ApiHomeCard extends StatefulWidget {
  String name;
  String country;
  String home;
  int age;

  ApiHomeCard({this.name, this.country, this.home, this.age = 0});

  @override
  _ApiHomeCardState createState() => _ApiHomeCardState();
}

class _ApiHomeCardState extends State<ApiHomeCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name"),
            Padding(padding: EdgeInsets.symmetric(vertical: 3)),
            Text("age"),
            Padding(padding: EdgeInsets.symmetric(vertical: 3)),
            Text("Country"),
            Padding(padding: EdgeInsets.symmetric(vertical: 3)),
            Text("Home Country"),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
        Column(
          children: [
            Text("${widget.name}"),
            Padding(padding: EdgeInsets.symmetric(vertical: 3)),
            Text("${widget.age ?? 0}"),
            Padding(padding: EdgeInsets.symmetric(vertical: 3)),
            Text("${widget.country}"),
            Padding(padding: EdgeInsets.symmetric(vertical: 3)),
            Text("${widget.home}"),
          ],
        ),
      ],
    );
  }
}
