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

class UpdatingSection extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  ReviewFormatData review;
  String uid;
  UpdatingSection(this.questions, this.review, this.uid);

  @override
  UpdatingSectionState createState() => UpdatingSectionState();
}

class UpdatingSectionState extends State<UpdatingSection> {
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
    return Column(children: <Widget>[
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
        flex: 10,
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
    ]);
  }

  Widget createDetails() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(children: <Widget>[
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 8,
          child: Text(
            UPDATING_SECTION + ": " + this.widget.review.name_of_worker,
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
          flex: 5,
          child: Text(
            CONSTRAIN,
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
          flex: 1,
          child: SizedBox(),
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
      ]),
    );
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
            FlatButton(
                height: 60,
                minWidth: 110,
                color: DARK_BLUE,
                child: Text(
                  SAVE,
                  style: TextStyle(
                    fontFamily: EUROPA_FONT,
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    height: 1.1666666666666667,
                  ),
                ),
                onPressed: () {})
          ],
        ),
      ],
    );
  }

  void onRatingSelected(int rating, List<String> q) {
    q[1] = rating.toString();
  }

  Widget buildStarsRow(List<String> q) {
    final stars = List<Widget>.generate(5, (index) {
      return GestureDetector(
        child: _buildRatingStar(index, q),
        onTap: () {
          setState(() {
            q[1] = (index + 1).toString();
            if (int.parse(q[1]) != 0) {}
          });

          onRatingSelected(int.parse(q[1]), q);
        },
      );
    });
    return Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
              flex: 8,
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
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: SizedBox(),
            ),
            Container(
              child: Row(
                children: stars,
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRatingStar(int index, List<String> q) {
    if (q[1] == "irelevant" || q[1] == "init") {
      return Icon(Icons.star, size: 50, color: Colors.grey[300]);
    }
    if (index < int.parse(q[1])) {
      return Icon(Icons.star, size: 50, color: Colors.amber[700]);
    } else {
      return Icon(Icons.star, size: 50, color: Colors.amber[100]);
    }
  }

  Widget buildChooseQustion(List<String> q) {
    return Column(
      children: <Widget>[
        Text(
          q[0],
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
      ],
    );
  }

  Widget buildTextQustion(List<String> q) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Text(
            q[0],
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
          TextFormField(
              decoration: InputDecoration(
                fillColor: DARK_BLUE,
                focusColor: DARK_BLUE,
                hoverColor: DARK_BLUE,
                filled: true,
                labelText: q[1],
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                return null;
              },
              maxLength: 500,
              //maxLines: 5,
              onChanged: (value) => setState(() {
                    q[1] = value;
                  })),
        ],
      ),
    );
  }
}
