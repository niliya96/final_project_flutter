import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDheadline extends StatelessWidget {
  XDheadline({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 40.0, start: 0.0),
          child: Text(
            'ExWorkerReviewer',
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 30,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromPins(
          Pin(start: 71.0, end: 71.0),
          Pin(size: 24.0, end: 0.0),
          child: Text(
            'צור פרופיל חדש',
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 18,
              color: const Color(0xffffffff),
              height: 1.3888888888888888,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 33.4, middle: 0.4966),
          Pin(size: 1.0, middle: 0.6012),
          child: SvgPicture.string(
            _svg_2jn2ov,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 40.0, start: 0.0),
          child: Text(
            'ExWorkerReviewer',
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 30,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 40.0, start: 0.0),
          child: Text(
            'ExWorkerReviewer',
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 30,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 33.4, middle: 0.4966),
          Pin(size: 1.0, middle: 0.6012),
          child: SvgPicture.string(
            _svg_2jn2ov,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 40.0, start: 0.0),
          child: Text(
            'ExWorkerReviewer',
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 30,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
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

const String _svg_2jn2ov =
    '<svg viewBox="114.5 50.5 33.4 1.0" ><path transform="translate(114.5, 50.5)" d="M 0 0 L 33.41015625 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
