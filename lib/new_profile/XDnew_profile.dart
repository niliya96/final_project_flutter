import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'XDheadline.dart';
import 'XDcontinue_button.dart';
import 'XDfull_name_box.dart';
import 'XDemail_box.dart';
import 'XDpassword_box.dart';
import 'XDpassword_auth_box.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDnew_profile extends StatefulWidget {
  XDnew_profile({
    Key key,
  }) : super(key: key);

  @override
  _XDnew_profileState createState() => _XDnew_profileState();
}

class _XDnew_profileState extends State<XDnew_profile> {
  String full_name;
  String email;
  String password;
  String password_auth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff353549),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 38.0, end: 34.0),
            Pin(start: 279.0, end: 173.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xfff7f5f5),
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
            Pin(size: 264.0, middle: 0.5135),
            Pin(size: 85.0, middle: 0.1758),
            child: XDheadline(),
          ),
          Pinned.fromPins(
            Pin(size: 178.0, middle: 0.5),
            Pin(size: 50.0, end: 85.0),
            child: XDcontinue_button(),
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
            Pin(start: 60.0, end: 60.0),
            Pin(size: 48.0, middle: 0.4538),
            child: XDfull_name_box(name: full_name),
          ),
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 48.0, middle: 0.5353),
            child: XDemail_box(),
          ),
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 48.0, middle: 0.618),
            child: XDpassword_box(),
          ),
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 48.0, middle: 0.7044),
            child: XDpassword_auth_box(),
          ),
        ],
      ),
    );
  }
}

const String _svg_pacicg =
    '<svg viewBox="0.0 0.0 412.0 95.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="10"/></filter></defs><path  d="M 0 0 L 412 0 L 412 95.75759124755859 L 0 95.75759124755859 L 0 0 Z" fill="#53a8df" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
