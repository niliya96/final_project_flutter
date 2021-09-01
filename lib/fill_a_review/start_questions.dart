import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/fill_a_review/start_questions2.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/Utils/buttom_bar_fill.dart';

class StartQuestions extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  List< Map<String, Map<dynamic, bool>>> answers = [];
  StartQuestions(this.questions);

  @override
  StartQuestionsState createState() => StartQuestionsState();
}

class StartQuestionsState extends State<StartQuestions> {
  int _currentBarOption = 0;
  StreamSubscription<FirebaseUser> loginStateSubscription;

  void buildAnswers() {
    this.widget.questions.forEach((element) {
      String number_of_qustion = element[NUMBER].toString();
      Map<dynamic, bool> status = {"init": false};
      Map<String, Map<dynamic, bool>> answer_init = {
        number_of_qustion: status
      };
      this.widget.answers.add(answer_init);
    });
  }

  @override
  void initState() {
    // init the answers map
    buildAnswers();
    sortList();
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

  void sortList() {
    this.widget.questions.sort(
        (a, b) => a['numbers'].toString().compareTo(b['numbers'].toString()));
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
          height: 210.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(START_QUESTION1PIC),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 10,
        child: Center(
          child: Text(
            FILL_QUESTIONS_1,
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
        flex: 5,
        child: Divider(
          color: DARK_BLUE,
          thickness: 1,
          indent: 120,
          endIndent: 120,
        ),
      ),
      Expanded(
        flex: 20,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              FILL_QUESTIONS_3,
              style: TextStyle(
                fontFamily: EUROPA_FONT,
                fontSize: 20,
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
      ),
      Expanded(
        flex: 20,
        child: Center(
          child: FlatButton(
              height: 60,
              minWidth: 70,
              color: DARK_BLUE,
              child: Text(
                FILL_QUESTIONS_2,
                style: TextStyle(
                  fontFamily: EUROPA_FONT,
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
              ),
              highlightColor: DARK_BLUE2,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StartQuestions2(
                        this.widget.questions, this.widget.answers)));
              }),
        ),
      ),
    ]);
  }
}
