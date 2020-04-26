import 'package:covid19guide/screens/HomeScreen.dart';
import 'package:covid19guide/screens/MainScreen.dart';
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
    getSaveData();
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
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Text('Loading...'),
          ],
        ),
      ),
    );
  }

}
