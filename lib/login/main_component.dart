import 'package:flutter/material.dart';
import 'package:flutter_firebase/login/head_line.dart';

class MainComponentLogin extends StatefulWidget {
  MainComponentLogin({
    Key key,
  }) : super(key: key);

  @override
  MainComponentLoginState createState() => MainComponentLoginState();
}

class MainComponentLoginState extends State<MainComponentLogin> {

  @override
  Widget build(BuildContext context) {
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
        ]
      )
    );
  }
}