import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDinbox extends StatelessWidget {
  XDinbox({
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
            Pin(size: 108.2, end: 0.0),
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
            Pin(size: 82.0, middle: 0.2358),
            child:
                // Adobe XD layer: 'Search' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 15.3, end: 17.0),
                  Pin(size: 45.0, middle: 0.4649),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                    _svg_93in57,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 32.0, end: 64.0),
                  Pin(size: 20.0, middle: 0.4516),
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
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.5, end: 0.5),
            Pin(size: 400.0, middle: 0.5361),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 100.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
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
                                _svg_tck4pg,
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
                              Pin(size: 166.0, middle: 0.6845),
                              Pin(size: 39.0, middle: 0.457),
                              child:
                                  // Adobe XD layer: 'messaging' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 114.0, end: 0.0),
                                    Pin(size: 20.0, start: 0.0),
                                    child: Text(
                                      'Scott Middough',
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
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 19.0, end: 0.0),
                                    child: Text(
                                      'Yeah sounds good man. 👍 ',
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
                                _svg_x3ikny,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 355.5, end: 15.5),
                        Pin(start: 22.0, end: 22.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbce0fd),
                          ),
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 100.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
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
                                _svg_tck4pg,
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
                              Pin(size: 166.0, middle: 0.6845),
                              Pin(size: 39.0, middle: 0.457),
                              child:
                                  // Adobe XD layer: 'messaging' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 114.0, end: 0.0),
                                    Pin(size: 20.0, start: 0.0),
                                    child: Text(
                                      'Scott Middough',
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
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 19.0, end: 0.0),
                                    child: Text(
                                      'Yeah sounds good man. 👍 ',
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
                                _svg_x3ikny,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 355.5, end: 15.5),
                        Pin(start: 22.0, end: 22.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbce0fd),
                          ),
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 100.0, middle: 0.6667),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
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
                                _svg_tck4pg,
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
                              Pin(size: 166.0, middle: 0.6845),
                              Pin(size: 39.0, middle: 0.457),
                              child:
                                  // Adobe XD layer: 'messaging' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 114.0, end: 0.0),
                                    Pin(size: 20.0, start: 0.0),
                                    child: Text(
                                      'Scott Middough',
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
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 19.0, end: 0.0),
                                    child: Text(
                                      'Yeah sounds good man. 👍 ',
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
                                _svg_x3ikny,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 355.5, end: 16.0),
                        Pin(start: 22.0, end: 22.5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbce0fd),
                          ),
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.5),
                  Pin(size: 100.0, middle: 0.3333),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
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
                                _svg_uwyuhv,
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
                              Pin(size: 166.0, middle: 0.6845),
                              Pin(size: 39.0, middle: 0.457),
                              child:
                                  // Adobe XD layer: 'messaging' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 114.0, end: 0.0),
                                    Pin(size: 20.0, start: 0.0),
                                    child: Text(
                                      'Scott Middough',
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
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 19.0, end: 0.0),
                                    child: Text(
                                      'Yeah sounds good man. 👍 ',
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
                                _svg_gljkkg,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 355.5, end: 15.5),
                        Pin(start: 22.0, end: 22.5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbce0fd),
                          ),
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.5),
                  Pin(size: 100.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
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
                                _svg_uwyuhv,
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
                              Pin(size: 166.0, middle: 0.6845),
                              Pin(size: 39.0, middle: 0.457),
                              child:
                                  // Adobe XD layer: 'messaging' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 114.0, end: 0.0),
                                    Pin(size: 20.0, start: 0.0),
                                    child: Text(
                                      'Scott Middough',
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
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 19.0, end: 0.0),
                                    child: Text(
                                      'Yeah sounds good man. 👍 ',
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
                                _svg_gljkkg,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 355.5, end: 16.0),
                        Pin(start: 22.0, end: 23.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbce0fd),
                          ),
                        ),
                      ),
                      Container(),
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
                // Adobe XD layer: 'header' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                    _svg_ptztp0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.5, end: 0.5),
                  Pin(size: 1.0, end: -0.5),
                  child:
                      // Adobe XD layer: 'divider' (shape)
                      SvgPicture.string(
                    _svg_ov2b6v,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(),
                Container(),
                Pinned.fromPins(
                  Pin(size: 93.0, middle: 0.4986),
                  Pin(size: 40.0, middle: 0.587),
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
                  Pin(size: 93.0, middle: 0.4986),
                  Pin(size: 40.0, middle: 0.587),
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
            Pin(start: 201.0, end: 98.0),
            Pin(size: 27.0, start: 34.0),
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
          Pinned.fromPins(
            Pin(start: 344.0, end: 28.0),
            Pin(start: 20.0, end: 850.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffbce0fd),
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}

const String _svg_eurphx =
    '<svg viewBox="0.0 0.0 428.0 70.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-5" stdDeviation="30"/></filter></defs><path  d="M 0 0 L 428 0 L 428 70 L 0 70 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xe0i3 =
    '<svg viewBox="1.0 2.9 26.8 23.7" ><path transform="translate(-13.97, -11.14)" d="M 26.57732963562012 15.66841888427734 L 26.57732963562012 24.26658248901367 L 16.88142585754395 24.26658248901367 C 15.78392601013184 24.26658248901367 14.99999809265137 25.10078430175781 14.99999809265137 25.93499374389648 C 14.99999809265137 26.76921081542969 15.94071769714355 27.60342025756836 16.88142585754395 27.60342025756836 L 26.57732963562012 27.60342025756836 L 26.57732963562012 36.06254577636719 C 26.57732963562012 37.03579330444336 27.5180492401123 37.73096466064453 28.45876121520996 37.73096466064453 C 29.39948463439941 37.73096466064453 30.34019660949707 36.89675903320313 30.34019660949707 36.06254577636719 L 30.34019660949707 27.60342025756836 L 39.87931823730469 27.60342025756836 C 40.97681427001953 27.60342025756836 41.7607421875 26.76921081542969 41.7607421875 25.93499374389648 C 41.7607421875 25.10078430175781 41.13359832763672 24.26658248901367 40.03609466552734 24.26658248901367 L 30.49697303771973 24.26658248901367 L 30.49697303771973 15.66841888427734 C 30.49697303771973 14.6951789855957 29.55626106262207 14 28.61554908752441 14 C 27.67482948303223 14 26.57732963562012 14.83420944213867 26.57732963562012 15.66841888427734 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3p1yzk =
    '<svg viewBox="11.0 11.0 60.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="10" stdDeviation="20"/></filter></defs><path transform="translate(11.0, 11.0)" d="M 30 0 C 46.56854248046875 0 60 13.43145942687988 60 30 C 60 46.56854248046875 46.56854248046875 60 30 60 C 13.43145942687988 60 0 46.56854248046875 0 30 C 0 13.43145942687988 13.43145942687988 0 30 0 Z" fill="#d97d54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_93in57 =
    '<svg viewBox="15.3 17.2 395.7 45.0" ><path transform="translate(20.0, 17.2)" d="M -0.06554815173149109 0 L 386.4229736328125 0 C 388.962646484375 0 391.0215148925781 1.439084768295288 391.0215148925781 3.214285612106323 L 391.0215148925781 41.78571319580078 C 391.0215148925781 43.5609130859375 388.962646484375 45 386.4229736328125 45 L -0.06554815173149109 45 C -2.605237483978271 45 -4.664062976837158 43.5609130859375 -4.664062976837158 41.78571319580078 L -4.664062976837158 3.214285612106323 C -4.664062976837158 1.439084768295288 -2.605237483978271 0 -0.06554815173149109 0 Z" fill="#f0f3f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tck4pg =
    '<svg viewBox="0.0 0.0 426.5 100.0" ><path  d="M 0 0 L 426.5000305175781 0 L 426.5000305175781 100 L 0 100 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x3ikny =
    '<svg viewBox="22.5 99.5 404.5 1.0" ><path transform="translate(22.5, 99.5)" d="M 0 0 L 404.5 0" fill="none" stroke="#f0f3f4" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uwyuhv =
    '<svg viewBox="0.0 0.0 426.0 100.0" ><path  d="M 0 0 L 426.0000305175781 0 L 426.0000305175781 100 L 0 100 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gljkkg =
    '<svg viewBox="22.5 99.5 404.0 1.0" ><path transform="translate(22.5, 99.5)" d="M 0 0 L 404 0" fill="none" stroke="#f0f3f4" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ptztp0 =
    '<svg viewBox="0.0 0.0 428.0 101.0" ><path  d="M 0 0 L 427.9999694824219 0 L 427.9999694824219 101 L 0 101 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ov2b6v =
    '<svg viewBox="0.5 100.5 427.0 1.0" ><path transform="translate(0.5, 100.5)" d="M 0 0 L 427 0" fill="none" stroke="#e0e1e2" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ihdz80 =
    '<svg viewBox="1.0 0.0 428.0 96.4" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path transform="translate(1.0, 0.0)" d="M 0 0 L 428 0 L 428 96.41648864746094 L 0 96.41648864746094 L 0 0 Z" fill="#d97d54" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
