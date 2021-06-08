import 'package:flutter/material.dart';

Widget createHeadline() {
  return Column(children: <Widget>[
    Expanded(
      flex: 20,
      child: SizedBox(),
    ),
    Expanded(
      flex: 110,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/homescreen.jfif'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
    Expanded(
      flex: 25,
      child: Center(
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
    Expanded(
      flex: 5,
      child: Divider(
        color: const Color.fromRGBO(0, 48, 80, 50),
        thickness: 1,
        indent: 120,
        endIndent: 120,
      ),
    ),
    Expanded(
      flex: 30,
      child: Center(
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
    Expanded(
      flex: 30,
      child: SizedBox(),
    ),
  ]);
}
