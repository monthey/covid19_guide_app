import 'package:covid19guide/utils/appStyles.dart';
import 'package:covid19guide/utils/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.second_background,
      body: Container(
        child: Column(
          children: <Widget>[

//            New Head Here


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Symptoms",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                  child: Text(
                    "View All",
                    style: TextStyle(fontSize: 16, color: Colors.black26),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    symptomsContainer("images/fever.png", "Fever"),
                    symptomsContainer("images/cough.png", "Cough"),
                    symptomsContainer("images/tired.png", "Tiredness"),
                    symptomsContainer("images/headache.png", "Headache"),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget symptomsContainer(String imgPath, String imgTitle) {
    return  Container(
        width: 120,
        height: 140,
        margin: EdgeInsets.only(left: 16, top: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0,0),
                  blurRadius: 10,
                  color: Colors.black26
              )
            ]
        ),
//                        height: 120,
//                        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: <Widget>[
            Image.asset(imgPath),
            Text(imgTitle, style: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Ubuntu", fontSize: 16, letterSpacing: 1),)
          ],
        )
    );
  }
}
