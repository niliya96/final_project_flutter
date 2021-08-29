import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_navigation_bar.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:provider/provider.dart';

import 'main_component_update.dart';

class WatchReview extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  ReviewFormatData review;
  WatchReview(this.questions, this.review);

  @override
  WatchReviewState createState() => WatchReviewState();
}

class WatchReviewState extends State<WatchReview> {
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
        bottomNavigationBar: createButtomBar(context, _currentBarOption, this),
        body: createBody());
    return scaffold;
  }

  Widget createBody() {
    return Padding(
      padding: const EdgeInsets.only(left:20, right: 20),
      child: Column(children: <Widget>[
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: DARK_BLUE, size: 35),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) =>
                      MainComponentUpdate(this.widget.questions)));
            },
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Expanded(
          flex: 25,
          child: createDetails(),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(),
        ),
        Expanded(
          flex: 20,
          child: createQuestions(),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
      ]),
    );
  }

  Widget createDetails() {
    return Column(children: <Widget>[
      Expanded(
        flex: 1,
        child: SizedBox(),
      ),
      Expanded(
        flex: 15,
        child: Text(
          REVIEW_FOR + ": " + this.widget.review.name_of_worker,
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
        flex: 10,
        child: Text(
          PASSPORT_NUMBER + ": " + this.widget.review.passport,
          style: TextStyle(
            fontFamily: EUROPA_FONT,
            fontSize: 25,
            color: DARK_BLUE,
            fontWeight: FontWeight.w700,
            height: 1.1666666666666667,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.right,
        ),
      ),
      Expanded(
        flex: 10,
        child: Text(
          NATION + ": " + this.widget.review.nation,
          style: TextStyle(
            fontFamily: EUROPA_FONT,
            fontSize: 25,
            color: DARK_BLUE,
            fontWeight: FontWeight.w700,
            height: 1.1666666666666667,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.right,
        ),
      ),
      Expanded(
        flex: 2,
        child: SizedBox(),
      ),
      Expanded(
        flex: 2,
        child: Divider(
          color: DARK_BLUE,
          thickness: 1,
          indent: 120,
          endIndent: 120,
        ),
      ),
      Expanded(
        flex: 10,
        child: Text(
          LAST_UPDATE + ": " + this.widget.review.last_update,
          style: TextStyle(
            fontFamily: EUROPA_FONT,
            fontSize: 18,
            color: DARK_BLUE,
            fontWeight: FontWeight.w700,
            height: 1.1666666666666667,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.right,
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
        flex: 1,
        child: SizedBox(),
      ),
    ]);
  }

  Widget createQuestions() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            // choose questions
            for (var question in this.widget.review.choose_answers)
              buildChooseQustion(question),
            // rating questions
            for (var question in this.widget.review.rating_answers)
              buildStarsRow(question),
            // text questions
            for (var question in this.widget.review.text_answers)
              buildTextQustion(question),
          ],
        ),
      ],
    );
  }

  Widget buildStarsRow(List<String> q) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              flex: 8,
              child: SizedBox(),
            ),
            Text(
              q.elementAt(0),
              style: TextStyle(
                fontFamily: EUROPA_FONT,
                fontSize: 18,
                color: DARK_BLUE,
                fontWeight: FontWeight.w700,
                height: 1.1666666666666667,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.right,
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ]),
          Row(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: SizedBox(),
              ),
              decideStar(
                  1, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
              decideStar(
                  2, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
              decideStar(
                  3, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
              decideStar(
                  4, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
              decideStar(
                  5, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget decideStar(int i, int rate, int fill) {
    // question filled
    if (fill == 1) {
      if (i <= rate) {
        return Icon(Icons.star, size: 50, color: Colors.amber[700]);
      } else {
        return Icon(Icons.star, size: 50, color: Colors.amber[100]);
      }
      // question not filled
    } else {
      if (i <= rate) {
        return Icon(Icons.star, size: 50, color: Colors.grey[300]);
      }
    }
  }

  Widget buildChooseQustion(List<String> q) {
    return Text(
      q[0] + ": " + q[1],
      style: TextStyle(
        fontFamily: EUROPA_FONT,
        fontSize: 18,
        color: DARK_BLUE,
        fontWeight: FontWeight.w700,
        height: 1.1666666666666667,
      ),
      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
      textAlign: TextAlign.right,
    );
  }

  Widget buildTextQustion(List<String> q) {
    return Text(
      q[0] + ": " + q[1],
      style: TextStyle(
        fontFamily: EUROPA_FONT,
        fontSize: 18,
        color: DARK_BLUE,
        fontWeight: FontWeight.w700,
        height: 1.1666666666666667,
      ),
      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
      textAlign: TextAlign.right,
    );
  }
}
