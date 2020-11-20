import 'package:flutter/material.dart';

class FirstSession extends StatefulWidget {
  @override
  _FirstSessionState createState() => _FirstSessionState();
}

class _FirstSessionState extends State<FirstSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 150,
                child: Image.network("https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/bmw-8-series-805_0.jpg?itok=e--SHpJj"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("rr@rr.com",style: TextStyle(color: Colors.white,fontSize: 19),),
                  Text("Egypt",style: TextStyle(color: Colors.white,fontSize: 19))
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
