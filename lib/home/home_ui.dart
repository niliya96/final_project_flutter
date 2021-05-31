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
        SizedBox(
          width: 0.0,
          height: 30.0,
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
    ]
  );
}