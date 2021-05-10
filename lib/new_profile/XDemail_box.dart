import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDemail_box extends StatelessWidget {
  XDemail_box({
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
          Pin(size: 30.0, end: 9.0),
          Pin(size: 22.0, middle: 0.5769),
          child: Text(
            'מייל',
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
