import 'package:covid19guide/screens/InfoScreen.dart';
import 'package:covid19guide/screens/TrackerScreen.dart';
import 'package:covid19guide/utils/MyClipper.dart';
import 'package:covid19guide/utils/appStyles.dart';
import 'package:covid19guide/utils/strings.dart';
import 'package:covid19guide/utils/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.second_background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(bottom: 0.0),
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: MyCliper(),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    symptomsContainer("images/fever.png", "Fever"),
                    symptomsContainer("images/cough.png", "Cough"),
//                    symptomsContainer("images/head.png", "Headache"),
                    symptomsContainer("images/sick.png", "Cold"),
                    SizedBox(
                      width: 5,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
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
                      child: Image.asset(
                        "images/home.png",
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
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
                            "stay home and avoid crowds and contact with others, practice social distancing and avoid gahterings.",
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
//              SizedBox(
////                width: 5,
//                height: 10,
//                child: Container(
//                  color: Colors.redAccent,
//                ),
//              ),
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
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
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
                            margin: EdgeInsets.only(top: 16),
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
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget symptomsContainer(String imgPath, String imgTitle) {
    return Container(
        width: 100,
        height: 120,
        margin: EdgeInsets.only(left: 10, top: 10, bottom: 8),
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
            Center(child: Image.asset(imgPath, fit: BoxFit.contain,)),
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

class PreventionCard extends StatelessWidget {
  final String imgPath;
  final String imgTitle;
  final String desc;

  const PreventionCard({Key key, this.imgPath, this.imgTitle, this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 130,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 1),
                      blurRadius: 8,
                      color: AppStyles.kShadowColor.withOpacity(0.5))
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset(
              imgPath,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
              left: 130,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      imgTitle,
                      style: AppTextStyles.kTitleTextstyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        padding: const EdgeInsets.only(right: 2.0, bottom: 5),
                        child: Text(
                          desc,
                          maxLines: 4,
                          overflow: TextOverflow.visible,
                          style: TextStyle(fontSize: 14, height: 1.3,fontFamily: "Ubuntu"),
                        ),
                      ),
                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(right: 16),
//                      child: Align(
//                        alignment: Alignment.topRight,
//                        child: Padding(
//                          padding: const EdgeInsets.all(20.0),
//                          child: InkWell(
//                              onTap: () {
//                                Navigator.of(context).push(MaterialPageRoute(
//                                    builder: (context) => InfoScreen()));
//                              },
//                              child: SvgPicture.asset("images/forward.svg", width: 15, height: 15,)),
//                        ),
//                      ),
//                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
