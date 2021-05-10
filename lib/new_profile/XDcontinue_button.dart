import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDcontinue_button extends StatefulWidget {
  XDcontinue_button({
    Key key,
  }) : super(key: key);

  @override
  _XDcontinue_buttonState createState() => _XDcontinue_buttonState();
}

class _XDcontinue_buttonState extends State<XDcontinue_button> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child:  RaisedButton(
        color: const Color(0xffffffff),
        child: 
        Text(
          'המשך',
          style: TextStyle(
              fontFamily: 'Rift Soft',
              fontSize: 14,
              color: const Color(0xff1b1c20),
              letterSpacing: 1.4000000000000001,
              fontWeight: FontWeight.w300,
              height: 2.5,
            ),
          ),
        onPressed: () {
          print("good");
        }, 
    )
    );
  }
}
