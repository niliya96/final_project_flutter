import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDinbox extends StatelessWidget {
  XDinbox({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff353549),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 80.0, middle: 0.2494),
            child:
                // Adobe XD layer: 'bg' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 16.2, end: 16.2),
            Pin(size: 45.0, middle: 0.2576),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_6jipl4,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 32.0, middle: 0.8316),
            Pin(size: 20.0, middle: 0.2647),
            child: Text(
              'חפש',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 15,
                color: const Color(0xff6e8ca0),
                fontWeight: FontWeight.w300,
                height: 2.3333333333333335,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 14.0, end: 38.0),
            Pin(size: 15.7, middle: 0.2669),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 1.7),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 2.0, color: const Color(0xffc8d1d3)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 3.0, end: 0.0),
                  Pin(size: 3.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_zf04o9,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: -2.0),
            Pin(size: 100.0, middle: 0.3598),
            child:
                // Adobe XD layer: 'message' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                    _svg_mz5fmu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 34.0, start: 22.5),
                  Pin(size: 16.0, middle: 0.2366),
                  child: Text(
                    'Aug 21',
                    style: TextStyle(
                      fontFamily: 'Europa',
                      fontSize: 12,
                      color: const Color(0xff798186),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 42.0, middle: 0.7863),
                  Pin(size: 34.0, middle: 0.4224),
                  child:
                      // Adobe XD layer: 'messaging' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 20.0, start: 0.0),
                        child: Text(
                          'EWR1',
                          style: TextStyle(
                            fontFamily: 'Europa',
                            fontSize: 15,
                            color: const Color(0xff334856),
                            fontWeight: FontWeight.w700,
                            height: 2.3333333333333335,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 6.0, end: 0.0),
                        Pin(size: 19.0, end: 0.0),
                        child: Text(
                          'הודעה',
                          style: TextStyle(
                            fontFamily: 'Europa',
                            fontSize: 14,
                            color: const Color(0xff6e8ca0),
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 22.5, end: 0.0),
                  Pin(size: 1.0, end: -0.5),
                  child: SvgPicture.string(
                    _svg_7bsc2q,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 55.0, end: 9.0),
            Pin(size: 55.0, middle: 0.3675),
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 100.0, middle: 0.4897),
            child:
                // Adobe XD layer: 'message' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                    _svg_hi4nz4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 34.0, start: 22.5),
                  Pin(size: 16.0, middle: 0.2366),
                  child: Text(
                    'Aug 21',
                    style: TextStyle(
                      fontFamily: 'Europa',
                      fontSize: 12,
                      color: const Color(0xff798186),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 42.0, middle: 0.7863),
                  Pin(size: 34.0, middle: 0.4224),
                  child:
                      // Adobe XD layer: 'messaging' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 20.0, start: 0.0),
                        child: Text(
                          'EWR1',
                          style: TextStyle(
                            fontFamily: 'Europa',
                            fontSize: 15,
                            color: const Color(0xff334856),
                            fontWeight: FontWeight.w700,
                            height: 2.3333333333333335,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 6.0, end: 0.0),
                        Pin(size: 19.0, end: 0.0),
                        child: Text(
                          'הודעה',
                          style: TextStyle(
                            fontFamily: 'Europa',
                            fontSize: 14,
                            color: const Color(0xff6e8ca0),
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 22.5, end: 0.0),
                  Pin(size: 1.0, end: -0.5),
                  child: SvgPicture.string(
                    _svg_u4vgf6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 55.0, end: 9.0),
            Pin(size: 55.0, middle: 0.4902),
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 101.0, start: 97.0),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_2gj719,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, middle: 0.5),
            Pin(size: 40.0, start: 122.8),
            child: Text(
              'הודעות',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 30,
                color: const Color(0xff3f525f),
                letterSpacing: -0.6,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 18.7, end: 61.3),
            Pin(size: 18.7, start: 138.2),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.7),
                  Pin(start: 0.7, end: 0.0),
                  child: SvgPicture.string(
                    _svg_gbu6dd,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 11.9, end: 0.0),
                  Pin(size: 11.9, start: 0.0),
                  child: SvgPicture.string(
                    _svg_5g5zcb,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 2.0, end: 2.7),
                  Pin(size: 2.0, start: 2.7),
                  child: SvgPicture.string(
                    _svg_deu2ft,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 8.0, start: 32.0),
            Pin(size: 14.0, start: 140.5),
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
            Pin(start: 2.0, end: -2.0),
            Pin(size: 95.8, start: 0.0),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_l4zawq,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 56.0, end: 10.0),
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
            Pin(start: 199.0, end: 84.0),
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
            Pin(size: 50.0, start: 19.0),
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
            Pin(start: -2.0, end: 0.0),
            Pin(size: 70.0, end: -2.0),
            child: SvgPicture.string(
              _svg_lpvt90,
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
          Pinned.fromPins(
            Pin(size: 8.0, start: 32.0),
            Pin(size: 14.0, start: 140.5),
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
        ],
      ),
    );
  }
}

