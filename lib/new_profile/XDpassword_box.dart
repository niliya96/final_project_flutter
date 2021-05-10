import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDpassword_box extends StatelessWidget {
  XDpassword_box({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707e8a)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 48.0, end: 8.0),
          Pin(size: 22.0, middle: 0.5769),
          child: Text(
            'סיסמא',
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 17,
              color: const Color(0xff6e8ca0),
              fontWeight: FontWeight.w300,
              height: 2.3529411764705883,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
