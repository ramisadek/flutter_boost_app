import 'package:flutter/material.dart';
import 'package:flutter_boost_app/cards/home_card.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BoostTaskOne extends StatefulWidget {
  @override
  _BoostTaskOneState createState() => _BoostTaskOneState();
}

class _BoostTaskOneState extends State<BoostTaskOne> {

  List<String> titles = ["HP","acer","lenovo","HPasd","aasdcer","lenoasdvo"];
  List<String> subTitle = ["2010","2011","2012","2324010","243011","201342"];
  List<int> prices = [100,200,300,1005,2005,3005];
  List<String> countries = ["US","EU","EG","US","EU","EG"];

  List<Widget> homeList = List<Widget>();

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
    print(homeList.length);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeHomeList();
  }

  String currentText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("hello"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("تأكيد الكود"),
                    Text("أدخل رمز التحقق للرسالة التي ستتلقاها علي هاتفك"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("+966543214556"),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                          child: Icon(Icons.edit,size: 10,),
                        )
                      ],
                    ),
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        inactiveColor: Colors.green,
                        activeColor: Colors.red,
                        selectedColor: Colors.red,
                      ),
                      keyboardType: TextInputType.number,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    )
                  ],
                ),
              )
            ),
            Text("إعادة إرسال رمز التنشيط"),
          ],
        ),
      ),
    );
  }
}
