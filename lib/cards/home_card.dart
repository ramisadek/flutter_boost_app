import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {

  String title;
  String supTitle;

  int price;

  String country;

  String imageUrl;

  HomeCard({this.title, this.supTitle, this.price, this.country, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 170,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.36,
                    child: Text(
                      "$title",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.red),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text("$supTitle", style: TextStyle(fontSize: 19, color: Colors.grey)),
                ],

              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("$imageUrl")),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "price: $price",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.green),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "$country",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
