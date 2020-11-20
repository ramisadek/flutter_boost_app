import 'package:flutter/material.dart';
import 'package:flutter_boost_app/cards/homeCard.dart';
import 'package:flutter_boost_app/cards/home_card.dart';

class NormalGridView extends StatefulWidget {
  @override
  _NormalGridViewState createState() => _NormalGridViewState();
}

class _NormalGridViewState extends State<NormalGridView> {

  List<String> titles = ["HP","acer","lenovo"];
  List<String> subTitle = ["2010","2011","2012"];
  List<int> prices = [100,200,300];
  List<String> countries = ["US","EU","EG"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [

                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                          image: DecorationImage(
                            image: NetworkImage("https://ymimg1.b8cdn.com/resized/article/6192/pictures/4494717/listing_main_BMW_X7_Review__1_.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("install",style: TextStyle(color: Colors.white),),
                              width: 80,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            Text("cars",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("V.2",style: TextStyle(color: Colors.white),),
                            Container(
                              child: Text("more",style: TextStyle(color: Colors.white),),
                              width: 80,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.red,
                  ),
                ),

                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                            image: DecorationImage(
                                image: NetworkImage("https://ymimg1.b8cdn.com/resized/article/6192/pictures/4494717/listing_main_BMW_X7_Review__1_.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text("install",style: TextStyle(color: Colors.white),),
                            ),
                            Text("cars",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("V.2",style: TextStyle(color: Colors.white),),
                            Container(
                              width: 70,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text("More",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                            image: DecorationImage(
                                image: NetworkImage("https://ymimg1.b8cdn.com/resized/article/6192/pictures/4494717/listing_main_BMW_X7_Review__1_.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text("install",style: TextStyle(color: Colors.white),),
                            ),
                            Text("cars",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("V.2",style: TextStyle(color: Colors.white),),
                            Container(
                              width: 70,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text("More",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                            image: DecorationImage(
                                image: NetworkImage("https://ymimg1.b8cdn.com/resized/article/6192/pictures/4494717/listing_main_BMW_X7_Review__1_.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text("install",style: TextStyle(color: Colors.white),),
                            ),
                            Text("cars",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("V.2",style: TextStyle(color: Colors.white),),
                            Container(
                              width: 70,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text("More",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                            image: DecorationImage(
                                image: NetworkImage("https://ymimg1.b8cdn.com/resized/article/6192/pictures/4494717/listing_main_BMW_X7_Review__1_.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text("install",style: TextStyle(color: Colors.white),),
                            ),
                            Text("cars",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("V.2",style: TextStyle(color: Colors.white),),
                            Container(
                              width: 70,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text("More",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),


              ],
            ),
          )
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 20),
        //   child: ListView(
        //     children: homeList,
        //   ),
        // ),
        // Container(
        //   width: MediaQuery.of(context).size.width* 0.9,
        //   child: ListView(
        //     children: homeList,
        //   ),
        // )
      ),
    );
  }
}
