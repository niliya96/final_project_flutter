import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/Utils/buttom_navigation_bar.dart';
import 'package:flutter_firebase/Utils/waiting_bar.dart';
import 'package:flutter_firebase/services/get_from_db.dart';
import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:flutter_firebase/update_a_review/update_headline.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'data_list.dart';
import 'list_view_component.dart';

class MainComponentUpdate extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  List<ReviewFormatData> fromDb;
  DataList dataList;
  String uid;
  MainComponentUpdate(this.questions, this.uid);

  @override
  MainComponentUpdateState createState() => MainComponentUpdateState();
}

class MainComponentUpdateState extends State<MainComponentUpdate> {
  StreamSubscription<FirebaseUser> loginStateSubscription;
  int _currentBarOption = 0;
  dynamic uid;
  Future<List<ReviewFormatData>> _getReviews() async {
    return readReviewsFromDB(
        "Oh1bDMMjGuUpRgeqGz9mGWSe78T2", this.widget.questions);
  }

  @override
  void initState() {
    var authBloc = Provider.of<AuthBlocGoogle>(context, listen: false);
    loginStateSubscription = authBloc.currentUser.listen((fbUser) async {
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
    /**
    * get the data from db
    */
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
            child: FutureBuilder(
              future: _getReviews(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return WaitingBar();
                } else {
                  return ListViewComponent(new DataList(snapshot.data));
                }
              },
            )),
      ]),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: createAppBar(authBloc),
      bottomNavigationBar:
          createButtomBar(context, _currentBarOption, this, this.uid),
    );
    return scaffold;
  }

  Future<List<ReviewFormatData>> useDb(dynamic uid) async {
    List<ReviewFormatData> fromDb =
        await readReviewsFromDB(uid, this.widget.questions);
    return fromDb;
  }
}
