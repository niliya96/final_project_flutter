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
    // main Scaffold
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(67, 232, 137, 50),
        ),
        body: Column(children: <Widget>[
          Expanded(
            flex: 5,
            child: HeadLineLogin(),
          ),
          Expanded(
            flex: 2,
            child: ButtonsLogin(this.widget.list),
          ),
        ]));
  }
}
