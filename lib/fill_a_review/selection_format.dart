import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_bar_fill.dart';
import 'package:flutter_firebase/Utils/headers.dart';
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
  final List<Map<String, dynamic>> list;
  final List<dynamic> options;
  List<Map<String, String>> answers;

  SelectionFormat(this.current_question, this.list, this.options, this.answers)
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
            builder: (context) => MainComponentLogin(this.widget.list),
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
      bottomNavigationBar:
          createButtomBarFill(context, _currentBarOption, this),
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
    return new Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                this
                    .widget
                    .list[this.widget.current_question][TEXT]
                    .toString(),
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
            Divider(
              color: DARK_BLUE,
              thickness: 1,
              indent: 120,
              endIndent: 120,
            ),
            SizedBox(
              width: 0.0,
              height: 10.0,
            ),
            DropdownButton(
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
            SizedBox(
              width: 0.0,
              height: 100.0,
            ),
            Center(child: createRoute(context, this, _rating, 0)),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: LinearProgressIndicator(
                  value: (this.widget.current_question + 1) /
                      (this.widget.list.length),
                  minHeight: 10,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      DARK_BLUE3)),
            )
          ],
        ),
      ),
    );
  }
}
