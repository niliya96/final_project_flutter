import 'dart:async';
import 'dart:collection';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_bar_fill.dart';
import 'package:flutter_firebase/fill_a_review/rating_format.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/home/home_screen.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:provider/provider.dart';

import 'complete_fill.dart';
import 'create_route_page.dart';
import 'details_fill.dart';

class TextFormat extends StatefulWidget {
  int current_question;
  final List<Map<String, dynamic>> list;
  List<Map<String, String>> answers;

  TextFormat(this.current_question, this.list, this.answers) : super();

  @override
  TextFormatState createState() => TextFormatState();
}

class TextFormatState extends State<TextFormat> {
  int _rating;
  int _currentBarOption = 0;
  String text_fill;
  StreamSubscription<FirebaseUser> loginStateSubscription;

  @override
  void initState() {
    var authBloc = Provider.of<AuthBlocGoogle>(context, listen: false);
    loginStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser == null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MainComponentLogin(this.widget.list),
          ),
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    loginStateSubscription.cancel();
    super.dispose();
  }

  void addAnswer() {
    Map<String, String> answer = new HashMap<String, String>();
    answer.putIfAbsent(
        this.widget.current_question.toString(), () => text_fill);
    this.widget.answers.add(answer);
  }

  void deleteAnswer() {
    if (!this.widget.answers.isEmpty) {
      this.widget.answers.removeLast();
    }
  }

  Widget createBody() {
    child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: SizedBox(),
        ),
        Expanded(
          flex: 3,
          child: Text(
            this.widget.list[this.widget.current_question]['text'].toString(),
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 30,
              color: const Color.fromRGBO(0, 48, 80, 50),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 3,
          child: Divider(
            color: const Color.fromRGBO(0, 48, 80, 50),
            thickness: 1,
            indent: 120,
            endIndent: 120,
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(
            width: 0.0,
            height: 10.0,
          ),
        ),
        Expanded(
          flex: 3,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Color.fromRGBO(0, 48, 80, 50),
              focusColor: Color.fromRGBO(0, 48, 80, 50),
              hoverColor: Color.fromRGBO(0, 48, 80, 50),
              filled: true,
              labelText: 'כתוב מלל חופשי',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              return null;
            },
            maxLength: 500,
            maxLines: 5,
            onChanged: (value) => setState(() {
              text_fill = value;
            }),
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(
            width: 0.0,
            height: 50.0,
          ),
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: createRoute(context, this, 0, _currentBarOption),
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(height: 25),
        ),
        Expanded(
          flex: 3,
          child: LinearProgressIndicator(
              value: (this.widget.current_question + 1) /
                  (this.widget.list.length),
              minHeight: 10,
              //backgroundColor: Color.fromRGBO(67, 232, 137, 50),
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromRGBO(67, 232, 137, 10))),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBlocGoogle>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      appBar: createAppBar(authBloc),
      bottomNavigationBar:
          createButtomBarFill(context, _currentBarOption, this),
      body: createBody(),
    );
  }
}
