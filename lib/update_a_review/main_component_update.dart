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

class MainComponentUpdate extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  List<ReviewFormat> reviews = [];
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
    this.widget.reviews.add(new ReviewFormat(authBloc, "נילי", this));
    this.widget.reviews.add(new ReviewFormat(authBloc, "נוי", this));
    super.initState();
  }

  @override
  void dispose() {
    loginStateSubscription.cancel();
    super.dispose();
  }

  Widget drawList() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            for (ReviewFormat elem in this.widget.reviews)
              SizedBox(
                height: 230.0,
                child: elem,
              ),
          ],
        ),
      ],
    );
  }

  Widget deleteElement(dynamic elem) {
    this.widget.reviews.remove(elem);
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBlocGoogle>(context);
    var scaffold = Scaffold(
      body: Column(children: <Widget>[
        Expanded(
          flex: 15,
          child: createHeadLineUpdate(),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 20,
          child: drawList(),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
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
