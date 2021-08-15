import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/app_bar.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:provider/provider.dart';
import 'home_screen_ui.dart';
import 'package:flutter_firebase/Utils/buttom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  HomeScreen(this.list);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  StreamSubscription<FirebaseUser> loginStateSubscription;
  int _currentBarOption = 0;

  @override
  void initState() {
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
    var scaffold = Scaffold(
      body: createHomeScreenUI(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: createAppBar(authBloc),
      bottomNavigationBar: createButtomBar(context, _currentBarOption, this),
    );
    return scaffold;
  }
}
