
import 'package:covid19guide/utils/appStyles.dart';
import 'package:covid19guide/utils/textStyles.dart';
import 'package:flutter/material.dart';

class PreventionCard extends StatelessWidget {
  final String imgPath;
  final String imgTitle;
  final String desc;

  const PreventionCard({Key key, this.imgPath, this.imgTitle, this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 156,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8,),
            height: 130,
//            padding: EdgeInsets.all(24),
            width: width,
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
          Container(
            width: width / 2,
//            color: Colors.blueGrey,
            padding: EdgeInsets.all(17),
            child: Image.asset(
              imgPath,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.only(left: 8,right: 18.8, top: 15,),
                height: 136,
                width: width - 100,
//                color: Colors.redAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text(
                        imgTitle,
                        style: AppTextStyles.kTitleTextstyle,
                      ),
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
                          maxLines: 5,
                          overflow: TextOverflow.visible,
                          style: TextStyle(fontSize: 14, height: 1.3,fontFamily: "Ubuntu"),
                        ),
                      ),
                    ),

                  ],
                ),
              )),
        ],
      ),
    );
  }
}
