import 'package:covid19guide/utils/appStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.second_background,
      body: Container(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyCliper(),
              child: Container(
                padding:
                    EdgeInsets.only(top: 40, left: 40, right: 20, bottom: 0),
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
                    image:
                        DecorationImage(image: AssetImage("images/virus.png"))),
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
                            left: 150,
                            child: Text(
                              "All you need \nis to stay home",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Ubuntu"),
                            )),
                        Container()
                      ],
                    ))
                  ],
                ),
              ),
            ),
//            New Head Here
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Main Symptoms",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                  symptomsContainer("images/head.png", "Headache"),
                  symptomsContainer("images/sick.png", "Cold"),
                ],
              ),
            ),

            Container(
//              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                  Text("Stay at home to\nStop corona virus",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                  Image.asset("images/home.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget symptomsContainer(String imgPath, String imgTitle) {
    return Container(
        width: 100,
        height: 120,
        margin: EdgeInsets.only(left: 16, top: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 0), blurRadius: 5, color: Colors.black26)
            ]),
        child: Column(
          children: <Widget>[
            Center(child: Image.asset(imgPath)),
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

class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
