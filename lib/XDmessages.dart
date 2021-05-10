import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDmessages extends StatelessWidget {
  XDmessages({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff353549),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 18.0, end: 21.0),
            Pin(size: 80.0, middle: 0.8022),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_r4xsw1,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.8, end: 37.8),
            Pin(size: 46.5, middle: 0.791),
            child:
                // Adobe XD layer: 'container' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffc8d1d3)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 69.0, middle: 0.7016),
            Pin(size: 19.0, middle: 0.7825),
            child: Text(
              'כתוב הודעה',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 14,
                color: const Color(0xff6e8ca0),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 35.8, end: 56.9),
            Pin(size: 35.8, middle: 0.7876),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_xmo0oq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.3, middle: 0.5636),
                  Pin(size: 12.2, middle: 0.5076),
                  child:
                      // Adobe XD layer: 'icn_send' (shape)
                      SvgPicture.string(
                    _svg_9kz3d,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: -1.0, end: 1.0),
            Pin(size: 101.0, start: 96.0),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_u3lasr,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 8.0, start: 31.0),
            Pin(size: 14.0, start: 139.5),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 7.0, start: 0.0),
                  child: SvgPicture.string(
                    _svg_s5mvl6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.1),
                  Pin(size: 7.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_wk2twu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 8.0, start: 31.0),
            Pin(size: 14.0, start: 139.5),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 7.0, start: 0.0),
                  child: SvgPicture.string(
                    _svg_s5mvl6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.1),
                  Pin(size: 7.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_wk2twu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 61.0, middle: 0.5014),
            Pin(size: 61.0, start: 116.0),
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
            Pin(size: 55.0, start: 38.0),
            Pin(size: 55.0, middle: 0.2776),
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
                  Pin(size: 16.0, middle: 0.5011),
                  Pin(size: 16.0, middle: 0.5128),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_3gt21p,
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
            Pin(size: 55.0, end: 47.3),
            Pin(size: 55.0, middle: 0.3532),
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
                  Pin(size: 16.0, middle: 0.5011),
                  Pin(size: 16.0, middle: 0.5128),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_3gt21p,
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
            Pin(size: 269.0, end: 39.0),
            Pin(size: 45.0, middle: 0.275),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffe0e1e2)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29425965),
                    offset: Offset(0, 10),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 241.0, start: 56.0),
            Pin(size: 45.0, middle: 0.3586),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                color: const Color(0xff53a8df),
                border: Border.all(width: 1.0, color: const Color(0xff53a8df)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29425965),
                    offset: Offset(0, 10),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 34.0, middle: 0.2884),
            Pin(size: 12.0, middle: 0.3174),
            child: Text(
              '10:32 AM',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 9,
                color: const Color(0xff8d8c8c),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 34.0, middle: 0.6693),
            Pin(size: 12.0, middle: 0.396),
            child: Text(
              '10:42 AM',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 9,
                color: const Color(0xff8d8c8c),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, end: 49.0),
            Pin(size: 19.0, middle: 0.2813),
            child: Text(
              'הודעה',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 14,
                color: const Color(0xff334856),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.6729),
            Pin(size: 19.0, middle: 0.3626),
            child: Text(
              'הודעה',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 14,
                color: const Color(0xff334856),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: -2.0),
            Pin(size: 70.0, end: 84.0),
            child: SvgPicture.string(
              _svg_89bh4s,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 82.0, middle: 0.5061),
            Pin(size: 82.0, end: 119.0),
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
            Pin(size: 18.0, middle: 0.7259),
            Pin(size: 18.0, end: 115.0),
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
            Pin(size: 15.0, middle: 0.2431),
            Pin(size: 18.1, end: 108.9),
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
          Pinned.fromPins(
            Pin(start: 1.0, end: -1.0),
            Pin(size: 95.8, start: 0.0),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_51vj5m,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 56.0, end: 11.0),
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
            Pin(start: 198.0, end: 85.0),
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
            Pin(size: 50.0, start: 18.0),
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
            Pin(size: 55.0, start: 38.0),
            Pin(size: 55.0, middle: 0.2776),
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
                  Pin(size: 16.0, middle: 0.5011),
                  Pin(size: 16.0, middle: 0.5128),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_3gt21p,
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
            Pin(size: 55.0, end: 47.3),
            Pin(size: 55.0, middle: 0.3532),
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
                  Pin(size: 16.0, middle: 0.5011),
                  Pin(size: 16.0, middle: 0.5128),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_3gt21p,
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
            Pin(size: 269.0, end: 39.0),
            Pin(size: 45.0, middle: 0.275),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffe0e1e2)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29425965),
                    offset: Offset(0, 10),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 241.0, start: 56.0),
            Pin(size: 45.0, middle: 0.3586),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                color: const Color(0xff53a8df),
                border: Border.all(width: 1.0, color: const Color(0xff53a8df)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29425965),
                    offset: Offset(0, 10),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 34.0, middle: 0.2884),
            Pin(size: 12.0, middle: 0.3174),
            child: Text(
              '10:32 AM',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 9,
                color: const Color(0xff8d8c8c),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, end: 49.0),
            Pin(size: 19.0, middle: 0.2813),
            child: Text(
              'הודעה',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 14,
                color: const Color(0xff334856),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.6729),
            Pin(size: 19.0, middle: 0.3626),
            child: Text(
              'הודעה',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 14,
                color: const Color(0xff334856),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_r4xsw1 =
    '<svg viewBox="18.0 701.1 373.0 80.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="1" stdDeviation="20"/></filter></defs><path transform="translate(18.0, 701.11)" d="M 0 0 L 373 0 L 373 80 L 0 80 L 0 0 Z" fill="#ffba00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xmo0oq =
    '<svg viewBox="370.0 733.1 35.8 35.8" ><path transform="translate(370.0, 733.11)" d="M 17.91925048828125 0 C 27.8157787322998 0 35.8385009765625 8.022722244262695 35.8385009765625 17.91925048828125 C 35.8385009765625 27.8157787322998 27.8157787322998 35.8385009765625 17.91925048828125 35.8385009765625 C 8.022722244262695 35.8385009765625 0 27.8157787322998 0 17.91925048828125 C 0 8.022722244262695 8.022722244262695 0 17.91925048828125 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9kz3d =
    '<svg viewBox="381.0 745.1 16.3 12.2" ><path transform="translate(381.0, 745.12)" d="M 16.05960845947266 5.73530101776123 L 0.4877918362617493 0.03188885003328323 C 0.3752245008945465 -0.04315605014562607 0.2626571357250214 -0.00563359959051013 0.1500898003578186 0.06941130012273788 C 0.0750449001789093 0.1444562077522278 0 0.2570235431194305 0 0.3695909082889557 L 0 4.384492874145508 C 0 4.909806728363037 0.3752245008945465 5.360076427459717 0.8630163073539734 5.472643852233887 L 3.564632654190063 6.110526084899902 L 0.8630164265632629 6.74840784072876 C 0.3752245008945465 6.823452472686768 0 7.273721218109131 0 7.799035549163818 L 0 11.81393814086914 C 0 11.92650508880615 0.0750449001789093 12.03907299041748 0.1500898003578186 12.11411762237549 C 0.2251347154378891 12.15163993835449 0.3001796007156372 12.18916320800781 0.3752245008945465 12.18916320800781 C 0.4127469658851624 12.18916320800781 0.4502694308757782 12.18916320800781 0.4877918362617493 12.15164089202881 L 16.05960845947266 6.410706043243408 C 16.2096996307373 6.373183250427246 16.322265625 6.223093509674072 16.322265625 6.073004245758057 C 16.322265625 5.922914505004883 16.2096996307373 5.810346126556396 16.05960845947266 5.73530101776123 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s5mvl6 =
    '<svg viewBox="19.5 149.6 8.0 7.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 27.5, 156.6)" d="M 0 6.981353759765625 L 8 0" fill="none" stroke="#324755" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_wk2twu =
    '<svg viewBox="19.5 156.6 7.9 7.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 27.42, 163.66)" d="M 0 0 L 7.92132568359375 7.034599304199219" fill="#324755" stroke="#334856" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_u3lasr =
    '<svg viewBox="-1.0 96.0 412.0 101.0" ><path transform="translate(-1.0, 96.0)" d="M 0 0 L 412 0 L 412 101 L 0 101 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r2pc63 =
    '<svg viewBox="313.0 225.1 21.0 7.9" ><path transform="translate(313.0, 215.13)" d="M 10.49986839294434 10 C 4.724940776824951 10 1.937150102548912e-07 12.36247253417969 1.937150102548912e-07 15.24993705749512 L 1.937150102548912e-07 17.87490653991699 L 20.99973678588867 17.87490653991699 L 20.99973678588867 15.24993705749512 C 20.99973678588867 12.36247253417969 16.2747974395752 10 10.49986839294434 10 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3gt21p =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path  d="M 0 16.00021362304688 L 0 14.00042724609375 C 0 11.7999267578125 3.600000143051147 9.999908447265625 8.000100135803223 9.999908447265625 C 12.40019989013672 9.999908447265625 16.00020027160645 11.7999267578125 16.00020027160645 14.00042724609375 L 16.00020027160645 16.00021362304688 L 0 16.00021362304688 Z M 3.999600172042847 4.000518798828125 C 3.999600172042847 1.791015625 5.790600299835205 0 8.000100135803223 0 C 10.20870018005371 0 11.99970054626465 1.791015625 11.99970054626465 4.000518798828125 C 11.99970054626465 6.2091064453125 10.20870018005371 8.0001220703125 8.000100135803223 8.0001220703125 C 5.790600299835205 8.0001220703125 3.999600172042847 6.2091064453125 3.999600172042847 4.000518798828125 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xe0i3 =
    '<svg viewBox="1.0 2.9 26.8 23.7" ><path transform="translate(-13.97, -11.14)" d="M 26.57732963562012 15.66841888427734 L 26.57732963562012 24.26658248901367 L 16.88142585754395 24.26658248901367 C 15.78392601013184 24.26658248901367 14.99999809265137 25.10078430175781 14.99999809265137 25.93499374389648 C 14.99999809265137 26.76921081542969 15.94071769714355 27.60342025756836 16.88142585754395 27.60342025756836 L 26.57732963562012 27.60342025756836 L 26.57732963562012 36.06254577636719 C 26.57732963562012 37.03579330444336 27.5180492401123 37.73096466064453 28.45876121520996 37.73096466064453 C 29.39948463439941 37.73096466064453 30.34019660949707 36.89675903320313 30.34019660949707 36.06254577636719 L 30.34019660949707 27.60342025756836 L 39.87931823730469 27.60342025756836 C 40.97681427001953 27.60342025756836 41.7607421875 26.76921081542969 41.7607421875 25.93499374389648 C 41.7607421875 25.10078430175781 41.13359832763672 24.26658248901367 40.03609466552734 24.26658248901367 L 30.49697303771973 24.26658248901367 L 30.49697303771973 15.66841888427734 C 30.49697303771973 14.6951789855957 29.55626106262207 14 28.61554908752441 14 C 27.67482948303223 14 26.57732963562012 14.83420944213867 26.57732963562012 15.66841888427734 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v0qb8b =
    '<svg viewBox="11.0 11.0 60.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="10" stdDeviation="20"/></filter></defs><path transform="translate(11.0, 11.0)" d="M 30 0 C 46.56854248046875 0 60 13.43145942687988 60 30 C 60 39.94112396240234 55.1646728515625 48.75289916992188 47.47682952880859 54.38641357421875 C 42.75289916992188 57.85096740722656 36.62741851806641 60 30 60 C 13.43145942687988 60 0 46.56854248046875 0 30 C 0 13.43145942687988 13.43145942687988 0 30 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_89bh4s =
    '<svg viewBox="0.0 800.0 414.0 70.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-5" stdDeviation="30"/></filter></defs><path transform="translate(0.0, 800.0)" d="M 0 0 L 414 0 L 414 70 L 0 70 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_nojukn =
    '<svg viewBox="306.6 352.6 5.2 5.2" ><path transform="translate(306.62, 352.59)" d="M 0 0 L 5.199999809265137 5.199999809265137" fill="none" stroke="#c3cbce" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_2y8dmk =
    '<svg viewBox="79.8 697.6 15.0 8.6" ><path transform="translate(78.84, 687.06)" d="M 1 19.10000038146973 L 1 16.5 C 1 13.19999980926514 3.700000047683716 10.5 7 10.5 L 10 10.5 C 13.30000019073486 10.5 16 13.19999980926514 16 16.5 L 16 19.10000038146973" fill="none" stroke="#c3cbce" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_c9viwi =
    '<svg viewBox="364.0 40.0 16.0 16.0" ><path transform="translate(364.0, -314.0)" d="M 0 369.9999084472656 L 0 368.0001220703125 C 0 365.7996215820313 3.600000143051147 363.9996032714844 8.000100135803223 363.9996032714844 C 12.40019989013672 363.9996032714844 16.00020027160645 365.7996215820313 16.00020027160645 368.0001220703125 L 16.00020027160645 369.9999084472656 L 0 369.9999084472656 Z M 3.999600172042847 358.0002136230469 C 3.999600172042847 355.7907104492188 5.790600299835205 353.9996948242188 8.000100135803223 353.9996948242188 C 10.20870018005371 353.9996948242188 11.99970054626465 355.7907104492188 11.99970054626465 358.0002136230469 C 11.99970054626465 360.2088012695313 10.20870018005371 361.9998168945313 8.000100135803223 361.9998168945313 C 5.790600299835205 361.9998168945313 3.999600172042847 360.2088012695313 3.999600172042847 358.0002136230469 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_51vj5m =
    '<svg viewBox="1.0 0.0 412.0 95.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path transform="translate(1.0, 0.0)" d="M 0 0 L 412 0 L 412 95.75759124755859 L 0 95.75759124755859 L 0 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
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
