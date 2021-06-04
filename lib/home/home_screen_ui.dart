import 'package:flutter/material.dart';

Widget createHeadline() {
  return Stack(
      children: <Widget>[
        // image
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Container(
            width: 430.0,
            height: 290.0,
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/homescreen.jfif'),
              fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Center (
            child: Text(
              'ברוך הבא',
              style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 30,
              color: Color.fromRGBO(0, 48, 80, 50),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
            TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 400),
          child: Divider(
              color: const Color.fromRGBO(0, 48, 80, 50),
              thickness: 1,
              indent: 120,
              endIndent: 120,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 260, left: 20, right: 20),
          child: Center (
            child: Text(
              'אם הגעת לכאן, סימן שגם לך חשוב שהכי יקר עבורך יקבל את הטיפול המסור ביותר',
              style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 20,
              color: Color.fromRGBO(0, 48, 80, 50),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
            TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            ),
          ),
        ),
    ]
  );
}