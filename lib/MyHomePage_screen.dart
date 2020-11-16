import 'package:flutter/material.dart';
import 'package:flutter_boost_app/signUp_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool emailIsEmpty = false;
  bool passwordIsEmpty = false;


  validation(){
    print("before");
    print(emailIsEmpty);
    if(emailController.text.isEmpty){
      emailIsEmpty=true;
    }
    else{
      emailIsEmpty=false;
    }
    if(passwordController.text.isEmpty){
      passwordIsEmpty=true;
    }
    else{
      passwordIsEmpty=false;
    }
    print("after");
    print(emailIsEmpty);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  // Container(
                  //   height: 30,
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 150),
                  // ),
                  Container(
                    width: 100,
                    height: 100,
                    //padding: EdgeInsets.only(top: 30),
                    // margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 150) ,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    alignment: Alignment.center,
                    child: Text("hellowrold"),
                  ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 30),
                    child: TextField(
                      controller: emailController,
                      style: TextStyle(
                        color: Colors.green,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Colors.green
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Colors.green
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Colors.blue
                            ),
                          ),
                          hintText: "email...",
                          hintStyle: TextStyle(
                              color: Colors.green
                          )
                      ),
                    ),
                  ),
                  if(emailIsEmpty==true)
                    Text("please enter your email",style: TextStyle(color: Colors.red),),

                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 30),
                    child: TextField(
                      controller: passwordController,
                      style: TextStyle(
                        color: Colors.green,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Colors.green
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Colors.green
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Colors.blue
                            ),
                          ),
                          hintText: "password...",
                          hintStyle: TextStyle(
                              color: Colors.green
                          )
                      ),
                    ),
                  ),
                  if(passwordIsEmpty==true)
                    Text("please enter your password",style: TextStyle(color: Colors.red),),

                  InkWell(
                    onTap: (){
                      validation();
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      margin: EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text("login",style: TextStyle(color: Colors.white),),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(top: 5)),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          )
                      );
                    },
                    child: Text("sign up here",style: TextStyle(color: Colors.orange,fontSize: 14),),
                  )


                ],
              ),
            ),
          )
      ),
    );
  }
}
