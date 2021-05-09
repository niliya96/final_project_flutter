import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDresults extends StatelessWidget {
  XDresults({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff344856),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 126.0, end: 126.0),
            Pin(size: 40.0, start: 137.0),
            child: Text(
              'תוצאות עבור',
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
            Pin(start: 266.0, end: 57.0),
            Pin(size: 62.0, start: 203.0),
            child: Text(
              'שם\nמספר דרכון',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 1.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 42.0, end: 42.0),
            Pin(size: 217.0, middle: 0.4231),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 1.0, end: 0.0),
                  Pin(size: 112.0, middle: 0.4857),
                  child: SvgPicture.string(
                    _svg_z5xhmg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 215.0, end: 16.0),
                  Pin(size: 64.0, middle: 0.4902),
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
                          text: 'המלצה על העובד\n',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
                Container(),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.7797),
                  Pin(size: 11.0, start: 17.0),
                  child: Text(
                    'פורסם בתאריך',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      color: const Color(0xffd1d7dd),
                      height: 2.4,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, end: 16.0),
                  Pin(size: 40.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffc4714b),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 16.0, middle: 0.5),
                        Pin(size: 16.0, middle: 0.5),
                        child: SvgPicture.string(
                          _svg_xyovwj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 3.0, start: 1.0),
                  Pin(size: 15.0, start: 2.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_1odw7f,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(),
                Pinned.fromPins(
                  Pin(size: 36.0, end: 18.0),
                  Pin(size: 16.0, end: 17.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 16.0, start: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Text(
                          '78',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 14,
                            color: const Color(0xffd1d7dd),
                            fontWeight: FontWeight.w700,
                            height: 1.7142857142857142,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 16.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Chat' (shape)
                                  SvgPicture.string(
                                _svg_sw4duc,
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
                  Pin(size: 40.0, end: 16.0),
                  Pin(size: 40.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffc4714b),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 16.0, middle: 0.5),
                        Pin(size: 16.0, middle: 0.5),
                        child: SvgPicture.string(
                          _svg_xyovwj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, end: 28.0),
                  Pin(size: 16.0, start: 12.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 16.0, middle: 0.5),
                        Pin(size: 16.0, middle: 0.5),
                        child: SvgPicture.string(
                          _svg_xyovwj,
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
            Pin(start: 42.0, end: 42.0),
            Pin(size: 217.0, middle: 0.7828),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 1.0, end: 0.0),
                  Pin(size: 112.0, middle: 0.4857),
                  child: SvgPicture.string(
                    _svg_tnko08,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 215.0, end: 16.0),
                  Pin(size: 64.0, middle: 0.4902),
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
                          text: 'חוות דעת על עובד\n',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: '"התרשמתי לטובה מהעובד הנ"ל"',
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(),
                Pinned.fromPins(
                  Pin(size: 58.0, middle: 0.7797),
                  Pin(size: 11.0, start: 17.0),
                  child: Text(
                    'פורסם בתאריך',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      color: const Color(0xffd1d7dd),
                      height: 2.4,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, end: 16.0),
                  Pin(size: 40.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffc4714b),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 16.0, middle: 0.5),
                        Pin(size: 16.0, middle: 0.5),
                        child: SvgPicture.string(
                          _svg_xyovwj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 3.0, start: 1.0),
                  Pin(size: 15.0, start: 2.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_1odw7f,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(),
                Pinned.fromPins(
                  Pin(size: 36.0, end: 18.0),
                  Pin(size: 16.0, end: 17.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 16.0, start: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Text(
                          '56',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 14,
                            color: const Color(0xffd1d7dd),
                            fontWeight: FontWeight.w700,
                            height: 1.7142857142857142,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 16.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Chat' (shape)
                                  SvgPicture.string(
                                _svg_sw4duc,
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 138.3, start: 147.8),
            Pin(size: 1.0, middle: 0.1978),
            child:
                // Adobe XD layer: 'divider' (shape)
                SvgPicture.string(
              _svg_fnds5k,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 88.0, start: 42.0),
            Pin(size: 35.0, middle: 0.2278),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'btn_white' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x4d000000),
                                offset: Offset(0, 20),
                                blurRadius: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 52.0, middle: 0.5),
                        Pin(size: 19.0, middle: 0.5),
                        child: Text(
                          'סנן לפי',
                          style: TextStyle(
                            fontFamily: 'Rift Soft',
                            fontSize: 14,
                            color: const Color(0xff1b1c20),
                            letterSpacing: 1.4000000000000001,
                            fontWeight: FontWeight.w300,
                            height: 2.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 108.2, end: 116.0),
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
                        child:
                            // Adobe XD layer: 'app_bar' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 70.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'bg' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: SvgPicture.string(
                                      _svg_eurphx,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'icn_add' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 82.0, middle: 0.5017),
                                    Pin(size: 82.0, start: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 60.0, middle: 0.5016),
                                    Pin(size: 60.0, start: 11.0),
                                    child: SvgPicture.string(
                                      _svg_3p1yzk,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 26.8, middle: 0.5),
                                    Pin(size: 23.7, middle: 0.3418),
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
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
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
                                                child:
                                                    // Adobe XD layer: 'app_bar' (group)
                                                    Stack(
                                                  children: <Widget>[
                                                    Pinned.fromPins(
                                                      Pin(start: 0.0, end: 0.0),
                                                      Pin(size: 70.0, end: 0.0),
                                                      child:
                                                          // Adobe XD layer: 'bg' (group)
                                                          Stack(
                                                        children: <Widget>[
                                                          Pinned.fromPins(
                                                            Pin(
                                                                start: 0.0,
                                                                end: 0.0),
                                                            Pin(
                                                                start: 0.0,
                                                                end: 0.0),
                                                            child: SvgPicture
                                                                .string(
                                                              _svg_eurphx,
                                                              allowDrawingOutsideViewBox:
                                                                  true,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Pinned.fromPins(
                                                      Pin(
                                                          size: 82.0,
                                                          middle: 0.5017),
                                                      Pin(
                                                          size: 82.0,
                                                          start: 0.0),
                                                      child:
                                                          // Adobe XD layer: 'icn_add' (group)
                                                          Stack(
                                                        children: <Widget>[
                                                          Pinned.fromPins(
                                                            Pin(
                                                                start: 0.0,
                                                                end: 0.0),
                                                            Pin(
                                                                start: 0.0,
                                                                end: 0.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius: BorderRadius.all(
                                                                    Radius.elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                                color: const Color(
                                                                    0xffffffff),
                                                              ),
                                                            ),
                                                          ),
                                                          Pinned.fromPins(
                                                            Pin(
                                                                start: 11.0,
                                                                end: 11.0),
                                                            Pin(
                                                                start: 11.0,
                                                                end: 11.0),
                                                            child: SvgPicture
                                                                .string(
                                                              _svg_3p1yzk,
                                                              allowDrawingOutsideViewBox:
                                                                  true,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                          Pinned.fromPins(
                                                            Pin(
                                                                size: 26.8,
                                                                middle: 0.4893),
                                                            Pin(
                                                                size: 23.7,
                                                                middle: 0.4953),
                                                            child: Stack(
                                                              children: <
                                                                  Widget>[
                                                                Pinned.fromPins(
                                                                  Pin(
                                                                      start:
                                                                          0.0,
                                                                      end: 0.0),
                                                                  Pin(
                                                                      start:
                                                                          0.0,
                                                                      end: 0.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .string(
                                                                    _svg_xe0i3,
                                                                    allowDrawingOutsideViewBox:
                                                                        true,
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(),
                                                  ],
                                                ),
                                              ),
                                              Container(),
                                              Container(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 96.4, start: 0.0),
            child:
                // Adobe XD layer: 'bar_nav' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                    _svg_ihdz80,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                    _svg_ihdz80,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(start: 202.0, end: 97.0),
            Pin(size: 27.0, start: 35.0),
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
            Pin(size: 50.0, start: 12.0),
            child:
                // Adobe XD layer: 'highlighted item' (group)
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
                Container(),
                Pinned.fromPins(
                  Pin(size: 15.6, middle: 0.7551),
                  Pin(size: 15.6, start: 5.6),
                  child:
                      // Adobe XD layer: 'icn_notification' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xff87bcbf),
                            border: Border.all(
                                width: 2.0, color: const Color(0xffffffff)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 4.0, middle: 0.5187),
                        Pin(size: 10.0, start: 2.0),
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontFamily: 'Europa',
                            fontSize: 7,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            height: 5.857142857142857,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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

const String _svg_z5xhmg =
    '<svg viewBox="43.0 393.0 343.0 112.0" ><path transform="translate(43.0, 393.0)" d="M 0 0 L 97.16146087646484 0 L 343 0 L 343 112 L 0 112 L 0 0 Z" fill="#f7f5f5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xyovwj =
    '<svg viewBox="12.0 12.0 16.0 16.0" ><path transform="translate(12.0, -342.0)" d="M 0 369.999755859375 L 0 368.0000305175781 C 0 365.7994995117188 3.599954843521118 363.9995422363281 8 363.9995422363281 C 12.40004444122314 363.9995422363281 16 365.7994995117188 16 368.0000305175781 L 16 369.999755859375 L 0 369.999755859375 Z M 3.999550342559814 358.0002136230469 C 3.999550342559814 355.7907409667969 5.79052734375 353.9997253417969 8 353.9997253417969 C 10.208571434021 353.9997253417969 11.99954986572266 355.7907409667969 11.99954986572266 358.0002136230469 C 11.99954986572266 360.2087097167969 10.208571434021 361.999755859375 8 361.999755859375 C 5.79052734375 361.999755859375 3.999550342559814 360.2087097167969 3.999550342559814 358.0002136230469 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1odw7f =
    '<svg viewBox="0.0 0.0 3.0 15.0" ><path  d="M 0 13.5 C 0 12.67199993133545 0.6714000105857849 11.99970054626465 1.500300049781799 11.99970054626465 C 2.328299999237061 11.99970054626465 2.99970006942749 12.67199993133545 2.99970006942749 13.5 C 2.99970006942749 14.32800006866455 2.328299999237061 15.00030040740967 1.500300049781799 15.00030040740967 C 0.6714000105857849 15.00030040740967 0 14.32800006866455 0 13.5 Z M 0 7.49970006942749 C 0 6.671700000762939 0.6714000105857849 6.00029993057251 1.500300049781799 6.00029993057251 C 2.328299999237061 6.00029993057251 2.99970006942749 6.671700000762939 2.99970006942749 7.49970006942749 C 2.99970006942749 8.32859992980957 2.328299999237061 9 1.500300049781799 9 C 0.6714000105857849 9 0 8.32859992980957 0 7.49970006942749 Z M 0 1.500300049781799 C 0 0.6714000105857849 0.6714000105857849 0 1.500300049781799 0 C 2.328299999237061 0 2.99970006942749 0.6714000105857849 2.99970006942749 1.500300049781799 C 2.99970006942749 2.328299999237061 2.328299999237061 2.99970006942749 1.500300049781799 2.99970006942749 C 0.6714000105857849 2.99970006942749 0 2.328299999237061 0 1.500300049781799 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sw4duc =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path  d="M 5 8 C 5 8.600000381469727 5.400000095367432 9 6 9 L 10 9 C 10.5 9 11 8.600000381469727 11 8 C 11 7.400000095367432 10.60000038146973 7 10 7 L 6 7 C 5.5 7 5 7.400000095367432 5 8 Z M 0 5 C 0 2.200000047683716 2.200000047683716 0 5 0 L 11 0 C 13.80000019073486 0 16 2.200000047683716 16 5 L 16 15 C 16 15.60000038146973 15.60000038146973 16 15 16 L 5 16 C 2.200000047683716 16 0 13.80000019073486 0 11 L 0 5 Z" fill="#d1d7dd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tnko08 =
    '<svg viewBox="43.0 632.0 343.0 112.0" ><path transform="translate(43.0, 632.0)" d="M 0 0 L 97.16146087646484 0 L 343 0 L 343 112 L 0 112 L 0 0 Z" fill="#f7f5f5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fnds5k =
    '<svg viewBox="147.8 183.0 138.3 1.0" ><path transform="translate(147.84, 183.0)" d="M 0 0 L 138.31005859375 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eurphx =
    '<svg viewBox="0.0 0.0 428.0 70.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-5" stdDeviation="30"/></filter></defs><path  d="M 0 0 L 428 0 L 428 70 L 0 70 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xe0i3 =
    '<svg viewBox="1.0 2.9 26.8 23.7" ><path transform="translate(-13.97, -11.14)" d="M 26.57732963562012 15.66841888427734 L 26.57732963562012 24.26658248901367 L 16.88142585754395 24.26658248901367 C 15.78392601013184 24.26658248901367 14.99999809265137 25.10078430175781 14.99999809265137 25.93499374389648 C 14.99999809265137 26.76921081542969 15.94071769714355 27.60342025756836 16.88142585754395 27.60342025756836 L 26.57732963562012 27.60342025756836 L 26.57732963562012 36.06254577636719 C 26.57732963562012 37.03579330444336 27.5180492401123 37.73096466064453 28.45876121520996 37.73096466064453 C 29.39948463439941 37.73096466064453 30.34019660949707 36.89675903320313 30.34019660949707 36.06254577636719 L 30.34019660949707 27.60342025756836 L 39.87931823730469 27.60342025756836 C 40.97681427001953 27.60342025756836 41.7607421875 26.76921081542969 41.7607421875 25.93499374389648 C 41.7607421875 25.10078430175781 41.13359832763672 24.26658248901367 40.03609466552734 24.26658248901367 L 30.49697303771973 24.26658248901367 L 30.49697303771973 15.66841888427734 C 30.49697303771973 14.6951789855957 29.55626106262207 14 28.61554908752441 14 C 27.67482948303223 14 26.57732963562012 14.83420944213867 26.57732963562012 15.66841888427734 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3p1yzk =
    '<svg viewBox="11.0 11.0 60.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="10" stdDeviation="20"/></filter></defs><path transform="translate(11.0, 11.0)" d="M 30 0 C 46.56854248046875 0 60 13.43145942687988 60 30 C 60 46.56854248046875 46.56854248046875 60 30 60 C 13.43145942687988 60 0 46.56854248046875 0 30 C 0 13.43145942687988 13.43145942687988 0 30 0 Z" fill="#d97d54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ihdz80 =
    '<svg viewBox="1.0 0.0 428.0 96.4" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path transform="translate(1.0, 0.0)" d="M 0 0 L 428 0 L 428 96.41648864746094 L 0 96.41648864746094 L 0 0 Z" fill="#d97d54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
