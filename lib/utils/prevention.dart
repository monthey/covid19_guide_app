
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
                          maxLines: 4,
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
