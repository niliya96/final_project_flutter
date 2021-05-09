import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDnew_profile extends StatelessWidget {
  XDnew_profile({
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
            Pin(size: 264.0, middle: 0.5135),
            Pin(size: 85.0, middle: 0.1758),
            child: Stack(
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
                    _svg_wtvuwd,
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
                    _svg_wtvuwd,
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
            ),
          ),
          Pinned.fromPins(
            Pin(size: 178.0, middle: 0.5),
            Pin(size: 50.0, end: 85.0),
            child: Stack(
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
                  Pin(size: 42.0, middle: 0.5),
                  Pin(size: 19.0, middle: 0.4839),
                  child: Text(
                    'המשך',
                    style: TextStyle(
                      fontFamily: 'Rift Soft',
                      fontSize: 14,
                      color: const Color(0xff1b1c20),
                      letterSpacing: 1.4000000000000001,
                      fontWeight: FontWeight.w300,
                      height: 2.5,
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
            Pin(start: 36.0, end: 36.0),
            Pin(start: 265.0, end: 187.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xfff7f5f5),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 48.0, middle: 0.4538),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707e8a)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 48.0, middle: 0.5353),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707e8a)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 48.0, middle: 0.618),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707e8a)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 48.0, middle: 0.7044),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707e8a)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 194.0, middle: 0.5),
            Pin(size: 22.0, start: 313.0),
            child: Text(
              'מלא את הפרטים הבאים',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xff6b7781),
                fontWeight: FontWeight.w700,
                height: 1.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.8153),
            Pin(size: 22.0, middle: 0.4552),
            child: Text(
              'שם מלא',
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
          Pinned.fromPins(
            Pin(size: 30.0, middle: 0.8194),
            Pin(size: 22.0, middle: 0.5366),
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
          Pinned.fromPins(
            Pin(size: 48.0, middle: 0.8132),
            Pin(size: 22.0, middle: 0.6167),
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
          Pinned.fromPins(
            Pin(size: 88.0, middle: 0.7994),
            Pin(size: 22.0, middle: 0.6969),
            child: Text(
              'אמת סיסמא',
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
      ),
    );
  }
}

const String _svg_wtvuwd =
    '<svg viewBox="197.5 273.5 33.4 1.0" ><path transform="translate(197.5, 273.5)" d="M 0 0 L 33.41015625 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pacicg =
    '<svg viewBox="0.0 0.0 412.0 95.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path  d="M 0 0 L 412 0 L 412 95.75759124755859 L 0 95.75759124755859 L 0 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
