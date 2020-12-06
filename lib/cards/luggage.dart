import 'package:flutter/material.dart';

class LuggageCard extends StatefulWidget {
  String name;
  String brand;
  String Category;

  LuggageCard({
    this.name,
    this.brand,
    this.Category,
  });

  @override
  _LuggageCardState createState() => _LuggageCardState();
}

class _LuggageCardState extends State<LuggageCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                Text("brand"),
                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                Text("Category"),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${widget.name}"),
                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                Text("${widget.brand}"),
                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                Text("${widget.Category}"),
              ],
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Divider(
            thickness: 2,
          ),
        )
      ],
    );
  }
}
