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

  static final TextStyle descStyle = TextStyle(color: Colors.white, fontSize: 16, wordSpacing: 1,fontFamily: "Ubuntu");
}
