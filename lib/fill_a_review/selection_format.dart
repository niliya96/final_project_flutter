import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_bar_fill.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/fill_a_review/InsertionFormat.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:provider/provider.dart';
import 'create_route_page.dart';

class Option {
  int id;
  String name;

  Option(this.id, this.name);

  static List<Option> createData(List<dynamic> lst) {
    int i = 0;
    List<Option> ret = [];
    lst.forEach((element) {
      ret.add(new Option(i, lst[i]));
      i++;
    });
    return ret;
  }

  static String get(Option o) {
    return o.name;
  }
}

class SelectionFormat extends StatefulWidget {
  int current_question;
  final List<Map<String, dynamic>> questions;
  final List<dynamic> options;
  InsertionFormat insertion_format;

  SelectionFormat(this.current_question, this.questions, this.options,
      this.insertion_format)
      : super();

  @override
  SelectionFormatState createState() => SelectionFormatState();
}

class SelectionFormatState extends State<SelectionFormat> {
  int _rating;
  int _currentIndexInBar = 0;
  bool _checked = false;
  int _currentBarOption = 0;
  StreamSubscription<FirebaseUser> loginStateSubscription;

  @override
  void initState() {
    List<Option> _options = Option.createData(this.widget.options);
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
          this.widget.questions,
          true),
      body: createBody(),
    );
  }

  List<DropdownMenuItem<Option>> _dropdownMenuItems;
  Option _selectedOption;

  List<DropdownMenuItem<Option>> buildDropdownMenuItems(List options) {
    List<DropdownMenuItem<Option>> items = List();
    for (Option option in options) {
      items.add(
        DropdownMenuItem(
          value: option,
          child: Text(option.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Option selectedOption) {
    setState(() {
      _selectedOption = selectedOption;
    });
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
          flex: 10,
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
          flex: 3,
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
          child: DropdownButton(
            dropdownColor: LIGHT_GREEN,
            iconEnabledColor: LIGHT_GREEN,
            iconDisabledColor: LIGHT_GREEN,
            value: _selectedOption,
            style: new TextStyle(
              color: DARK_BLUE,
              fontSize: 18.0,
            ),
            items: _dropdownMenuItems,
            onChanged: onChangeDropdownItem,
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(
            width: 0.0,
            height: 100.0,
          ),
        ),
        Expanded(
          flex: 15,
          child: Center(
              child: createRoute(
                  context,
                  this,
                  _rating,
                  _selectedOption.name.toString(),
                  this.widget.insertion_format,
                  this.widget.questions)),
        ),
        if (this
                .widget
                .questions[this.widget.current_question][TEXT]
                .toString() ==
            REVIEW_OR_WORK1)
          Expanded(
            flex: 3,
            child: Text(
              REVIEW_OR_WORK2,
              style: TextStyle(
                fontFamily: EUROPA_FONT,
                fontSize: 12,
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
}
