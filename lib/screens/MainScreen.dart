import 'package:covid19guide/screens/InfoScreen.dart';
import 'package:covid19guide/screens/TrackerScreen.dart';
import 'package:covid19guide/utils/MyClipper.dart';
import 'package:covid19guide/utils/appStyles.dart';
import 'package:covid19guide/utils/prevention.dart';
import 'package:covid19guide/utils/strings.dart';
import 'package:covid19guide/utils/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppStyles.second_background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(bottom: 0.0),
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 40, left: 27, right: 20, bottom: 0),
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xFF3383CD),
                            Color(0xFF11249F),
                          ]),
                      image: DecorationImage(
                          image: AssetImage("images/virus.png"))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Stack(
                        children: <Widget>[
                          SvgPicture.asset(
                            "images/Drcorona.svg",
                            width: 230,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                          ),
                          Positioned(
                              top: 25,
                              left: 130,
                              child: Text(
                                AppStrings.IMG_TEXT,
                                style: AppTextStyles.topTextStyle,
                              )),
                          Container()
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      "Main Symptoms",
                      style: AppTextStyles.headingTextStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  symptomsContainer("images/fever.png", "Fever", context),
                  symptomsContainer("images/cough.png", "Cough", context),
                  symptomsContainer("images/sick.png", "Cold", context),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                padding: EdgeInsets.all(16),
                width: width,
                height: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/virus.png"),
                      alignment: Alignment.centerRight,
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: AppStyles.main_background),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Stay at home to\nStop corona virus",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => InfoScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 16),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppStyles.button_background),
                            child: Text(
                              "Know More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        )
                      ],
                    ),
                    Flexible(
                      child: Image.asset("images/home.png",
                          width: width * 0.4, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14, bottom: 10),
                    child: Text(
                      "Prevention",
                      style: AppTextStyles.headingTextStyle,
                    ),
                  )),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      PreventionCard(
                        imgPath: "images/wash_hands.png",
                        imgTitle: "Wash Hands",
                        desc:
                            "Wash your hands with soap and water before touching anything including your eyes, nose and mouth.",
                      ),
                      PreventionCard(
                        imgPath: "images/distance.png",
                        imgTitle: "Avoid Crowd",
                        desc:
                            "Stay home and avoid crowds and contact with others, practice social distancing and avoid gahterings.",
                      ),
                      PreventionCard(
                        imgPath: "images/wear_mask.png",
                        imgTitle: "Wear Face Mask",
                        desc:
                            "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks.",
                      ),
                      PreventionCard(
                        imgPath: "images/no-handshake.png",
                        imgTitle: "Avoid Handshake",
                        desc:
                            "Avoid handshakes, high-five, body contacts and contact with others surfaces.",
                      ),
                      PreventionCard(
                        imgPath: "images/home.png",
                        imgTitle: "Stay Home",
                        desc:
                            "If you are sick, stay home and if you have nothing to do outside please stay home to save lives.",
                      ),
                    ],
                  )),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14, top: 10),
                    child: Text(
                      "Covid-19 Tracker",
                      style: AppTextStyles.headingTextStyle,
                    ),
                  )),
              Container(
                width: width,
                height: 120,
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/virus.png"),
                      alignment: Alignment.centerRight,
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: AppStyles.main_background),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Image.asset(
                        "images/covid-virus.png",
                        width: MediaQuery.of(context).size.width * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("Track the virus\nfrom your home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TrackerScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppStyles.button_background),
                            child: Text(
                              "Track Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget symptomsContainer(String imgPath, String imgTitle, context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        width: width * 0.3,
//        height: 140,
        margin: EdgeInsets.only(left: 5, bottom: 8),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 5,
                  color: AppStyles.kShadowColor.withOpacity(0.5))
            ]),
        child: Column(
          children: <Widget>[
            Center(
                child: Image.asset(
              imgPath,
              fit: BoxFit.contain,
            )),
            Text(
              imgTitle,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Ubuntu",
                  fontSize: 16,
                  letterSpacing: 1),
            )
          ],
        ));
  }
}
