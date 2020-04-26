import 'package:covid19guide/screens/MainScreen.dart';
import 'package:covid19guide/utils/appStyles.dart';
import 'package:covid19guide/utils/strings.dart';
import 'package:covid19guide/utils/textStyles.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.main_background,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                margin: EdgeInsets.only(top: 50),
                child: Image.asset(
                  "images/first.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                AppStrings.APP_TITLE,
                style: AppTextStyles.firstHeadingStyle,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: AppStrings.APP_DESC,
                        style: AppTextStyles.descStyle,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 28, horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5.0,
                      spreadRadius: 3.0,
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 10, right: 5),
                  title: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  trailing: Container(
//                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: AppStyles.main_background,
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen()));
                      },
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.arrow_forward,color: Colors.white,),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
