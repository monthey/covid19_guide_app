import 'package:covid19guide/utils/appStyles.dart';
import 'package:covid19guide/utils/textStyles.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.second_background,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                  top: 60,
                ),
                alignment: Alignment.center,
                child: Text(
                  "Hi!, Welcome",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.secondHeadingStyle,
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        "Material is an adaptable system of guidelines, components, and",
                    style: TextStyle(
                      color: Colors.black38,
                    ),
                  )),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Here...",
                    ),
                  ),
                ),
                Icon(Icons.search),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
