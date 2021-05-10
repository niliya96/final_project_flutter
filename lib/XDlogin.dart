import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDlogin extends StatelessWidget {
  XDlogin({
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
            Pin(start: 0.0, end: 280.0),
            child:
                // Adobe XD layer: 'bg' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xff434359),
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 313.0, middle: 0.3124),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/image1.jfif'),
                  fit: BoxFit.fill,
                ),
              ),
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
            Pin(start: 74.0, end: 73.0),
            Pin(size: 40.0, start: 113.0),
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
            Pin(start: 42.5, end: 42.5),
            Pin(size: 1.0, end: 148.9),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffbce0fd),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 59.0, middle: 0.2224),
            Pin(size: 16.0, middle: 0.8046),
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
          Pinned.fromPins(
            Pin(size: 16.0, start: 42.5),
            Pin(size: 16.0, middle: 0.8046),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 1.0, end: 1.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_ngfsk2,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 59.0, middle: 0.2224),
            Pin(size: 16.0, middle: 0.8046),
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
          Pinned.fromPins(
            Pin(start: 42.5, end: 42.5),
            Pin(size: 1.0, middle: 0.7677),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffbce0fd),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.223),
            Pin(size: 16.0, middle: 0.7425),
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
            Pin(size: 16.0, start: 42.5),
            Pin(size: 16.0, middle: 0.7425),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 8.0, middle: 0.5),
                  Pin(size: 8.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff2699fb),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 6.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_i3kyih,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 178.0, middle: 0.5),
            Pin(size: 50.0, end: 66.0),
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
            Pin(size: 188.0, end: 0.0),
            Pin(size: 1.0, middle: 0.6789),
            child: SvgPicture.string(
              _svg_49mbhd,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 48.0, middle: 0.7995),
            Pin(size: 20.0, middle: 0.6435),
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
          Pinned.fromPins(
            Pin(size: 45.0, middle: 0.2016),
            Pin(size: 20.0, middle: 0.6435),
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
        ],
      ),
    );
  }
}

const String _svg_pacicg =
    '<svg viewBox="0.0 0.0 412.0 95.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path  d="M 0 0 L 412 0 L 412 95.75759124755859 L 0 95.75759124755859 L 0 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ngfsk2 =
    '<svg viewBox="43.5 687.1 14.0 16.0" ><path transform="translate(43.5, 687.11)" d="M 7 8 C 8.100000381469727 8 9 8.899999618530273 9 10 C 9 11.10000038146973 8.100000381469727 12 7 12 C 5.899999618530273 12 5 11.10000038146973 5 10 C 5 8.899999618530273 5.900000095367432 8 7 8 Z M 7 2 C 5.900000095367432 2 5 2.900000095367432 5 4 L 9 4 C 9 2.900000095367432 8.100000381469727 2 7 2 Z M 12 16 L 2 16 C 0.8999999761581421 16 0 15.10000038146973 0 14 L 0 6 C 0 4.900000095367432 0.8999999761581421 4 2 4 L 3 4 C 3 1.799999952316284 4.800000190734863 0 7 0 C 9.199999809265137 0 11 1.799999952316284 11 4 L 12 4 C 13.10000038146973 4 14 4.900000095367432 14 6 L 14 14 C 14 15.10000038146973 13.10000038146973 16 12 16 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i3kyih =
    '<svg viewBox="42.5 644.1 16.0 6.0" ><path transform="translate(42.5, 634.11)" d="M 8 10 C 3.599999904632568 10 0 11.80000019073486 0 14 L 0 16 L 16 16 L 16 14 C 16 11.80000019073486 12.39999961853027 10 8 10 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_49mbhd =
    '<svg viewBox="224.0 590.0 188.0 1.0" ><path transform="translate(224.0, 590.0)" d="M 0 0 L 188 0" fill="none" stroke="#d97d54" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
