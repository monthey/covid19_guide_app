import 'dart:async';

import 'package:covid19guide/screens/HomeScreen.dart';
import 'package:covid19guide/screens/MainScreen.dart';
import 'package:covid19guide/utils/appStyles.dart';
import 'package:covid19guide/utils/strings.dart';
import 'package:covid19guide/utils/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19 Guide',
      theme: ThemeData(
        fontFamily: "Ubuntu",
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}


class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> {


  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 500), (){
      getSaveData();
    });
  }

  Future<bool> getSaveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).push(
          new MaterialPageRoute(builder: (context) => new MainScreen()));
    } else {
      prefs.setBool('seen', true);
      Navigator.of(context).push(
          new MaterialPageRoute(builder: (context) => new Home()));
    }
    return _seen;
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppStyles.main_background,
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              margin: EdgeInsets.only(bottom: 50),
              child: Image.asset(
                "images/covid-virus.png",
//                width: 100,
//                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              AppStrings.APP_TITLE,
              style: AppTextStyles.firstHeadingStyle,
            ),
          ],
        ),
      ),
    );
  }

}
