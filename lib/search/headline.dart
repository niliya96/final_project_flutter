import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadLineSearch extends StatelessWidget {
  HeadLineSearch({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        flex: 2,
        child: SizedBox()
      ),
      Expanded(
        flex: 8,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/search.jfif'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Center(
          child: Text(
            'חפש עובד',
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
    ]);
  }
}