import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/login/buttons_login.dart';
import 'package:flutter_firebase/login/head_line_login.dart';

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
          backgroundColor: LIGHT_GREEN,
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
