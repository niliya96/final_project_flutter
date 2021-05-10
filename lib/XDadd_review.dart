import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDadd_review extends StatelessWidget {
  XDadd_review({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff353549),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 99.0, end: 84.0),
            Pin(size: 40.0, start: 114.0),
            child: Text(
              'הוספת חוות דעת',
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
            Pin(size: 66.0, end: 41.0),
            Pin(size: 22.0, start: 189.0),
            child: Text(
              'משך זמן',
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
            Pin(size: 138.0, end: 41.0),
            Pin(size: 22.0, middle: 0.2124),
            child: Text(
              'חוות דעת על סמך',
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
            Pin(size: 138.3, start: 148.8),
            Pin(size: 1.0, middle: 0.1542),
            child:
                // Adobe XD layer: 'divider' (shape)
                SvgPicture.string(
              _svg_a3dr7c,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 89.0, start: 41.0),
            Pin(size: 22.0, start: 189.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffbce0fd)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 23.0, start: 20.0),
                  Pin(size: 16.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Select an option' (text)
                      Text(
                    'בחר',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff666b70),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 58.0, end: 21.6),
                  Pin(start: 8.0, end: 7.9),
                  child: SvgPicture.string(
                    _svg_mhtunu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 89.0, start: 41.0),
            Pin(size: 22.0, middle: 0.2124),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffbce0fd)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 23.0, start: 20.0),
                  Pin(size: 16.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Select an option' (text)
                      Text(
                    'בחר',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff666b70),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 58.0, end: 21.6),
                  Pin(start: 8.0, end: 7.9),
                  child: SvgPicture.string(
                    _svg_7ro5dy,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 42.0, end: 42.0),
            Pin(size: 74.3, middle: 0.2724),
            child: SvgPicture.string(
              _svg_4eg0xh,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 58.0, end: 58.0),
            Pin(size: 37.0, middle: 0.2716),
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
                    text: 'הוסף מלל חופשי',
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 213.0, end: 45.0),
            Pin(size: 27.0, start: 368.0),
            child: Text(
              'פרמטרים נוספים',
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
            Pin(start: 160.0, end: 194.0),
            Pin(start: 435.0, end: 607.0),
            child: Text(
              'דירוג כללי',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 83.0, end: 191.0),
            Pin(start: 464.0, end: 578.0),
            child: Text(
              'הגיינה עצמית של העובד',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 175.0, end: 191.0),
            Pin(start: 493.0, end: 549.0),
            child: Text(
              'סובלנות',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 192.0, end: 192.0),
            Pin(start: 625.0, end: 417.0),
            child: Text(
              'אדיב',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 193.0, end: 192.0),
            Pin(start: 522.0, end: 520.0),
            child: Text(
              'חרוץ',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 116.0, end: 191.0),
            Pin(start: 551.0, end: 491.0),
            child: Text(
              'יודע לשמור כשרות',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 43.0, end: 185.0),
            Pin(start: 580.0, end: 462.0),
            child: Text(
              'מבצע עם המטופל פעולות מעבר ',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 174.0, end: 190.0),
            Pin(start: 596.0, end: 446.0),
            child: Text(
              'לתפקידו',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 74.0, end: 192.0),
            Pin(start: 654.0, end: 388.0),
            child: Text(
              'שומר על סדר וניקיון בבית',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 8.0, end: 191.0),
            Pin(start: 683.0, end: 359.0),
            child: Text(
              'מעניק דווחים נאמנים על מצב המטופל',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 119.0, end: 192.0),
            Pin(start: 712.0, end: 330.0),
            child: Text(
              'מצבי רוח משתנים',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 66.0, end: 191.0),
            Pin(start: 741.0, end: 301.0),
            child: Text(
              'מבשל ומתאים זאת למטופל',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 48.0, end: 190.0),
            Pin(start: 770.0, end: 272.0),
            child: Text(
              'יכול לבצע פעולות שדורשות כח',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 5.0, end: 188.0),
            Pin(start: 799.0, end: 243.0),
            child: Text(
              'מקפיד על נטילת תרופות המטופל בזמן',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 113.0, end: 187.0),
            Pin(start: 828.0, end: 214.0),
            child: Text(
              'סבלני כלפי המטופל',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 143.0, end: 187.0),
            Pin(start: 886.0, end: 156.0),
            child: Text(
              'מיומנות טכנית',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 85.0, end: 185.0),
            Pin(start: 857.0, end: 185.0),
            child: Text(
              'בעל דרישות אוכל חריגות',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 35.0, end: 185.0),
            Pin(start: 915.0, end: 127.0),
            child: Text(
              'מעלה דרישות שכר פתאומיות ולא ',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.4172),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.4444),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 188.0, end: 187.0),
            Pin(start: 931.0, end: 111.0),
            child: Text(
              'הוגנות',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.4727),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.5),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.5312),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.5653),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.6014),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.6355),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.6628),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.691),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.7183),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.7437),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.771),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, middle: 0.7992),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, end: 178.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, end: 146.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.7774),
            Pin(size: 32.0, end: 111.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, start: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, start: 3.2),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_ipu8xg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.25),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.2647),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.2658),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_wfi7sk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.5),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.5),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_jyqb8,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, middle: 0.75),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, middle: 0.7353),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, middle: 0.7341),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_qnjaa4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Placement Area' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 3.0),
                  Pin(start: 7.0, end: 7.0),
                  child:
                      // Adobe XD layer: 'Frame' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.5, end: 3.3),
                  Pin(size: 16.7, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_cxvbf0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.418),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.4452),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.4749),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.502),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.6328),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.6599),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.5317),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.5645),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.6),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.6871),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.7143),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.7415),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.7686),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, middle: 0.7958),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, end: 184.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, end: 152.8),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(size: 20.4, end: 21.6),
            Pin(size: 18.5, end: 118.8),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.0, start: 0.0),
                  Pin(start: 1.5, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xfff7f5f5),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.9, end: 0.0),
                  Pin(size: 14.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'icons Q2' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_9fpypz,
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
            Pin(start: 360.0, end: 12.0),
            Pin(start: 412.0, end: 630.0),
            child: Text(
              'רלוונטי',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: -16.0),
            Pin(size: 70.0, middle: 0.8097),
            child: SvgPicture.string(
              _svg_sh9gc3,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 18.0, middle: 0.7792),
            Pin(size: 18.0, middle: 0.7963),
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
            Pin(size: 82.0, middle: 0.503),
            Pin(size: 82.0, middle: 0.7736),
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
            Pin(size: 15.0, middle: 0.2406),
            Pin(size: 18.1, middle: 0.7933),
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
            Pin(start: -1.0, end: 1.0),
            Pin(size: 95.8, start: 0.0),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_bjomng,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 56.0, end: 15.0),
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
            Pin(start: 194.0, end: 89.0),
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
            Pin(size: 50.0, start: 14.0),
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
            Pin(start: 160.0, end: 194.0),
            Pin(start: 435.0, end: 607.0),
            child: Text(
              'דירוג כללי',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 83.0, end: 191.0),
            Pin(start: 464.0, end: 578.0),
            child: Text(
              'הגיינה עצמית של העובד',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 116.0, end: 191.0),
            Pin(start: 551.0, end: 491.0),
            child: Text(
              'יודע לשמור כשרות',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 43.0, end: 185.0),
            Pin(start: 580.0, end: 462.0),
            child: Text(
              'מבצע עם המטופל פעולות מעבר ',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 74.0, end: 192.0),
            Pin(start: 654.0, end: 388.0),
            child: Text(
              'שומר על סדר וניקיון בבית',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 8.0, end: 191.0),
            Pin(start: 683.0, end: 359.0),
            child: Text(
              'מעניק דווחים נאמנים על מצב המטופל',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 119.0, end: 192.0),
            Pin(start: 712.0, end: 330.0),
            child: Text(
              'מצבי רוח משתנים',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 66.0, end: 191.0),
            Pin(start: 741.0, end: 301.0),
            child: Text(
              'מבשל ומתאים זאת למטופל',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffd1d7dd),
                fontWeight: FontWeight.w700,
                height: 1.7142857142857142,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_mhtunu =
    '<svg viewBox="99.0 197.0 9.4 6.1" ><path transform="translate(97.0, 194.97)" d="M 6.699999809265137 8.100000381469727 L 2 3.400000095367432 L 3.400000095367432 2 L 6.699999809265137 5.300000190734863 L 10 2 L 11.39999961853027 3.400000095367432 L 6.699999809265137 8.100000381469727 Z" fill="#666b70" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a3dr7c =
    '<svg viewBox="148.8 163.0 138.3 1.0" ><path transform="translate(148.84, 163.0)" d="M 0 0 L 138.31005859375 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7ro5dy =
    '<svg viewBox="99.0 228.0 9.4 6.1" ><path transform="translate(97.0, 225.97)" d="M 6.699999809265137 8.100000381469727 L 2 3.400000095367432 L 3.400000095367432 2 L 6.699999809265137 5.300000190734863 L 10 2 L 11.39999961853027 3.400000095367432 L 6.699999809265137 8.100000381469727 Z" fill="#666b70" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4eg0xh =
    '<svg viewBox="42.0 268.0 328.0 74.3" ><path transform="translate(42.0, 268.0)" d="M 0 0 L 92.91242218017578 0 L 328 0 L 328 65.87800598144531 L 328 74.29998779296875 L 0 74.29998779296875 L 0 0 Z" fill="#f7f5f5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ipu8xg =
    '<svg viewBox="256.2 470.1 17.5 16.7" ><path transform="translate(256.0, 470.0)" d="M 9.23900032043457 0.300000011920929 L 11.39999961853027 6.014999866485596 L 17.50699996948242 6.303999900817871 C 17.61249351501465 6.309494972229004 17.70367813110352 6.379467487335205 17.73628425598145 6.479947090148926 C 17.76889038085938 6.580426692962646 17.73616600036621 6.69060754776001 17.65399742126465 6.756999492645264 L 12.88399887084961 10.57999992370605 L 14.49599838256836 16.47999954223633 C 14.52434349060059 16.58240127563477 14.48622035980225 16.69164848327637 14.40031814575195 16.75418281555176 C 14.31441593170166 16.81671905517578 14.19874000549316 16.81943321228027 14.10999870300293 16.7609977722168 L 9 13.39999961853027 L 3.890000104904175 16.75799942016602 C 3.801258087158203 16.81643295288086 3.685582637786865 16.81371879577637 3.599680185317993 16.75118255615234 C 3.513777732849121 16.68864822387695 3.47565484046936 16.57940101623535 3.504000186920166 16.47699928283691 L 5.116000175476074 10.57699966430664 L 0.3459999859333038 6.756999969482422 C 0.2606713175773621 6.691380500793457 0.2257372140884399 6.579247951507568 0.2586985230445862 6.476776123046875 C 0.2916598320007324 6.37430477142334 0.3854166865348816 6.303566932678223 0.4929999113082886 6.300000190734863 L 6.599999904632568 6.014999866485596 L 8.76099967956543 0.300000011920929 C 8.798978805541992 0.2010475844144821 8.894008636474609 0.1357320845127106 9 0.1357320249080658 C 9.105990409851074 0.1357320249080658 9.201021194458008 0.2010474503040314 9.23900032043457 0.300000011920929 Z" fill="#ffba00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wfi7sk =
    '<svg viewBox="280.2 470.1 17.5 16.7" ><path transform="translate(280.0, 470.0)" d="M 9.23900032043457 0.300000011920929 L 11.39999961853027 6.014999866485596 L 17.50699996948242 6.303999900817871 C 17.61249351501465 6.309494972229004 17.70367813110352 6.379467487335205 17.73628425598145 6.479947090148926 C 17.76889038085938 6.580426692962646 17.73616600036621 6.69060754776001 17.65399742126465 6.756999492645264 L 12.88399887084961 10.57999992370605 L 14.49599838256836 16.47999954223633 C 14.52434349060059 16.58240127563477 14.48622035980225 16.69164848327637 14.40031814575195 16.75418281555176 C 14.31441593170166 16.81671905517578 14.19874000549316 16.81943321228027 14.10999870300293 16.7609977722168 L 9 13.39999961853027 L 3.890000104904175 16.75799942016602 C 3.801258087158203 16.81643295288086 3.685582637786865 16.81371879577637 3.599680185317993 16.75118255615234 C 3.513777732849121 16.68864822387695 3.47565484046936 16.57940101623535 3.504000186920166 16.47699928283691 L 5.116000175476074 10.57699966430664 L 0.3459999859333038 6.756999969482422 C 0.2606713175773621 6.691380500793457 0.2257372140884399 6.579247951507568 0.2586985230445862 6.476776123046875 C 0.2916598320007324 6.37430477142334 0.3854166865348816 6.303566932678223 0.4929999113082886 6.300000190734863 L 6.599999904632568 6.014999866485596 L 8.76099967956543 0.300000011920929 C 8.798978805541992 0.2010475844144821 8.894008636474609 0.1357320845127106 9 0.1357320249080658 C 9.105990409851074 0.1357320249080658 9.201021194458008 0.2010474503040314 9.23900032043457 0.300000011920929 Z" fill="#ffba00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jyqb8 =
    '<svg viewBox="304.2 470.1 17.5 16.7" ><path transform="translate(304.0, 470.0)" d="M 9.23900032043457 0.300000011920929 L 11.39999961853027 6.014999866485596 L 17.50699996948242 6.303999900817871 C 17.61249351501465 6.309494972229004 17.70367813110352 6.379467487335205 17.73628425598145 6.479947090148926 C 17.76889038085938 6.580426692962646 17.73616600036621 6.69060754776001 17.65399742126465 6.756999492645264 L 12.88399887084961 10.57999992370605 L 14.49599838256836 16.47999954223633 C 14.52434349060059 16.58240127563477 14.48622035980225 16.69164848327637 14.40031814575195 16.75418281555176 C 14.31441593170166 16.81671905517578 14.19874000549316 16.81943321228027 14.10999870300293 16.7609977722168 L 9 13.39999961853027 L 3.890000104904175 16.75799942016602 C 3.801258087158203 16.81643295288086 3.685582637786865 16.81371879577637 3.599680185317993 16.75118255615234 C 3.513777732849121 16.68864822387695 3.47565484046936 16.57940101623535 3.504000186920166 16.47699928283691 L 5.116000175476074 10.57699966430664 L 0.3459999859333038 6.756999969482422 C 0.2606713175773621 6.691380500793457 0.2257372140884399 6.579247951507568 0.2586985230445862 6.476776123046875 C 0.2916598320007324 6.37430477142334 0.3854166865348816 6.303566932678223 0.4929999113082886 6.300000190734863 L 6.599999904632568 6.014999866485596 L 8.76099967956543 0.300000011920929 C 8.798978805541992 0.2010475844144821 8.894008636474609 0.1357320845127106 9 0.1357320249080658 C 9.105990409851074 0.1357320249080658 9.201021194458008 0.2010474503040314 9.23900032043457 0.300000011920929 Z" fill="#ffba00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qnjaa4 =
    '<svg viewBox="328.2 470.1 17.5 16.7" ><path transform="translate(328.0, 470.0)" d="M 9.23900032043457 0.300000011920929 L 11.39999961853027 6.014999866485596 L 17.50699996948242 6.303999900817871 C 17.61249351501465 6.309494972229004 17.70367813110352 6.379467487335205 17.73628425598145 6.479947090148926 C 17.76889038085938 6.580426692962646 17.73616600036621 6.69060754776001 17.65399742126465 6.756999492645264 L 12.88399887084961 10.57999992370605 L 14.49599838256836 16.47999954223633 C 14.52434349060059 16.58240127563477 14.48622035980225 16.69164848327637 14.40031814575195 16.75418281555176 C 14.31441593170166 16.81671905517578 14.19874000549316 16.81943321228027 14.10999870300293 16.7609977722168 L 9 13.39999961853027 L 3.890000104904175 16.75799942016602 C 3.801258087158203 16.81643295288086 3.685582637786865 16.81371879577637 3.599680185317993 16.75118255615234 C 3.513777732849121 16.68864822387695 3.47565484046936 16.57940101623535 3.504000186920166 16.47699928283691 L 5.116000175476074 10.57699966430664 L 0.3459999859333038 6.756999969482422 C 0.2606713175773621 6.691380500793457 0.2257372140884399 6.579247951507568 0.2586985230445862 6.476776123046875 C 0.2916598320007324 6.37430477142334 0.3854166865348816 6.303566932678223 0.4929999113082886 6.300000190734863 L 6.599999904632568 6.014999866485596 L 8.76099967956543 0.300000011920929 C 8.798978805541992 0.2010475844144821 8.894008636474609 0.1357320845127106 9 0.1357320249080658 C 9.105990409851074 0.1357320249080658 9.201021194458008 0.2010474503040314 9.23900032043457 0.300000011920929 Z" fill="#ffba00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cxvbf0 =
    '<svg viewBox="352.2 470.1 17.5 16.7" ><path transform="translate(352.0, 470.0)" d="M 9.23900032043457 0.300000011920929 L 11.39999961853027 6.014999866485596 L 17.50699996948242 6.303999900817871 C 17.61249351501465 6.309494972229004 17.70367813110352 6.379467487335205 17.73628425598145 6.479947090148926 C 17.76889038085938 6.580426692962646 17.73616600036621 6.69060754776001 17.65399742126465 6.756999492645264 L 12.88399887084961 10.57999992370605 L 14.49599838256836 16.47999954223633 C 14.52434349060059 16.58240127563477 14.48622035980225 16.69164848327637 14.40031814575195 16.75418281555176 C 14.31441593170166 16.81671905517578 14.19874000549316 16.81943321228027 14.10999870300293 16.7609977722168 L 9 13.39999961853027 L 3.890000104904175 16.75799942016602 C 3.801258087158203 16.81643295288086 3.685582637786865 16.81371879577637 3.599680185317993 16.75118255615234 C 3.513777732849121 16.68864822387695 3.47565484046936 16.57940101623535 3.504000186920166 16.47699928283691 L 5.116000175476074 10.57699966430664 L 0.3459999859333038 6.756999969482422 C 0.2606713175773621 6.691380500793457 0.2257372140884399 6.579247951507568 0.2586985230445862 6.476776123046875 C 0.2916598320007324 6.37430477142334 0.3854166865348816 6.303566932678223 0.4929999113082886 6.300000190734863 L 6.599999904632568 6.014999866485596 L 8.76099967956543 0.300000011920929 C 8.798978805541992 0.2010475844144821 8.894008636474609 0.1357320845127106 9 0.1357320249080658 C 9.105990409851074 0.1357320249080658 9.201021194458008 0.2010474503040314 9.23900032043457 0.300000011920929 Z" fill="#ffba00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9fpypz =
    '<svg viewBox="0.0 0.0 16.9 14.4" ><path transform="translate(-5.5, -9.7)" d="M 9.449941635131836 23.83260917663574 L 5.776106357574463 19.87347030639648 C 5.44759464263916 19.50703811645508 5.408807277679443 18.93560218811035 5.684260845184326 18.52034759521484 C 5.834903717041016 18.27556991577148 6.080962181091309 18.12075996398926 6.35055685043335 18.10114669799805 C 6.620151996612549 18.0815315246582 6.882863521575928 18.19932556152344 7.061948776245117 18.42011642456055 L 10.09286308288574 21.72774887084961 L 20.93067741394043 9.900453567504883 C 21.29633522033691 9.601171493530273 21.80800437927246 9.64085578918457 22.13120269775391 9.993561744689941 C 22.45439910888672 10.34626770019531 22.49076271057129 10.9046516418457 22.21652030944824 11.30369186401367 L 10.73578357696533 23.83260917663574 C 10.57052803039551 24.02916526794434 10.33729934692383 24.14105987548828 10.09286308288574 24.14105987548828 C 9.848424911499023 24.14105987548828 9.61519718170166 24.02916526794434 9.449941635131836 23.83260917663574 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nojukn =
    '<svg viewBox="306.6 352.6 5.2 5.2" ><path transform="translate(306.62, 352.59)" d="M 0 0 L 5.199999809265137 5.199999809265137" fill="none" stroke="#c3cbce" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_sh9gc3 =
    '<svg viewBox="0.0 800.0 428.0 70.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-5" stdDeviation="30"/></filter></defs><path transform="translate(0.0, 800.0)" d="M 0 0 L 428 0 L 428 70 L 0 70 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xe0i3 =
    '<svg viewBox="1.0 2.9 26.8 23.7" ><path transform="translate(-13.97, -11.14)" d="M 26.57732963562012 15.66841888427734 L 26.57732963562012 24.26658248901367 L 16.88142585754395 24.26658248901367 C 15.78392601013184 24.26658248901367 14.99999809265137 25.10078430175781 14.99999809265137 25.93499374389648 C 14.99999809265137 26.76921081542969 15.94071769714355 27.60342025756836 16.88142585754395 27.60342025756836 L 26.57732963562012 27.60342025756836 L 26.57732963562012 36.06254577636719 C 26.57732963562012 37.03579330444336 27.5180492401123 37.73096466064453 28.45876121520996 37.73096466064453 C 29.39948463439941 37.73096466064453 30.34019660949707 36.89675903320313 30.34019660949707 36.06254577636719 L 30.34019660949707 27.60342025756836 L 39.87931823730469 27.60342025756836 C 40.97681427001953 27.60342025756836 41.7607421875 26.76921081542969 41.7607421875 25.93499374389648 C 41.7607421875 25.10078430175781 41.13359832763672 24.26658248901367 40.03609466552734 24.26658248901367 L 30.49697303771973 24.26658248901367 L 30.49697303771973 15.66841888427734 C 30.49697303771973 14.6951789855957 29.55626106262207 14 28.61554908752441 14 C 27.67482948303223 14 26.57732963562012 14.83420944213867 26.57732963562012 15.66841888427734 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v0qb8b =
    '<svg viewBox="11.0 11.0 60.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="10" stdDeviation="20"/></filter></defs><path transform="translate(11.0, 11.0)" d="M 30 0 C 46.56854248046875 0 60 13.43145942687988 60 30 C 60 39.94112396240234 55.1646728515625 48.75289916992188 47.47682952880859 54.38641357421875 C 42.75289916992188 57.85096740722656 36.62741851806641 60 30 60 C 13.43145942687988 60 0 46.56854248046875 0 30 C 0 13.43145942687988 13.43145942687988 0 30 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_2y8dmk =
    '<svg viewBox="79.8 697.6 15.0 8.6" ><path transform="translate(78.84, 687.06)" d="M 1 19.10000038146973 L 1 16.5 C 1 13.19999980926514 3.700000047683716 10.5 7 10.5 L 10 10.5 C 13.30000019073486 10.5 16 13.19999980926514 16 16.5 L 16 19.10000038146973" fill="none" stroke="#c3cbce" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_c9viwi =
    '<svg viewBox="364.0 40.0 16.0 16.0" ><path transform="translate(364.0, -314.0)" d="M 0 369.9999084472656 L 0 368.0001220703125 C 0 365.7996215820313 3.600000143051147 363.9996032714844 8.000100135803223 363.9996032714844 C 12.40019989013672 363.9996032714844 16.00020027160645 365.7996215820313 16.00020027160645 368.0001220703125 L 16.00020027160645 369.9999084472656 L 0 369.9999084472656 Z M 3.999600172042847 358.0002136230469 C 3.999600172042847 355.7907104492188 5.790600299835205 353.9996948242188 8.000100135803223 353.9996948242188 C 10.20870018005371 353.9996948242188 11.99970054626465 355.7907104492188 11.99970054626465 358.0002136230469 C 11.99970054626465 360.2088012695313 10.20870018005371 361.9998168945313 8.000100135803223 361.9998168945313 C 5.790600299835205 361.9998168945313 3.999600172042847 360.2088012695313 3.999600172042847 358.0002136230469 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bjomng =
    '<svg viewBox="-1.0 0.0 412.0 95.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path transform="translate(-1.0, 0.0)" d="M 0 0 L 412 0 L 412 95.75759124755859 L 0 95.75759124755859 L 0 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
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
