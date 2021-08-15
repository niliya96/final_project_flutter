import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_bar_fill.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:provider/provider.dart';
import 'details_fill.dart';

class StartQuestions2 extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  List<Map<String, String>> answers;
  StartQuestions2(this.questions, this.answers);

  @override
  StartQuestionsState2 createState() => StartQuestionsState2();
}

class StartQuestionsState2 extends State<StartQuestions2> {
  int _currentBarOption = 0;
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

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBlocGoogle>(context);
    var scaffold = Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: createAppBar(authBloc),
        bottomNavigationBar:
            createButtomBarFill(context, _currentBarOption, this),
        body: createBody());
    return scaffold;
  }

  Widget createBody() {
    return Column(children: <Widget>[
      Expanded(
        flex: 10,
        child: SizedBox(),
      ),
      Expanded(
        flex: 30,
        child: Container(
          width: 430.0,
          height: 240.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(START_QUESION2PIC),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 10,
        child: Center(
          child: Text(
            FILL_QUESTIONS_4,
            style: TextStyle(
              fontFamily: EUROPA_FONT,
              fontSize: 30,
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
        flex: 10,
        child: Divider(
          color: DARK_BLUE,
          thickness: 1,
          indent: 50,
          endIndent: 50,
        ),
      ),
      Expanded(
        flex: 10,
        child: Padding(
          padding: const EdgeInsets.only(left:10, right:10),
          child: Text(
            FILL_QUESTIONS_5,
            style: TextStyle(
              fontFamily:  EUROPA_FONT,
              fontSize: 17,
              color:DARK_BLUE,
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.right,
          ),
        ),
      ),
      Expanded(
        flex: 10,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
           FILL_QUESTIONS_6,
            style: TextStyle(
              fontFamily: EUROPA_FONT,
              fontSize: 17,
              color: DARK_BLUE,
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.right,
          ),
        ),
      ),
      Expanded(
        flex: 10,
        child: Center(
          child: Text(
            FILL_QUESTIONS_7,
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 15,
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
        flex: 10,
        child: FlatButton(
            height: 60,
            minWidth: 70,
            color: DARK_BLUE,
            child: Text(
             FILL_QUESTIONS_8,
              style: TextStyle(
                fontFamily: EUROPA_FONT,
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                height: 1.1666666666666667,
              ),
            ),
            highlightColor: DARK_BLUE,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      DetailsFill(this.widget.questions, this.widget.answers)));
            }),
      ),
      Expanded(
        flex: 10,
        child: SizedBox(),
      ),
    ]);
  }
}
