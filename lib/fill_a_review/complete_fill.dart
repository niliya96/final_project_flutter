import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_bar_fill.dart';
import 'package:flutter_firebase/home/home_screen.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:flutter_firebase/services/json_convert.dart';
import 'package:flutter_firebase/services/write_to_mongodb.dart';
import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'InsertionFormat.dart';
import 'QuestionFormat.dart';
import 'package:intl/intl.dart';

class CompleteFillReview extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  InsertionFormat insertion_format;
  CompleteFillReview(this.questions, this.insertion_format);
  int index = 0;

  @override
  CompleteFillReviewState createState() => CompleteFillReviewState();
}

class CompleteFillReviewState extends State<CompleteFillReview> {
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
      /**
       * write the data to the db
       */
    });
    super.initState();
  }

  @override
  void dispose() {
    loginStateSubscription.cancel();
    super.dispose();
  }

  Widget headLine() {
    return Stack(children: <Widget>[
      // image
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Container(
          width: 430.0,
          height: 240.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(COMPLETE_FILL_PIC),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Center(
          child: Text(
            FINISH,
            style: TextStyle(
              fontFamily: EUROPA_FONT,
              fontSize: 30,
              color: Color.fromRGBO(0, 48, 80, 50),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 340),
        child: Divider(
          color: DARK_BLUE,
          thickness: 1,
          indent: 50,
          endIndent: 50,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 360, left: 20, right: 20),
        child: Text(
          THANKS,
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
      Padding(
        padding: const EdgeInsets.only(top: 420, left: 20, right: 20),
        child: Text(
          IN_THE_SYSTEM,
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
      Padding(
        padding: const EdgeInsets.only(top: 330, left: 20, right: 20),
        child: Center(
          child: Text(
            UPDATE_EXPLANATION,
            style: TextStyle(
              fontFamily: EUROPA_FONT,
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
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 460, 0, 0),
        child: Center(
          child: FlatButton(
              height: 60,
              minWidth: 70,
              color: DARK_BLUE,
              child: Text(
                RETURN_HOME,
                style: TextStyle(
                  fontFamily: EUROPA_FONT,
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
              ),
              highlightColor: DARK_BLUE4,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeScreen(this.widget.questions)));
              }),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    // db
    ReviewFormatData review = convert(
        this.widget.insertion_format.answers,
        this.widget.questions,
        this.widget.insertion_format.name_of_worker,
        this.widget.insertion_format.passport,
        this.widget.insertion_format.nation,
        this.widget.insertion_format.uid);
    writeReviewToDB(review);
    final authBloc = Provider.of<AuthBlocGoogle>(context);
    var scaffold = Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: createAppBar(authBloc),
        bottomNavigationBar: createButtomBarFill(context, _currentBarOption,
            this, this.widget.insertion_format.passport, this.widget.insertion_format, this.widget.questions, true),
        body: headLine());
    return scaffold;
  }
}
