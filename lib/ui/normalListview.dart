import 'package:flutter/material.dart';
import 'package:flutter_boost_app/cards/homeCard.dart';
import 'package:flutter_boost_app/cards/home_card.dart';

class NormalListView extends StatefulWidget {
  @override
  _NormalListViewState createState() => _NormalListViewState();
}

class _NormalListViewState extends State<NormalListView> {

  List<String> titles = ["HP","acer","lenovo"];
  List<String> subTitle = ["2010","2011","2012"];
  List<int> prices = [100,200,300];
  List<String> countries = ["US","EU","EG"];

  List<Widget> homeList = List<Widget>();

  // List<Map> dataList = [
  //   {
  //     "titles":"HP",
  //     "subTitle":"2010",
  //     "prices": 100,
  //   },
  //   {
  //     "titles":"acer",
  //     "subTitle":"2011",
  //     "prices": 100,
  //   },
  //   {
  //     "titles":"HP",
  //     "subTitle":"2012",
  //     "prices": 100,
  //   }
  // ];
  //
  // Map data;
  //
  // /// { "data" :
  // ///           [
  // ///              {
  // ///                 "titles":"HP",
  // ///                  "subTitle":"2010",
  // ///                   "prices": 100,
  // ///              }
  // ///              {
  // ///                 "titles":"HP",
  // ///                  "subTitle":"2010",
  // ///                   "prices": 100,
  // ///               }
  // ///            ]
  // ///                 }

  initializeHomeList() {
    for(int i =0 ; i< titles.length ; i++){
      homeList.add(
        HomeCard(
        title: titles[i],
        supTitle: subTitle[i],
        price: prices[i],
        country: countries[i],
        imageUrl: "https://ymimg1.b8cdn.com/resized/article/6192/pictures/4494717/listing_main_BMW_X7_Review__1_.jpg",
        ),
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeHomeList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: homeList,
          ),
        ),
      ),
    );
  }
}
