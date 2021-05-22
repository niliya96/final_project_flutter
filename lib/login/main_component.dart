import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/login/buttons.dart';
import 'package:flutter_firebase/login/head_line.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainComponentLogin extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  MainComponentLogin(this.list);

  @override
  MainComponentLoginState createState() => MainComponentLoginState();
}

class MainComponentLoginState extends State<MainComponentLogin> {

  @override
  Widget build(BuildContext context) {
      const String button_line ='<svg viewBox="0.0 590.0 188.0 1.0" ><path transform="translate(0.0, 590.0)" d="M 0 0 L 188 0" fill="none" stroke="#d97d54" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';  
      // main Scaffold 
      return Scaffold(
      backgroundColor: const Color(0xff353549),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body:  Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 250),
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(67, 67, 89, 120)
                ),
            ),
          ),  
          HeadLineLogin(),
          Padding (
            padding: const EdgeInsets.fromLTRB(60,430,0,200),
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
            Pin(size: 188.0, start: 0.0),
            Pin(size: 1.0, middle: 0.66),
            child: SvgPicture.string(
              button_line,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,500,0,70),
            child: ButtonsLogin(this.widget.list),
          )
        ]
      )
    );
  }
}

