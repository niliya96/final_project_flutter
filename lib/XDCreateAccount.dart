import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDCreateAccount extends StatelessWidget {
  XDCreateAccount({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff334856),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
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
            Pin(size: 304.5, start: 0.5),
            Pin(size: 34.5, middle: 0.6225),
            child:
                // Adobe XD layer: 'tabs' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 48.0, end: 0.0),
                  Pin(size: 20.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'tab_log_in' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Text(
                          'התחבר',
                          style: TextStyle(
                            fontFamily: 'Europa',
                            fontSize: 15,
                            color: const Color(0xff516a7b),
                            letterSpacing: -0.3,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 188.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'tab_signup' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 45.0, middle: 0.493),
                        Pin(size: 20.0, start: 0.0),
                        child: Text(
                          'הירשם',
                          style: TextStyle(
                            fontFamily: 'Europa',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                            letterSpacing: -0.3,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, end: -1.0),
                        child: SvgPicture.string(
                          _svg_2c9kzz,
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
            Pin(size: 295.0, middle: 0.5038),
            Pin(size: 50.0, middle: 0.7329),
            child:
                // Adobe XD layer: 'btn_sign_up_email' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                    _svg_xyl06a,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 172.0, middle: 0.5935),
                  Pin(size: 19.0, middle: 0.4839),
                  child: Text(
                    'הרשמה באמצעות מייל',
                    style: TextStyle(
                      fontFamily: 'Rift Soft',
                      fontSize: 14,
                      color: const Color(0xff1b1c20),
                      letterSpacing: 2.1,
                      fontWeight: FontWeight.w300,
                      height: 2.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.1733),
                  Pin(size: 11.0, middle: 0.5128),
                  child:
                      // Adobe XD layer: 'icn_mail' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0, color: const Color(0xffc8d1d3)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 5.0, start: 1.0),
                        child: SvgPicture.string(
                          _svg_jwuedn,
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
            Pin(size: 123.0, middle: 0.518),
            Pin(size: 56.0, end: 125.0),
            child:
                // Adobe XD layer: 'Social' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 56.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'g+' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 1.0, color: const Color(0xffbce0fd)),
                          ),
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 56.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'facebook' (group)
                      Stack(
                    children: <Widget>[
                      Container(),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 1.0, color: const Color(0xffbce0fd)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 265.0, middle: 0.5031),
            Pin(size: 40.0, start: 123.0),
            child:
                // Adobe XD layer: 'messaging_left' (group)
                Stack(
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
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: -2.0, end: 0.0),
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
                    _svg_kgnuw7,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.3, start: 19.5),
                  Pin(size: 14.3, middle: 0.2726),
                  child:
                      // Adobe XD layer: 'icn_menu_dark' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, start: 0.0),
                        child: SvgPicture.string(
                          _svg_3395br,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.5375),
                        child: SvgPicture.string(
                          _svg_20ivmu,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 11.7, start: 0.0),
                        Pin(size: 1.0, end: -1.0),
                        child: SvgPicture.string(
                          _svg_9qv0au,
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
            Pin(size: 283.0, middle: 0.3593),
            child:
                // Adobe XD layer: 'bg' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bg card' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: -2.0),
            Pin(size: 327.0, middle: 0.3172),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_2c9kzz =
    '<svg viewBox="187.5 120.5 188.0 1.0" ><path transform="translate(187.5, 120.5)" d="M 0 0 L 188 0" fill="none" stroke="#d97d54" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xyl06a =
    '<svg viewBox="0.0 0.0 295.0 50.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="20" stdDeviation="50"/></filter></defs><path  d="M 25 0 L 270 0 C 283.80712890625 0 295 11.1928825378418 295 25 C 295 38.8071174621582 283.80712890625 50 270 50 L 25 50 C 11.1928825378418 50 0 38.8071174621582 0 25 C 0 11.1928825378418 11.1928825378418 0 25 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_jwuedn =
    '<svg viewBox="1.0 2.0 18.0 5.0" ><path  d="M 1 2 L 10 7 L 19 2" fill="none" stroke="#c8d1d3" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_3395br =
    '<svg viewBox="1.0 1.0 18.3 1.0" ><path transform="translate(1.0, 1.0)" d="M 0 0 L 18.33203125 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_20ivmu =
    '<svg viewBox="1.0 8.2 18.3 1.0" ><path transform="translate(1.0, 8.16)" d="M 0 0 L 18.33203125 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_9qv0au =
    '<svg viewBox="1.0 15.3 11.7 1.0" ><path transform="translate(1.0, 15.32)" d="M 0 0 L 11.66583824157715 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_kgnuw7 =
    '<svg viewBox="1.0 0.0 430.0 96.4" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path transform="translate(1.0, 0.0)" d="M 0 0 L 430 0 L 430 96.41648864746094 L 0 96.41648864746094 L 0 0 Z" fill="#d97d54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
