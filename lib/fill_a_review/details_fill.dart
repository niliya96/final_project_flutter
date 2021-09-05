import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_bar_fill.dart';
import 'package:flutter_firebase/fill_a_review/rating_format.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/fill_a_review/text_format.dart';
import 'package:flutter_firebase/fill_a_review/validation.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/Utils/headers.dart';

import 'InsertionFormat.dart';

class DetailsFill extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  InsertionFormat insertion_format;
  DetailsFill(this.questions, this.insertion_format);
  int current_question = 0;

  @override
  DetailsFillState createState() => DetailsFillState();
}

class DetailsFillState extends State<DetailsFill> {
  StreamSubscription<FirebaseUser> loginStateSubscription;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  int _currentBarOption = 0;
  String authTyped = '';
  String passportTyped = '';
  String nameTyped = '';
  String nationTyped = '';
  String passport = '';
  String auth_passport = '';
  String nation = '';
  String name = '';

  String validateDetails() {
    if (formkey.currentState.validate()) {
      return VALIDATE;
    } else {
      return NOT_VALIDATE;
    }
  }

  @override
  void initState() {
    List<String> _options = [
      INDIA,
      PHILIPPINES,
      UZBEKISTAN,
      UKRAINE,
      MOLDOVA,
      NEPAL,
      GEORGIA,
      SRALANKA
    ];
    _dropdownMenuItems = buildDropdownMenuItems(_options);
    _selectedOption = _dropdownMenuItems[0].value;
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

  // choose country dropdown list
  List<DropdownMenuItem<String>> _dropdownMenuItems;
  String _selectedOption;
  List<DropdownMenuItem<String>> buildDropdownMenuItems(List options) {
    List<DropdownMenuItem<String>> items = List();
    for (String option in options) {
      items.add(
        DropdownMenuItem(
          value: option,
          child: Text(option),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(String selectedOption) {
    setState(() {
      _selectedOption = selectedOption;
    });
  }

  int _currentOptionButtomBar = 0;
  int _rating;

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBlocGoogle>(context);
    var scaffold = Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: createAppBar(authBloc),
        bottomNavigationBar: createButtomBarFill(
            context,
            _currentBarOption,
            this,
            this.widget.insertion_format.uid,
            this.widget.insertion_format,
            this.widget.questions, false),
        body: createBody());
    return scaffold;
  }

  Widget createHeadLine() {
    return Column(children: <Widget>[
      Expanded(
        flex: 3,
        child: SizedBox(),
      ),
      Expanded(
        flex: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              FILL_DEATAILS,
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
          ],
        ),
      ),
      Expanded(
        flex: 5,
        child: Divider(
          color: DARK_BLUE,
          thickness: 1,
          indent: 40,
          endIndent: 40,
        ),
      ),
    ]);
  }

  Widget createBody() {
    return Column(children: <Widget>[
      Expanded(
        flex: 1,
        child: SizedBox(),
      ),
      Expanded(flex: 5, child: createHeadLine()),
      Expanded(
        flex: 10,
        child: Container(
          width: 430.0,
          height: 130.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(DEATAILS_FILL_PIC),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: SizedBox(),
      ),
      Expanded(
        flex: 35,
        child: Container(
            child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Form(
                key: formkey,
                child: Column(
                  children: [
                    buildPassport(passport, context, this, _selectedOption),
                    buildAuth(auth_passport, passport, context, this,
                        this.widget.insertion_format),
                    buildName(
                        name, context, this, this.widget.insertion_format),
                  ],
                ),
              ),
              Row(
                children: [
                  buildNation(_selectedOption, _dropdownMenuItems,
                      onChangeDropdownItem, this.widget.insertion_format),
                  SizedBox(width: 130),
                  Text(
                    ORIGIN_COUNTRY,
                    style: TextStyle(
                      fontFamily: EUROPA_FONT,
                      fontSize: 18,
                      color: DARK_BLUE,
                      fontWeight: FontWeight.w700,
                      height: 1.1666666666666667,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        )),
      ),
      Expanded(
        flex: 10,
        child: Center(
          child: FlatButton(
              height: 30,
              minWidth: 70,
              color: DARK_BLUE,
              child: Text(
                NEXT,
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
                String status = validateDetails();
                if (status.compareTo(VALIDATE) == 0) {
                  if (this.widget.questions[0][KIND].toString() == RATING) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => RatingFormat((rating) {
                                setState(() {
                                  _rating = rating;
                                });
                              },
                                  this.widget.questions,
                                  this.widget.current_question,
                                  this.widget.insertion_format)),
                    );
                  } else if (this.widget.questions[0][KIND].toString() ==
                      CHOOSE) {
                    List<dynamic> options = this.widget.questions[0][OPTIONS];
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SelectionFormat(
                            this.widget.current_question,
                            this.widget.questions,
                            options,
                            this.widget.insertion_format)));
                  } else if (this.widget.questions[0][KIND].toString() ==
                      TEXT) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TextFormat(
                            this.widget.current_question,
                            this.widget.questions,
                            this.widget.insertion_format)));
                  }
                }
              }),
        ),
      ),
    ]);
  }
}
