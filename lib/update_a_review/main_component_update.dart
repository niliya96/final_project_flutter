import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_navigation_bar.dart';
import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:flutter_firebase/update_a_review/update_headline.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:provider/provider.dart';

import 'list_view_component.dart';

class MainComponentUpdate extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  MainComponentUpdate(this.questions);

  @override
  MainComponentUpdateState createState() => MainComponentUpdateState();
}

class MainComponentUpdateState extends State<MainComponentUpdate> {
  StreamSubscription<FirebaseUser> loginStateSubscription;
  int _currentBarOption = 0;

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
      body: Column(children: <Widget>[
        Expanded(
          flex: 18,
          child: createHeadLineUpdate(),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 20,
          child: ListViewComponent(),
        ),
      ]),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: createAppBar(authBloc),
      bottomNavigationBar: createButtomBar(context, _currentBarOption, this),
    );
    return scaffold;
  }
}

