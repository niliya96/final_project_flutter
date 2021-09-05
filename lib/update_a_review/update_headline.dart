import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';

Widget createHeadLineUpdate() {
  return Column(children: <Widget>[
    Expanded(flex: 2, child: SizedBox()),
    Expanded(
      flex: 6,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(UPDATE_PIC),
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
    Expanded(
      flex: 2,
      child: Center(
        child: Text(
          UPDATE_REVIEW_HEADLINE,
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
      flex: 1,
      child: Divider(
        color: DARK_BLUE,
        thickness: 1,
        indent: 120,
        endIndent: 120,
      ),
    ),
  ]);
}