const String _svg_6jipl4 =
    '<svg viewBox="16.2 212.5 379.7 45.0" ><path transform="translate(20.82, 212.5)" d="M -0.2514943778514862 0 L 370.6089172363281 0 C 373.0458984375 0 375.0215148925781 1.439084768295288 375.0215148925781 3.214285612106323 L 375.0215148925781 41.78571319580078 C 375.0215148925781 43.5609130859375 373.0458984375 45 370.6089172363281 45 L -0.2514943778514862 45 C -2.688488483428955 45 -4.664062976837158 43.5609130859375 -4.664062976837158 41.78571319580078 L -4.664062976837158 3.214285612106323 C -4.664062976837158 1.439084768295288 -2.688488483428955 0 -0.2514943778514862 0 Z" fill="#f0f3f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zf04o9 =
    '<svg viewBox="371.0 240.7 3.0 3.0" ><path transform="translate(371.0, 240.7)" d="M 0 0 L 3 3" fill="none" stroke="#c8d1d3" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_mz5fmu =
    '<svg viewBox="0.0 0.0 413.5 100.0" ><path  d="M 0 0 L 413.5000305175781 0 L 413.5000305175781 100 L 0 100 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7bsc2q =
    '<svg viewBox="22.5 99.5 391.5 1.0" ><path transform="translate(22.5, 99.5)" d="M 0 0 L 391.5 0" fill="none" stroke="#f0f3f4" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3gt21p =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path  d="M 0 16.00021362304688 L 0 14.00042724609375 C 0 11.7999267578125 3.600000143051147 9.999908447265625 8.000100135803223 9.999908447265625 C 12.40019989013672 9.999908447265625 16.00020027160645 11.7999267578125 16.00020027160645 14.00042724609375 L 16.00020027160645 16.00021362304688 L 0 16.00021362304688 Z M 3.999600172042847 4.000518798828125 C 3.999600172042847 1.791015625 5.790600299835205 0 8.000100135803223 0 C 10.20870018005371 0 11.99970054626465 1.791015625 11.99970054626465 4.000518798828125 C 11.99970054626465 6.2091064453125 10.20870018005371 8.0001220703125 8.000100135803223 8.0001220703125 C 5.790600299835205 8.0001220703125 3.999600172042847 6.2091064453125 3.999600172042847 4.000518798828125 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hi4nz4 =
    '<svg viewBox="0.0 0.0 411.5 100.0" ><path  d="M 0 0 L 411.5000305175781 0 L 411.5000305175781 100 L 0 100 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u4vgf6 =
    '<svg viewBox="22.5 99.5 389.5 1.0" ><path transform="translate(22.5, 99.5)" d="M 0 0 L 389.5 0" fill="none" stroke="#f0f3f4" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2gj719 =
    '<svg viewBox="0.0 97.0 412.0 101.0" ><path transform="translate(0.0, 97.0)" d="M 0 0 L 412 0 L 412 101 L 0 101 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gbu6dd =
    '<svg viewBox="384.0 148.4 18.0 18.0" ><path transform="translate(383.0, 146.75)" d="M 19 10.69999980926514 L 19 19.70000076293945 L 1 19.70000076293945 L 1 1.700000047683716 L 11 1.700000047683716" fill="none" stroke="#334856" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_5g5zcb =
    '<svg viewBox="390.8 147.7 11.9 11.9" ><path transform="translate(383.0, 146.75)" d="M 19.70000076293945 3.799999952316284 L 12 11.5 L 7.800000190734863 12.89999961853027 L 9.199999809265137 8.699999809265137 L 16.79999923706055 1 L 19.70000076293945 3.799999952316284 Z" fill="none" stroke="#334856" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_deu2ft =
    '<svg viewBox="398.0 150.4 2.0 2.0" ><path transform="translate(398.0, 150.45)" d="M 0 0 L 2 2" fill="none" stroke="#324755" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_s5mvl6 =
    '<svg viewBox="19.5 149.6 8.0 7.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 27.5, 156.6)" d="M 0 6.981353759765625 L 8 0" fill="none" stroke="#324755" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_wk2twu =
    '<svg viewBox="19.5 156.6 7.9 7.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 27.42, 163.66)" d="M 0 0 L 7.92132568359375 7.034599304199219" fill="#324755" stroke="#334856" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_c9viwi =
    '<svg viewBox="364.0 40.0 16.0 16.0" ><path transform="translate(364.0, -314.0)" d="M 0 369.9999084472656 L 0 368.0001220703125 C 0 365.7996215820313 3.600000143051147 363.9996032714844 8.000100135803223 363.9996032714844 C 12.40019989013672 363.9996032714844 16.00020027160645 365.7996215820313 16.00020027160645 368.0001220703125 L 16.00020027160645 369.9999084472656 L 0 369.9999084472656 Z M 3.999600172042847 358.0002136230469 C 3.999600172042847 355.7907104492188 5.790600299835205 353.9996948242188 8.000100135803223 353.9996948242188 C 10.20870018005371 353.9996948242188 11.99970054626465 355.7907104492188 11.99970054626465 358.0002136230469 C 11.99970054626465 360.2088012695313 10.20870018005371 361.9998168945313 8.000100135803223 361.9998168945313 C 5.790600299835205 361.9998168945313 3.999600172042847 360.2088012695313 3.999600172042847 358.0002136230469 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l4zawq =
    '<svg viewBox="2.0 0.0 412.0 95.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path transform="translate(2.0, 0.0)" d="M 0 0 L 412 0 L 412 95.75759124755859 L 0 95.75759124755859 L 0 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
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
const String _svg_lpvt90 =
    '<svg viewBox="-2.0 802.0 414.0 70.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-5" stdDeviation="30"/></filter></defs><path transform="translate(-2.0, 802.0)" d="M 0 0 L 414 0 L 414 70 L 0 70 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_nojukn =
    '<svg viewBox="306.6 352.6 5.2 5.2" ><path transform="translate(306.62, 352.59)" d="M 0 0 L 5.199999809265137 5.199999809265137" fill="none" stroke="#c3cbce" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_2y8dmk =
    '<svg viewBox="79.8 697.6 15.0 8.6" ><path transform="translate(78.84, 687.06)" d="M 1 19.10000038146973 L 1 16.5 C 1 13.19999980926514 3.700000047683716 10.5 7 10.5 L 10 10.5 C 13.30000019073486 10.5 16 13.19999980926514 16 16.5 L 16 19.10000038146973" fill="none" stroke="#c3cbce" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
