import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost_app/cards/home_card.dart';

class SimpleRequestScreen extends StatefulWidget {
  @override
  _SimpleRequestScreenState createState() => _SimpleRequestScreenState();
}

class _SimpleRequestScreenState extends State<SimpleRequestScreen> {
  int count;
  var next;
  var pervoius;
  List listOfResults = List();
  bool isLoading = true;

  getDataFromRestApi() async {
    Response response = await Dio().get("http://api.naffeth.com/product/");
    count = response.data['count'];
    next = response.data['next'];
    pervoius = response.data['previous'];
    listOfResults = response.data['results'];
    for (int i = 0; i < listOfResults.length; i++) {
      listOfResults[i]['name'];
    }
    isLoading = false;
    setState(() {});
  }

  /// {
  ///   "data":[
  ///        {
  //             "id": 18,
  //             "title": "شقه ١١",
  //             "price": 200000.0,
  //             "size": 0,
  //             "time_ar": "24 أيام",
  //             "time_en": "24 days",
  //             "numberOfRooms": 6,
  //             "numberOfBathRooms": 6,
  //             "address": "بجوار ونجت",
  //             "photo": "http://api.naffeth.com/media/image_picker7936768142789532108.jpg",
  //             "categoryColor": "0xFF0D986A",
  //             "latitude": 31.2303894,
  //             "longitude": 29.9476542
  //         },
  //        {
  //             "id": 18,
  //             "title": "شقه ١١",
  //             "price": 200000.0,
  //             "size": 0,
  //             "time_ar": "24 أيام",
  //             "time_en": "24 days",
  //             "numberOfRooms": 6,
  //             "numberOfBathRooms": 6,
  //             "address": "بجوار ونجت",
  //             "photo": "http://api.naffeth.com/media/image_picker7936768142789532108.jpg",
  //             "categoryColor": "0xFF0D986A",
  //             "latitude": 31.2303894,
  //             "longitude": 29.9476542
  //         },
  ///    ],
  ///   "data 2":[
  ///   {
  ///     "name":"rr",
  ///     "list1":[ 0, 1 ,2]
  ///    }
  ///  ]
  /// }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataFromRestApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HK.com"),
          centerTitle: true,
        ),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listOfResults.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: HomeCard(
                      title: listOfResults[index]['title'],
                      supTitle: "asdsa",
                      country: "asdasd",
                      imageUrl: listOfResults[index]['photo'],
                      price: listOfResults[index]['price'],
                    ),
                  );
                  // return SimpleCard(
                  //   title: listOfResults[index]['title'],
                  //   size: listOfResults[index]['size'],
                  //   color: listOfResults[index]['categoryColor'],
                  //   price: listOfResults[index]['price'],
                  // );
                },
              ));
  }
}
