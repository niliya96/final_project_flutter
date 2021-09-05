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
  String uid;
  WatchReview(this.questions, this.review, this.uid);

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
        bottomNavigationBar:
            createButtomBar(context, _currentBarOption, this, this.widget.uid),
        body: createBody());
    return scaffold;
  }

  Widget createBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(children: <Widget>[
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Expanded(
          flex: 2,
          child: FlatButton(
            height: 60,
            minWidth: 110,
            color: DARK_BLUE,
            child: Text(
              BACK_TO_UPDATE,
              style: TextStyle(
                fontFamily: EUROPA_FONT,
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                height: 1.1666666666666667,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => MainComponentUpdate(
                      this.widget.questions, this.widget.uid)));
            },
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Expanded(
          flex: 12,
          child: createDetails(),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(),
        ),
        Expanded(
          flex: 20,
          child: Center(child: createQuestions()),
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
            fontSize: 25,
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
        flex: 10,
        child: Text(
          PASSPORT_NUMBER + ": " + this.widget.review.passport,
          style: TextStyle(
            fontFamily: EUROPA_FONT,
            fontSize: 20,
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
            fontSize: 20,
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
              if (question[1] != "init") buildChooseQustion(question),
            // rating questions
            SizedBox(
              height: 20,
            ),
            for (var question in this.widget.review.rating_answers)
              if (question[1] != "init") buildStarsRow(question),
            // text questions
            SizedBox(
              height: 20,
            ),
            for (var question in this.widget.review.text_answers)
              if (question[1] != null && question[1] != "init")
                buildTextQustion(question),
          ],
        ),
      ],
    );
  }

  Widget buildStarsRow(List<String> q) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Text(
            q.elementAt(0),
            style: TextStyle(
              fontFamily: EUROPA_FONT,
              fontSize: 13,
              color: DARK_BLUE,
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.right,
          ),
        ]),
        Row(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: SizedBox(),
            ),
            if (q[1] != "irelevant")
              decideStar(
                  1, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
            if (q[1] == "irelevant" || q[1] == "init")
              decideStar(1, 6, int.parse(q.elementAt(2))),
            if (q[1] != "irelevant")
              decideStar(
                  2, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
            if (q[1] == "irelevant" || q[1] == "init")
              decideStar(2, 6, int.parse(q.elementAt(2))),
            if (q[1] != "irelevant")
              decideStar(
                  3, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
            if (q[1] == "irelevant" || q[1] == "init")
              decideStar(3, 6, int.parse(q.elementAt(2))),
            if (q[1] != "irelevant")
              decideStar(
                  4, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
            if (q[1] == "irelevant" || q[1] == "init")
              decideStar(4, 6, int.parse(q.elementAt(2))),
            if (q[1] != "irelevant")
              decideStar(
                  5, int.parse(q.elementAt(1)), int.parse(q.elementAt(2))),
            if (q[1] == "irelevant" || q[1] == "init")
              decideStar(5, 6, int.parse(q.elementAt(2))),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ],
    );
  }

  Widget decideStar(int i, int rate, int fill) {
    // question filled
    if (fill == 1) {
      if (rate == 6) {
        return Icon(Icons.star, size: 50, color: Colors.grey[300]);
      }
      if (i <= rate) {
        return Icon(Icons.star, size: 50, color: Colors.amber[700]);
      } else {
        return Icon(Icons.star, size: 50, color: Colors.amber[100]);
      }
      // question not filled
    } else {
      //if (i <= rate) {
      return Icon(Icons.star, size: 50, color: Colors.grey[300]);
      //}
    }
  }

  Widget buildChooseQustion(List<String> q) {
    return Text(
      q[0] + ": " + q[1],
      style: TextStyle(
        fontFamily: EUROPA_FONT,
        fontSize: 13,
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
        fontSize: 13,
        color: DARK_BLUE,
        fontWeight: FontWeight.w700,
        height: 1.1666666666666667,
      ),
      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
      textAlign: TextAlign.right,
    );
  }
}
