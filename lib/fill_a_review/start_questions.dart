import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/Utils/waiting_bar.dart';
import 'package:flutter_firebase/fill_a_review/InsertionFormat.dart';
import 'package:flutter_firebase/fill_a_review/QuestionFormat.dart';
import 'package:flutter_firebase/fill_a_review/start_questions2.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/Utils/buttom_bar_fill.dart';

class StartQuestions extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  String uid;
  InsertionFormat insertion_format;
  StartQuestions(this.questions, this.uid);

  @override
  StartQuestionsState createState() => StartQuestionsState();
}

class StartQuestionsState extends State<StartQuestions> {
  int _currentBarOption = 0;
  StreamSubscription<FirebaseUser> loginStateSubscription;

  void buildInsertionFormat() {
    List<QuestionFormat> answers = [];
    this.widget.questions.forEach((element) {
      int number_of_qustion = element[NUMBER];
      String kind = element[KIND];
      String text = element[TEXT];
      QuestionFormat current_question = new QuestionFormat(
          kind: kind,
          text: text,
          answer: "init",
          number: number_of_qustion,
          ifAnswered: false);
      answers.add(current_question);
    });
    InsertionFormat insertion_format = new InsertionFormat(
        name_of_worker: "",
        passport: "",
        nation: "",
        answers: answers,
        uid: this.widget.uid);
    this.widget.insertion_format = insertion_format;
  }

  @override
  void initState() {
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

  List<Map<String, dynamic>> sortList() {
    this.widget.questions.sort((a, b) => a[NUMBER].compareTo(b[NUMBER]));
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBlocGoogle>(context);
    return FutureBuilder(
      future: getUid(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return WaitingBar();
        } else {
          this.widget.uid = snapshot.data;
          // init the answers map
          buildInsertionFormat();
          return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
              appBar: createAppBar(authBloc),
              bottomNavigationBar: createButtomBarFill(
                  context,
                  _currentBarOption,
                  this,
                  snapshot.data,
                  this.widget.insertion_format,
                  this.widget.questions,
                  false),
              body: createBody(snapshot.data));
        }
      },
    );
  }

  Future<String> getUid() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    return user.uid;
  }

  Widget createBody(String uid) {
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
                        this.widget.questions, this.widget.insertion_format)));
              }),
        ),
      ),
    ]);
  }
}