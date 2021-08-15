import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';

Widget createHomeScreenUI() {
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
            image: AssetImage(HOMESCREENPIC),
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
    Expanded(
      flex: 25,
      child: Center(
        child: Text(
          WELCOM,
          style: TextStyle(
            fontFamily: EUROPA_FONT,
            fontSize: 30,
            color: DARK_BLUE,
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
        color: DARK_BLUE,
        thickness: 1,
        indent: 120,
        endIndent: 120,
      ),
    ),
    Expanded(
      flex: 30,
      child: Center(
        child: Text(
          TEXT_HOMESCREEN1,
          style: TextStyle(
            fontFamily: EUROPA_FONT,
            fontSize: 20,
            color: DARK_BLUE,
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
