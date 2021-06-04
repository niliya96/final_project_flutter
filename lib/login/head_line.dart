import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';



class HeadLineLogin extends StatelessWidget {
  HeadLineLogin({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
          // text 
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 75, 40),
              child: Text(
                'ExWorkerReviewer',
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
          // image
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 90, 0, 100),
            child: Container(
                width: 430.0,
                height: 270.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/open1.jfif'),
                    fit: BoxFit.fill,
                  ),
                ),
            ),
          ),
      ]
    );
  }
}