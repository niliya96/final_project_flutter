import 'dart:async';
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

class RatingFormat extends StatefulWidget {
  final int maximumRating = 5;
  final Function(int) onRatingSelected;
  final List<Map<String, dynamic>> questions;
  InsertionFormat insertion_format;
  int current_question;

  RatingFormat(this.onRatingSelected, this.questions, this.current_question,
      this.insertion_format);

  @override
  RatingFormatState createState() => RatingFormatState();
}

class RatingFormatState extends State<RatingFormat> {
  int _currentRating = 1;
  int _rating;
  int _currentBarOption = 0;
  bool _checked = false;
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

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(Icons.star, size: 50, color: Colors.amber[700]);
    } else {
      return Icon(Icons.star, size: 50, color: Colors.amber[100]);
    }
  }

  Widget createBody() {
    final stars = List<Widget>.generate(this.widget.maximumRating, (index) {
      return Center(
        child: GestureDetector(
          child: _buildRatingStar(index),
          onTap: () {
            setState(() {
              _currentRating = index + 1;
              if (_currentRating != 0) {
                _checked = false;
              }
            });

            this.widget.onRatingSelected(_currentRating);
          },
        ),
      );
    });
    return Column(
      children: <Widget>[
        Expanded(
          flex: 40,
          child: SizedBox(),
        ),
        Expanded(
          flex: 20,
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
        Expanded(
          flex: 10,
          child: Divider(
            color: DARK_BLUE,
            thickness: 1,
            indent: 60,
            endIndent: 60,
          ),
        ),
        Expanded(
          flex: 10,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 10,
                child: SizedBox(),
              ),
              Container(
                child: Row(
                  children: stars,
                ),
              ),
              Expanded(
                flex: 10,
                child: SizedBox(),
              ),
            ],
          ),
        ),
        if (this.widget.questions[this.widget.current_question][MANDATORY] ==
            "no")
          Expanded(
            flex: 10,
            child: FlatButton(
              child: Text(CLEAN,
                  style: TextStyle(
                    fontFamily: EUROPA_FONT,
                    fontSize: 18,
                    color: DARK_BLUE,
                    height: 1.3888888888888888,
                  )),
              onPressed: () {
                setState(() {
                  _currentRating = 1;
                });
                this.widget.onRatingSelected(_currentRating);
              },
            ),
          ),
        Expanded(
          flex: 10,
          child: SizedBox(),
        ),
        if (this.widget.questions[this.widget.current_question][MANDATORY] ==
            "no")
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: CheckboxListTile(
                  value: _checked,
                  dense: true,
                  controlAffinity: ListTileControlAffinity.platform,
                  contentPadding: EdgeInsets.only(right: 40),
                  activeColor: DARK_BLUE,
                  checkColor: Colors.white,
                  tileColor: LIGHT_GREEN,
                  title: Text(
                    IRELEVANT,
                    style: TextStyle(
                      fontFamily: EUROPA_FONT,
                      fontSize: 15,
                      color: DARK_BLUE,
                      fontWeight: FontWeight.w700,
                      height: 1.3888888888888888,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  onChanged: (bool value) {
                    setState(() {
                      _checked = value;
                    });
                    if (_checked) {
                      _currentRating = 0;
                    }
                  }),
            ),
          ),
        Expanded(
          flex: 30,
          child: SizedBox(),
        ),
        if (_checked)
          Expanded(
            flex: 10,
            child: createRoute(context, this, _rating, "irelevant",
                this.widget.insertion_format, this.widget.questions),
          ),
        if (!_checked)
          Expanded(
            flex: 10,
            child: createRoute(
                context,
                this,
                _rating,
                _currentRating.toString(),
                this.widget.insertion_format,
                this.widget.questions),
          ),
        Expanded(
          flex: 10,
          child: SizedBox(),
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: LinearProgressIndicator(
                value: (this.widget.current_question + 1) /
                    (this.widget.questions.length),
                valueColor: AlwaysStoppedAnimation<Color>(LIGHT_GREEN)),
          ),
        ),
        Expanded(
          flex: 10,
          child: SizedBox(),
        ),
      ],
    );
  }
}