import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDCreateAccount1 extends StatelessWidget {
  XDCreateAccount1({
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
            Pin(size: 352.5, end: 0.0),
            Pin(size: 33.5, middle: 0.6196),
            child:
                // Adobe XD layer: 'tabs' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 48.0, middle: 0.7471),
                  Pin(size: 20.0, start: 3.0),
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
                            color: const Color(0xffffffff),
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
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'tab_signup' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 45.0, start: 0.0),
                        Pin(size: 20.0, start: 0.0),
                        child: Text(
                          'הירשם',
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
                      Pinned.fromPins(
                        Pin(size: 188.0, end: 0.0),
                        Pin(size: 1.0, end: -1.0),
                        child: SvgPicture.string(
                          _svg_lqawoz,
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
                Container(),
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
                          _svg_qtdnaj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.5375),
                        child: SvgPicture.string(
                          _svg_boobg,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 11.7, start: 0.0),
                        Pin(size: 1.0, end: -1.0),
                        child: SvgPicture.string(
                          _svg_pfhibg,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.5375),
                        child: SvgPicture.string(
                          _svg_boobg,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, start: 0.0),
                        child: SvgPicture.string(
                          _svg_qtdnaj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.5375),
                        child: SvgPicture.string(
                          _svg_boobg,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 11.7, start: 0.0),
                        Pin(size: 1.0, end: -1.0),
                        child: SvgPicture.string(
                          _svg_pfhibg,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.5375),
                        child: SvgPicture.string(
                          _svg_boobg,
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
          Pinned.fromPins(
            Pin(start: 51.0, end: 50.0),
            Pin(size: 34.0, middle: 0.7769),
            child:
                // Adobe XD layer: 'Password' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffbce0fd),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 59.0, start: 36.0),
                  Pin(size: 16.0, start: 0.0),
                  child: Text(
                    '●●●●●●●',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff2699fb),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 51.0, end: 50.0),
            Pin(size: 34.0, middle: 0.7175),
            child:
                // Adobe XD layer: 'Name' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffbce0fd),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 60.0, start: 36.0),
                  Pin(size: 16.0, start: 0.0),
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff2699fb),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 0.0),
                  Pin(size: 16.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'Icon' (shape)
                      SvgPicture.string(
                    _svg_sua62o,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}

const String _svg_lqawoz =
    '<svg viewBox="213.5 8.5 188.0 1.0" ><path transform="translate(213.5, 8.5)" d="M 0 0 L 188 0" fill="none" stroke="#d97d54" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kgnuw7 =
    '<svg viewBox="1.0 0.0 430.0 96.4" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path transform="translate(1.0, 0.0)" d="M 0 0 L 430 0 L 430 96.41648864746094 L 0 96.41648864746094 L 0 0 Z" fill="#d97d54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_qtdnaj =
    '<svg viewBox="0.0 0.0 18.3 1.0" ><path  d="M 0 0 L 18.33203125 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_boobg =
    '<svg viewBox="0.0 7.2 18.3 1.0" ><path transform="translate(0.0, 7.16)" d="M 0 0 L 18.33203125 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_pfhibg =
    '<svg viewBox="0.0 14.3 11.7 1.0" ><path transform="translate(0.0, 14.32)" d="M 0 0 L 11.66583824157715 0" fill="none" stroke="#dbe1e5" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_sua62o =
    '<svg viewBox="40.0 136.0 16.0 16.0" ><path transform="translate(6160.0, 16226.0)" d="M -6120 -16073.9990234375 L -6120 -16075.998046875 C -6120 -16078.19921875 -6116.3984375 -16080 -6112.0009765625 -16080 C -6107.59912109375 -16080 -6104.00146484375 -16078.19921875 -6104.00146484375 -16075.998046875 L -6104.00146484375 -16073.9990234375 L -6120 -16073.9990234375 Z M -6115.99853515625 -16086 C -6115.99853515625 -16088.208984375 -6114.20947265625 -16089.998046875 -6112.0009765625 -16089.998046875 C -6109.7919921875 -16089.998046875 -6107.9990234375 -16088.208984375 -6107.9990234375 -16086 C -6107.9990234375 -16083.7919921875 -6109.7919921875 -16081.9990234375 -6112.0009765625 -16081.9990234375 C -6114.20947265625 -16081.9990234375 -6115.99853515625 -16083.7919921875 -6115.99853515625 -16086 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
