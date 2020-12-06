import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost_app/cards/api_home_card.dart';
import 'package:flutter_boost_app/cards/luggage.dart';
import 'package:flutter_boost_app/cards/midecals_card.dart';

class ApiPartOneScreen extends StatefulWidget {
  @override
  _ApiPartOneScreenState createState() => _ApiPartOneScreenState();
}

class _ApiPartOneScreenState extends State<ApiPartOneScreen> {
  String name;
  int age;
  String country;
  String homeCountry;
  bool isMuslim;
  List luggage = List();
  List midecals = List();

  bool isLoading = true;

  getFromApiRequest() async {
    Response response = await Dio().get("https://run.mocky.io/v3/701ff6f4-0181-47fe-9461-473f6d0aec92");
    name = response.data["name"];
    age = response.data["age"];
    country = response.data["country"];
    homeCountry = response.data["home_country"];
    isMuslim = response.data["isMuslim"];
    luggage = response.data["luggage"];
    midecals = response.data["midecals"];

    print(luggage);

    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFromApiRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ApiHomeCard(
                        name: "$name",
                        age: age,
                        country: "$country",
                        home: "$homeCountry",
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Laggage",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: luggage.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: LuggageCard(
                              name: luggage[index]['name'],
                              brand: luggage[index]['brand'],
                              Category: luggage[index]['category'],
                            ),
                          );
                        },
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Midecals",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: midecals.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: MidecalsCard(
                              name: midecals[index]['name'],
                              price: midecals[index]['price'],
                              Category: midecals[index]['category'],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
