import 'dart:async';
import 'dart:collection';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_bar_fill.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:provider/provider.dart';
import 'InsertionFormat.dart';
import 'create_route_page.dart';

class TextFormat extends StatefulWidget {
  int current_question;
  final List<Map<String, dynamic>> questions;
  InsertionFormat insertion_format;

  TextFormat(this.current_question, this.questions, this.insertion_format)
      : super();

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
            builder: (context) => MainComponentLogin(this.widget.questions),
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
    //this.widget.answers.add(answer);
  }

  Widget createBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 10,
          child: SizedBox(),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              this
                  .widget
                  .questions[this.widget.current_question][TEXT]
                  .toString(),
              style: TextStyle(
                fontFamily: EUROPA_FONT,
                fontSize: 22,
                color: DARK_BLUE,
                fontWeight: FontWeight.w700,
                height: 1.1666666666666667,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Divider(
            color: DARK_BLUE,
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
          flex: 10,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: DARK_BLUE,
                focusColor: DARK_BLUE,
                hoverColor: DARK_BLUE,
                filled: true,
                labelText: FREE_TEXT,
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                return null;
              },
              maxLength: 500,
              //maxLines: 5,
              onChanged: (value) => setState(() {
                text_fill = value;
              }),
            ),
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
            child: createRoute(context, this, _rating, text_fill,
                this.widget.insertion_format, this.widget.questions),
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(height: 25),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: LinearProgressIndicator(
                value: (this.widget.current_question + 1) /
                    (this.widget.questions.length),
                minHeight: 10,
                valueColor: AlwaysStoppedAnimation<Color>(DARK_BLUE3)),
          ),
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
      backgroundColor: WHITE,
      appBar: createAppBar(authBloc),
      bottomNavigationBar: createButtomBarFill(
          context,
          _currentBarOption,
          this,
          this.widget.insertion_format.uid,
          this.widget.insertion_format,
          this.widget.questions, true),
      body: createBody(),
    );
  }
}
