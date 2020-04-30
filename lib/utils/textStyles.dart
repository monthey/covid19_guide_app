import 'package:covid19guide/utils/appStyles.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static final TextStyle firstHeadingStyle = TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontFamily: "Ubuntu",
      fontWeight: FontWeight.w900,
      letterSpacing: 1);

  static final TextStyle secondHeadingStyle = TextStyle(
      color: AppStyles.text_color,
      fontSize: 27,
      fontFamily: "Ubuntu",
      fontWeight: FontWeight.w900,
      letterSpacing: 1);

  static final TextStyle topTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontFamily: "Ubuntu");

  static final TextStyle headingTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black45);


  static final kTitleTextstyle = TextStyle(
    fontSize: 18,
    color: AppStyles.text_color,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle descStyle = TextStyle(color: Colors.white, fontSize: 16, wordSpacing: 1,fontFamily: "Ubuntu",height: 1.4);

  static final TextStyle moreDescStyle = TextStyle(color: Colors.black87, fontSize: 16, wordSpacing: 1,fontFamily: "Ubuntu",height: 1.5);
}
