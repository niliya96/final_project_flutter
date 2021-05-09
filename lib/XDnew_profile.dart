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
            Pin(start: 52.0, end: 49.0),
            Pin(start: 333.0, end: 195.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff7f5f5),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 279.0, middle: 0.5101),
            Pin(size: 48.0, middle: 0.4954),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707e8a)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 279.0, middle: 0.5101),
            Pin(size: 48.0, middle: 0.5683),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707e8a)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 279.0, middle: 0.5101),
            Pin(size: 48.0, middle: 0.6412),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707e8a)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 279.0, middle: 0.5101),
            Pin(size: 48.0, middle: 0.7141),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707e8a)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 194.0, middle: 0.5085),
            Pin(size: 22.0, start: 381.0),
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
            Pin(size: 178.0, middle: 0.504),
            Pin(size: 50.0, end: 76.0),
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 96.4, start: -7.4),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_7xax6y,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.7446),
            Pin(size: 22.0, middle: 0.4934),
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
            Pin(size: 60.0, middle: 0.7446),
            Pin(size: 22.0, middle: 0.4934),
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
            Pin(size: 30.0, middle: 0.7638),
            Pin(size: 22.0, middle: 0.5664),
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
            Pin(size: 48.0, middle: 0.7368),
            Pin(size: 22.0, middle: 0.6394),
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
            Pin(size: 88.0, middle: 0.7235),
            Pin(size: 22.0, middle: 0.7124),
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
          Pinned.fromPins(
            Pin(size: 264.0, middle: 0.5061),
            Pin(size: 85.0, middle: 0.2652),
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
        ],
      ),
    );
  }
}

const String _svg_7xax6y =
    '<svg viewBox="0.0 -7.4 428.0 96.4" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path transform="translate(0.0, -7.42)" d="M 0 0 L 428 0 L 428 96.41648864746094 L 0 96.41648864746094 L 0 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_wtvuwd =
    '<svg viewBox="197.5 273.5 33.4 1.0" ><path transform="translate(197.5, 273.5)" d="M 0 0 L 33.41015625 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
