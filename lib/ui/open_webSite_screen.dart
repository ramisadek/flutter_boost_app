import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenWebSiteScreen extends StatefulWidget {
  @override
  _OpenWebSiteScreenState createState() => _OpenWebSiteScreenState();
}

class _OpenWebSiteScreenState extends State<OpenWebSiteScreen> {
  _launchURL() async {
    const url = '056';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  getRequest() async {
    Response response = await Dio().get("https://official-joke-api.appspot.com/random_joke");
    Response response2 = await Dio().post("https://official-joke-api.appspot.com/login", data: {"keyowrd": "rr@gmail.com", "pass": "123456"});
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () => getRequest(),
          child: Text("CLick Me !"),
        ),
      ),
    );
  }
}
