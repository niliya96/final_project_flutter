import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';

class HeadLineLogin extends StatelessWidget {
  HeadLineLogin({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        flex: 1,
        child: SizedBox(),
      ),
      Expanded(
        flex: 10,
        child: Center(
          child: Text(
            LOGIN_HEADLINE,
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
        flex: 25,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(LOGIN1),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 10,
        child: SizedBox(),
      ),
    ]);
  }
}