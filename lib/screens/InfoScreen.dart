import 'package:covid19guide/utils/MyClipper.dart';
import 'package:covid19guide/utils/appStyles.dart';
import 'package:covid19guide/utils/prevention.dart';
import 'package:covid19guide/utils/strings.dart';
import 'package:covid19guide/utils/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoScreen extends StatelessWidget {
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
                            "images/coronadr.svg",
                            width: 230,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                          ),
                          Positioned(
                              top: 25,
                              left: 150,
                              child: Text(
                                AppStrings.INFO_IMG_TEXT,
                                style: AppTextStyles.topTextStyle,
                              )),
                          Positioned(
                              left: -10,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                color: Colors.white,
                                iconSize: 25,
                              )),
                          Container()
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              InfoCard(
                title: "About Corona Virus",
                content: AppStrings.WHAT_IS_COVID,
              ),
              InfoCard(
                title: "How It Spreads",
                content: AppStrings.HOW_IT_SPREAD,
              ),
              InfoCard(
                title: "Signs and Symptoms",
                content: AppStrings.SIGNS_SYMP,
              ),
           Center(
             child: Row(
               children: <Widget>[
                 symptomsContainer("images/fever.png", "Fever"),
                 symptomsContainer("images/cough.png", "Cough"),
                 symptomsContainer("images/tired.png", "Tiredness"),
               ],
             ),
           ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Divider(thickness: 0.2,color: Colors.black26,),
              ),
//              SizedBox(height: 15,),
              InfoCard(
                title: "Treatment",
                content: AppStrings.TREATMENT,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(
                    "Prevention",
                    style: AppTextStyles.headingTextStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
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
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Widget symptomsContainer(String imgPath, String imgTitle) {
  return Container(
      width: 100,
      height: 120,
      margin: EdgeInsets.symmetric(horizontal: 10),
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


class InfoCard extends StatelessWidget {
  final String content;
  final String title;

  const InfoCard({Key key, this.content, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Center(
                child: Text(
                  title,
                  style: AppTextStyles.headingTextStyle,
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(10),
                height: 200,
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 5,
                    color: AppStyles.kShadowColor.withOpacity(0.2))
              ]),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text(
              content,
              style: AppTextStyles.moreDescStyle,
            ),
          ),
        ),
//        SizedBox(height: 10,)
      ],
    );
  }
}

