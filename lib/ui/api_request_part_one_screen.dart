import 'package:flutter/material.dart';
import 'package:flutter_boost_app/cards/api_home_card.dart';
import 'package:flutter_boost_app/cards/luggage.dart';
import 'package:flutter_boost_app/cards/midecals_card.dart';
import 'package:flutter_boost_app/models/apiModel.dart';
import 'package:flutter_boost_app/services/get_api_data.dart';

class ApiPartOneScreen extends StatefulWidget {
  @override
  _ApiPartOneScreenState createState() => _ApiPartOneScreenState();
}

class _ApiPartOneScreenState extends State<ApiPartOneScreen> {
  ApiModel apimodel = ApiModel();

  bool isLoading = true;

  var x;

  getFromApiRequest() async {
    apimodel = await ApiData().getApiData();
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
                        name: "${apimodel.name}",
                        age: apimodel.age,
                        country: "${apimodel.country}",
                        home: "${apimodel.homeCountry}",
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
                        itemCount: apimodel.luggage.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: LuggageCard(
                              name: apimodel.luggage[index].name,
                              brand: apimodel.luggage[index].brand,
                              Category: apimodel.luggage[index].category,
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
                        itemCount: apimodel.midecals.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: MidecalsCard(
                              name: apimodel.midecals[index].name,
                              price: apimodel.midecals[index].price,
                              Category: apimodel.midecals[index].category,
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
