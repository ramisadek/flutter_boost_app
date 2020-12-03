import 'package:flutter/material.dart';

class SimpleCard extends StatefulWidget {
  String title;
  var price;
  var size;
  String color;

  SimpleCard({this.title, this.price, this.size, this.color});

  @override
  _SimpleCardState createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${widget.title}",
          style: TextStyle(fontSize: 30),
        ),
        Text(
          "${widget.price}",
          style: TextStyle(fontSize: 30),
        ),
        Text(
          "${widget.size}",
          style: TextStyle(fontSize: 30),
        ),
        Text(
          "${widget.color}",
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
