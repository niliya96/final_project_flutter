import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDAddActivities1 extends StatelessWidget {
  XDAddActivities1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff344856),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 1.0, end: -1.0),
            Pin(size: 590.0, start: 0.0),
            child:
                // Adobe XD layer: 'bg' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xff334856),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 10),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 41.9, end: 41.9),
            Pin(size: 209.0, middle: 0.4469),
            child:
                // Adobe XD layer: 'search_bar' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 55.0, middle: 0.5),
                  Pin(size: 57.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21.0),
                      color: const Color(0xffd97d54),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 14.5, middle: 0.4979),
                  Pin(size: 15.5, end: 23.9),
                  child:
                      // Adobe XD layer: 'icn_search_light' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.5),
                        Pin(size: 14.0, start: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 2.0, color: const Color(0xffffffff)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 3.0, end: 0.0),
                        Pin(size: 3.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_rzy4gg,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 56.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                    _svg_cobtgr,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 56.0, middle: 0.4967),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                    _svg_am1k5x,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 60.0, end: 22.1),
                  Pin(size: 20.0, start: 18.0),
                  child: Text(
                    'הקלד שם',
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
                  Pin(size: 90.0, end: 22.1),
                  Pin(size: 20.0, middle: 0.4974),
                  child: Text(
                    'הקלד פספורט',
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 146.0, end: 146.0),
            Pin(size: 40.0, start: 245.0),
            child: Text(
              'חפש עובד',
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
          Pinned.fromPins(
            Pin(size: 56.0, end: 28.0),
            Pin(size: 56.0, start: 20.0),
            child:
                // Adobe XD layer: 'Profile Large' (group)
                Stack(
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
                  Pin(size: 16.0, middle: 0.5),
                  Pin(size: 16.0, middle: 0.5),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_i5qj86,
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
            Pin(start: 266.0, end: 96.0),
            Pin(size: 27.0, start: 35.0),
            child: Text(
              'התנתק',
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
            Pin(start: 90.0, end: 56.0),
            Pin(size: 62.0, start: 657.0),
            child: Text(
              'אחד הפרטים שהזנת לא נכונים.\nאנא נסה שנית.',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 1.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 13.5, end: 396.2),
            Pin(size: 1.0, start: 22.4),
            child: SvgPicture.string(
              _svg_6u2prs,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 13.5, end: 396.2),
            Pin(size: 1.0, middle: 0.0319),
            child: SvgPicture.string(
              _svg_9qxl19,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 11.7, start: 13.5),
            Pin(size: 1.0, end: 888.3),
            child: SvgPicture.string(
              _svg_gc5s3q,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 13.5, end: 396.2),
            Pin(size: 1.0, middle: 0.0319),
            child: SvgPicture.string(
              _svg_9qxl19,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_rzy4gg =
    '<svg viewBox="11.5 12.5 3.0 3.0" ><path transform="translate(11.5, 12.5)" d="M 0 0 L 3 3" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_cobtgr =
    '<svg viewBox="-6.1 121.0 344.2 56.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="20" stdDeviation="30"/></filter></defs><path transform="translate(-1.43, 121.0)" d="M -0.6640625 0 L 335.521484375 0 C 337.7306213378906 0 339.521484375 1.790861129760742 339.521484375 4 L 339.521484375 52 C 339.521484375 54.20913696289063 337.7306213378906 56 335.521484375 56 L -0.6640625 56 C -2.873201370239258 56 -4.6640625 54.20913696289063 -4.6640625 52 L -4.6640625 4 C -4.6640625 1.790861129760742 -2.873201370239258 0 -0.6640625 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_am1k5x =
    '<svg viewBox="-6.1 197.0 344.2 56.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="20" stdDeviation="30"/></filter></defs><path transform="translate(-1.43, 197.0)" d="M -0.6640625 0 L 335.521484375 0 C 337.7306213378906 0 339.521484375 1.790861129760742 339.521484375 4 L 339.521484375 52 C 339.521484375 54.20913696289063 337.7306213378906 56 335.521484375 56 L -0.6640625 56 C -2.873201370239258 56 -4.6640625 54.20913696289063 -4.6640625 52 L -4.6640625 4 C -4.6640625 1.790861129760742 -2.873201370239258 0 -0.6640625 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ihdz80 =
    '<svg viewBox="1.0 0.0 428.0 96.4" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path transform="translate(1.0, 0.0)" d="M 0 0 L 428 0 L 428 96.41648864746094 L 0 96.41648864746094 L 0 0 Z" fill="#d97d54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_i5qj86 =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path transform="translate(0.0, -354.0)" d="M 0 369.9999084472656 L 0 368.0001220703125 C 0 365.7996215820313 3.600000143051147 363.9996032714844 8.000100135803223 363.9996032714844 C 12.40019989013672 363.9996032714844 16.00020027160645 365.7996215820313 16.00020027160645 368.0001220703125 L 16.00020027160645 369.9999084472656 L 0 369.9999084472656 Z M 3.999600172042847 358.0002136230469 C 3.999600172042847 355.7907104492188 5.790600299835205 353.9996948242188 8.000100135803223 353.9996948242188 C 10.20870018005371 353.9996948242188 11.99970054626465 355.7907104492188 11.99970054626465 358.0002136230469 C 11.99970054626465 360.2088012695313 10.20870018005371 361.9998168945313 8.000100135803223 361.9998168945313 C 5.790600299835205 361.9998168945313 3.999600172042847 360.2088012695313 3.999600172042847 358.0002136230469 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6u2prs =
    '<svg viewBox="13.5 22.4 18.3 1.0" ><path transform="translate(13.5, 22.38)" d="M 0 0 L 18.33203125 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_9qxl19 =
    '<svg viewBox="13.5 29.5 18.3 1.0" ><path transform="translate(13.5, 29.54)" d="M 0 0 L 18.33203125 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_gc5s3q =
    '<svg viewBox="13.5 36.7 11.7 1.0" ><path transform="translate(13.5, 36.7)" d="M 0 0 L 11.66583824157715 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
