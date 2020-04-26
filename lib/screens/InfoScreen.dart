import 'package:covid19guide/utils/MyClipper.dart';
import 'package:covid19guide/utils/appStyles.dart';
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
                  padding: EdgeInsets.only(top: 40, left: 27, right: 20, bottom: 0),
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
                      image: DecorationImage(image: AssetImage("images/virus.png"))),
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
                                    onPressed: (){
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
              InfoCard(title: "About Corona Virus",content: AppStrings.WHAT_IS_COVID,),
              InfoCard(title: "How It Spreads",content: AppStrings.HOW_IT_SPREAD,),
//
//              Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.only(left: 10,),
//                    child: Center(
//                      child: Text(
//                        "About Corona Virus",
//                        style: AppTextStyles.headingTextStyle,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//              Container(
//                margin: EdgeInsets.all(10),
////                height: 200,
//                padding: EdgeInsets.all(14),
//                decoration: BoxDecoration(
//                  color: Colors.white,
//                  borderRadius: BorderRadius.circular(10),
//                  boxShadow: [
//                    BoxShadow(
//                        offset: Offset(0, 1),
//                        blurRadius: 5,
//                        color: AppStyles.kShadowColor.withOpacity(0.2))
//                  ]
//                ),
//                child: Text(AppStrings.WHAT_IS_COVID, style: AppTextStyles.moreDescStyle,),
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.only(left: 10,),
//                    child: Center(
//                      child: Text(
//                        "How It Spreads",
//                        style: AppTextStyles.headingTextStyle,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//              Container(
//                margin: EdgeInsets.all(10),
////              width: MediaQuery.of(context).size.width * 0.7,
//                height: 200,
//                decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.circular(10),
//                    boxShadow: [
//                      BoxShadow(
//                          offset: Offset(0, 1),
//                          blurRadius: 5,
//                          color: AppStyles.kShadowColor.withOpacity(0.2))
//                    ]
//                ),
//                child: Text(AppStrings.HOW_IT_SPREAD, style: AppTextStyles.moreDescStyle,),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}


class InfoCard extends StatelessWidget{
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
              padding: EdgeInsets.only(left: 10,),
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
//                height: 200,
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 5,
                    color: AppStyles.kShadowColor.withOpacity(0.2))
              ]
          ),
          child: Text(content, style: AppTextStyles.moreDescStyle,),
        ),
//        SizedBox(height: 10,)
      ],
    );
  }
}