import 'package:flutter/material.dart';

class MidecalsCard extends StatefulWidget {
  String name;
  int price;
  List Category = List();

  MidecalsCard({
    this.name,
    this.price,
    this.Category,
  });

  @override
  _MidecalsCardState createState() => _MidecalsCardState();
}

class _MidecalsCardState extends State<MidecalsCard> {
  String whatever = "";

  accessElements() {
    for (int i = 0; i < widget.Category.length; i++) {
      if (i == widget.Category.length - 1) {
        whatever = whatever + widget.Category[i];
      } else {
        whatever = whatever + widget.Category[i] + " , ";
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accessElements();
  }

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
                Text("${widget.price}"),
                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                Text("${widget.Category.join(" , ")}"),
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
