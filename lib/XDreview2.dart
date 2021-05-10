import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDreview2 extends StatelessWidget {
  XDreview2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff353549),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 107.0, end: 71.0),
            Pin(size: 40.0, start: 133.0),
            child: Text(
              'המלצה על העובד',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 30,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 1.1666666666666667,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 42.0, end: 42.0),
            Pin(size: 74.3, middle: 0.3444),
            child: SvgPicture.string(
              _svg_1t79zp,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 42.0, end: 58.0),
            Pin(size: 77.0, middle: 0.3682),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xff777e84),
                  height: 1.7142857142857142,
                ),
                children: [
                  TextSpan(
                    text:
                        '"העובד נאמן, היה אתנו במשך שנתיים וטיפל במסירות באבינו, מאוד ממליצים"',
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 79.0, middle: 0.6096),
            Pin(size: 27.0, middle: 0.2361),
            child: Text(
              'שם מלא',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 24,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7083333333333333,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 115.0, middle: 0.5657),
            Pin(size: 22.0, middle: 0.2618),
            child: Text(
              'פורסם בתאריך',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xffd1d7dd),
                height: 2.4,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 61.0, end: 58.0),
            Pin(size: 61.0, middle: 0.2373),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff90c4e5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.4139, endFraction: 0.4139),
                  Pin(startFraction: 0.3279, endFraction: 0.5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff2699fb),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.3279, endFraction: 0.3279),
                  Pin(startFraction: 0.543, endFraction: 0.3279),
                  child: SvgPicture.string(
                    _svg_r2pc63,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 138.3, start: 154.8),
            Pin(size: 1.0, middle: 0.2071),
            child:
                // Adobe XD layer: 'divider' (shape)
                SvgPicture.string(
              _svg_f85q7s,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 79.0, middle: 0.6096),
            Pin(size: 27.0, middle: 0.2361),
            child: Text(
              'שם מלא',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 24,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7083333333333333,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 139.0, end: 52.0),
            Pin(size: 22.0, middle: 0.4493),
            child: Text(
              'משך זמן: שנתיים ',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xffd1d7dd),
                height: 2.4,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 106.0, middle: 0.2516),
            Pin(size: 22.0, middle: 0.4493),
            child: Text(
              'על סמך: ראיון',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xffd1d7dd),
                height: 2.4,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 8.0, middle: 0.5),
            Pin(start: 388.0, end: 474.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 35.0, start: 35.0),
            Pin(size: 35.0, start: 117.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff90c4e5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 8.1, end: 8.9),
                  Pin(start: 8.8, end: 8.2),
                  child: SvgPicture.string(
                    _svg_oho4jh,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 11.9, end: 8.2),
                  Pin(size: 11.9, start: 8.1),
                  child: SvgPicture.string(
                    _svg_tifzdo,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 58.0, start: 24.0),
            Pin(size: 11.0, start: 152.0),
            child: Text(
              'למשלוח הודעה',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: const Color(0xffd1d7dd),
                height: 4.8,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 48.0, start: 30.0),
            Pin(size: 11.0, start: 163.0),
            child: Text(
              'לכותב החווד',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: const Color(0xffd1d7dd),
                height: 4.8,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 298.0, end: 50.0),
            Pin(size: 27.0, start: 440.7),
            child: Text(
              'תגובות',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 1.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 248.0, start: 60.0),
            Pin(size: 64.3, middle: 0.6128),
            child: SvgPicture.string(
              _svg_wydkoy,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 190.0, middle: 0.3829),
            Pin(size: 16.0, middle: 0.591),
            child: Text(
              'תגובה',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff777e84),
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, end: 56.0),
            Pin(size: 40.0, middle: 0.5948),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xff90c4e5),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.4, endFraction: 0.4),
                        Pin(startFraction: 0.3, endFraction: 0.5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.3, endFraction: 0.3),
                  Pin(startFraction: 0.55, endFraction: 0.3),
                  child: SvgPicture.string(
                    _svg_ujlv3e,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.4452),
            Pin(size: 16.0, middle: 0.55),
            child: Text(
              'Monday, 10:40 am',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 248.0, start: 58.0),
            Pin(size: 64.3, middle: 0.7409),
            child: SvgPicture.string(
              _svg_cl7117,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 190.0, middle: 0.3739),
            Pin(size: 16.0, middle: 0.7119),
            child: Text(
              'תגובה',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff777e84),
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, end: 58.0),
            Pin(size: 40.0, middle: 0.7192),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xff90c4e5),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.4, endFraction: 0.4),
                        Pin(startFraction: 0.3, endFraction: 0.5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.3, endFraction: 0.3),
                  Pin(startFraction: 0.55, endFraction: 0.3),
                  child: SvgPicture.string(
                    _svg_ujlv3e,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 48.0, middle: 0.4505),
            Pin(size: 16.0, middle: 0.6709),
            child: Text(
              'July 19',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 95.8, start: 0.0),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_pacicg,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 56.0, end: 12.0),
            Pin(size: 56.0, start: 22.8),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffbce0fd),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 20.0, end: 20.0),
                  Pin(start: 20.0, end: 20.0),
                  child: SvgPicture.string(
                    _svg_c9viwi,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 197.0, end: 86.0),
            Pin(size: 27.0, start: 37.8),
            child: Text(
              'שלום שם מלא',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 0.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, start: 17.0),
            Pin(size: 50.0, start: 14.8),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 2.5, end: 29.2),
                  Pin(size: 1.0, start: 10.4),
                  child: SvgPicture.string(
                    _svg_rkacjg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 2.5, end: 29.2),
                  Pin(size: 1.0, middle: 0.3579),
                  child: SvgPicture.string(
                    _svg_onfh9z,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 11.7, start: 2.5),
                  Pin(size: 1.0, end: 24.3),
                  child: SvgPicture.string(
                    _svg_4adpbu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(size: 9.0, middle: 0.48),
                  child: SvgPicture.string(
                    _svg_let9uq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(size: 7.0, middle: 0.667),
                  child: SvgPicture.string(
                    _svg_ee6loy,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 4.0, middle: 0.5),
                  Pin(size: 2.0, middle: 0.5975),
                  child: SvgPicture.string(
                    _svg_3zu5qr,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.6, middle: 0.7551),
                  Pin(size: 15.6, start: 5.6),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff87bcbf),
                      border: Border.all(
                          width: 2.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 4.0, middle: 0.6957),
                  Pin(size: 10.0, middle: 0.1894),
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontFamily: 'Europa',
                      fontSize: 7,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      height: 5.857142857142857,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: -2.0, end: -14.0),
            Pin(size: 70.0, end: -2.0),
            child: SvgPicture.string(
              _svg_n4dyc7,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 82.0, middle: 0.5),
            Pin(size: 82.0, end: 33.0),
            child:
                // Adobe XD layer: 'icn_add' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 11.0, end: 11.0),
                  Pin(start: 11.0, end: 11.0),
                  child: SvgPicture.string(
                    _svg_v0qb8b,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.8, middle: 0.4893),
                  Pin(size: 23.7, middle: 0.4953),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_xe0i3,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 18.0, middle: 0.7208),
            Pin(size: 18.0, end: 29.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 14.8, start: 0.0),
                  Pin(size: 14.8, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 2.0, color: const Color(0xffc3cbce)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 5.2, end: 0.0),
                  Pin(size: 5.2, end: 0.0),
                  child: SvgPicture.string(
                    _svg_nojukn,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 15.0, middle: 0.238),
            Pin(size: 18.1, end: 22.9),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 7.0, middle: 0.5),
                  Pin(size: 7.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 2.0, color: const Color(0xffc3cbce)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 8.6, end: 0.0),
                  child: SvgPicture.string(
                    _svg_2y8dmk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_1t79zp =
    '<svg viewBox="42.0 274.0 328.0 74.3" ><path transform="translate(42.0, 274.0)" d="M 0 0 L 92.91242218017578 0 L 328 0 L 328 65.87800598144531 L 328 74.29998779296875 L 0 74.29998779296875 L 0 0 Z" fill="#f7f5f5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r2pc63 =
    '<svg viewBox="313.0 225.1 21.0 7.9" ><path transform="translate(313.0, 215.13)" d="M 10.49986839294434 10 C 4.724940776824951 10 1.937150102548912e-07 12.36247253417969 1.937150102548912e-07 15.24993705749512 L 1.937150102548912e-07 17.87490653991699 L 20.99973678588867 17.87490653991699 L 20.99973678588867 15.24993705749512 C 20.99973678588867 12.36247253417969 16.2747974395752 10 10.49986839294434 10 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f85q7s =
    '<svg viewBox="154.8 180.0 138.3 1.0" ><path transform="translate(154.84, 180.0)" d="M 0 0 L 138.31005859375 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oho4jh =
    '<svg viewBox="36.1 119.8 18.0 18.0" ><path transform="translate(35.15, 118.15)" d="M 19 10.69999980926514 L 19 19.70000076293945 L 1 19.70000076293945 L 1 1.700000047683716 L 11 1.700000047683716" fill="none" stroke="#334856" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_tifzdo =
    '<svg viewBox="42.9 119.1 11.9 11.9" ><path transform="translate(35.15, 118.15)" d="M 19.70000076293945 3.799999952316284 L 12 11.5 L 7.800000190734863 12.89999961853027 L 9.199999809265137 8.699999809265137 L 16.79999923706055 1 L 19.70000076293945 3.799999952316284 Z" fill="none" stroke="#334856" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_wydkoy =
    '<svg viewBox="60.0 493.7 248.0 64.3" ><path transform="translate(53.0, 290.7)" d="M 247 267.2999877929688 L 7 267.2999877929688 L 7 203 L 247 203 L 247 214.3805389404297 L 255 218.9327392578125 L 247 223.4849548339844 L 247 267.2999877929688 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ujlv3e =
    '<svg viewBox="328.0 1074.3 16.0 6.0" ><path transform="translate(328.0, 1064.35)" d="M 7.999899864196777 10 C 3.599954843521118 10 3.405972748282693e-08 11.79998302459717 3.405972748282693e-08 13.99995899200439 L 3.405972748282693e-08 15.99993991851807 L 15.99979972839355 15.99993991851807 L 15.99979972839355 13.99995899200439 C 15.99979972839355 11.79998302459717 12.39984512329102 10 7.999899864196777 10 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cl7117 =
    '<svg viewBox="58.0 596.9 248.0 64.3" ><path transform="translate(51.0, 393.94)" d="M 247 267.2999877929688 L 7 267.2999877929688 L 7 203 L 247 203 L 247 214.3805389404297 L 255 218.9327392578125 L 247 223.4849548339844 L 247 267.2999877929688 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c9viwi =
    '<svg viewBox="364.0 40.0 16.0 16.0" ><path transform="translate(364.0, -314.0)" d="M 0 369.9999084472656 L 0 368.0001220703125 C 0 365.7996215820313 3.600000143051147 363.9996032714844 8.000100135803223 363.9996032714844 C 12.40019989013672 363.9996032714844 16.00020027160645 365.7996215820313 16.00020027160645 368.0001220703125 L 16.00020027160645 369.9999084472656 L 0 369.9999084472656 Z M 3.999600172042847 358.0002136230469 C 3.999600172042847 355.7907104492188 5.790600299835205 353.9996948242188 8.000100135803223 353.9996948242188 C 10.20870018005371 353.9996948242188 11.99970054626465 355.7907104492188 11.99970054626465 358.0002136230469 C 11.99970054626465 360.2088012695313 10.20870018005371 361.9998168945313 8.000100135803223 361.9998168945313 C 5.790600299835205 361.9998168945313 3.999600172042847 360.2088012695313 3.999600172042847 358.0002136230469 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pacicg =
    '<svg viewBox="0.0 0.0 412.0 95.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path  d="M 0 0 L 412 0 L 412 95.75759124755859 L 0 95.75759124755859 L 0 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_rkacjg =
    '<svg viewBox="19.5 22.4 18.3 1.0" ><path transform="translate(19.5, 22.38)" d="M 0 0 L 18.33203125 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_onfh9z =
    '<svg viewBox="19.5 29.5 18.3 1.0" ><path transform="translate(19.5, 29.54)" d="M 0 0 L 18.33203125 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_4adpbu =
    '<svg viewBox="19.5 36.7 11.7 1.0" ><path transform="translate(19.5, 36.7)" d="M 0 0 L 11.66583824157715 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_let9uq =
    '<svg viewBox="33.0 31.7 18.0 9.0" ><path transform="translate(32.0, 30.68)" d="M 6 10 C 4 10 3 10 1 10 C 1.700000047683716 6.699999809265137 2.299999952316284 4.300000190734863 3 1 L 17 1 L 19 10 C 16.70000076293945 10 17.29999923706055 10 15 10" fill="none" stroke="#324755" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ee6loy =
    '<svg viewBox="33.0 40.7 18.0 7.0" ><path transform="translate(32.0, 30.68)" d="M 12 10 L 19 10 L 19 17 L 1 17 L 1 10 L 8 10" fill="none" stroke="#324755" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_3zu5qr =
    '<svg viewBox="40.0 40.7 4.0 2.0" ><path transform="translate(32.0, 30.68)" d="M 8 10 C 8 11.10000038146973 8.899999618530273 12 10 12 C 11.10000038146973 12 12 11.10000038146973 12 10" fill="none" stroke="#324755" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_xe0i3 =
    '<svg viewBox="1.0 2.9 26.8 23.7" ><path transform="translate(-13.97, -11.14)" d="M 26.57732963562012 15.66841888427734 L 26.57732963562012 24.26658248901367 L 16.88142585754395 24.26658248901367 C 15.78392601013184 24.26658248901367 14.99999809265137 25.10078430175781 14.99999809265137 25.93499374389648 C 14.99999809265137 26.76921081542969 15.94071769714355 27.60342025756836 16.88142585754395 27.60342025756836 L 26.57732963562012 27.60342025756836 L 26.57732963562012 36.06254577636719 C 26.57732963562012 37.03579330444336 27.5180492401123 37.73096466064453 28.45876121520996 37.73096466064453 C 29.39948463439941 37.73096466064453 30.34019660949707 36.89675903320313 30.34019660949707 36.06254577636719 L 30.34019660949707 27.60342025756836 L 39.87931823730469 27.60342025756836 C 40.97681427001953 27.60342025756836 41.7607421875 26.76921081542969 41.7607421875 25.93499374389648 C 41.7607421875 25.10078430175781 41.13359832763672 24.26658248901367 40.03609466552734 24.26658248901367 L 30.49697303771973 24.26658248901367 L 30.49697303771973 15.66841888427734 C 30.49697303771973 14.6951789855957 29.55626106262207 14 28.61554908752441 14 C 27.67482948303223 14 26.57732963562012 14.83420944213867 26.57732963562012 15.66841888427734 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v0qb8b =
    '<svg viewBox="11.0 11.0 60.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="10" stdDeviation="20"/></filter></defs><path transform="translate(11.0, 11.0)" d="M 30 0 C 46.56854248046875 0 60 13.43145942687988 60 30 C 60 39.94112396240234 55.1646728515625 48.75289916992188 47.47682952880859 54.38641357421875 C 42.75289916992188 57.85096740722656 36.62741851806641 60 30 60 C 13.43145942687988 60 0 46.56854248046875 0 30 C 0 13.43145942687988 13.43145942687988 0 30 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_n4dyc7 =
    '<svg viewBox="-2.0 802.0 428.0 70.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-5" stdDeviation="30"/></filter></defs><path transform="translate(-2.0, 802.0)" d="M 0 0 L 428 0 L 428 70 L 0 70 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_nojukn =
    '<svg viewBox="306.6 352.6 5.2 5.2" ><path transform="translate(306.62, 352.59)" d="M 0 0 L 5.199999809265137 5.199999809265137" fill="none" stroke="#c3cbce" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_2y8dmk =
    '<svg viewBox="79.8 697.6 15.0 8.6" ><path transform="translate(78.84, 687.06)" d="M 1 19.10000038146973 L 1 16.5 C 1 13.19999980926514 3.700000047683716 10.5 7 10.5 L 10 10.5 C 13.30000019073486 10.5 16 13.19999980926514 16 16.5 L 16 19.10000038146973" fill="none" stroke="#c3cbce" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
