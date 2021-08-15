import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/home/home_screen.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:provider/provider.dart';

class ButtonsLogin extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  ButtonsLogin(this.list);
  @override
  ButtonsLoginState createState() => ButtonsLoginState();
}

class ButtonsLoginState extends State<ButtonsLogin> {
  // for disposal
  StreamSubscription<FirebaseUser> loginStateSubscriptionForGoogle;
  @override
  void initState() {
    var authBlockGoogle = Provider.of<AuthBlocGoogle>(context, listen: false);
    // the case that the sign in with google was successful
    loginStateSubscriptionForGoogle =
        authBlockGoogle.currentUser.listen((fbUser) {
      if (fbUser != null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen(this.widget.list)));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    loginStateSubscriptionForGoogle.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // variables for log in service
    final authBlocGoogle = Provider.of<AuthBlocGoogle>(context);
    // logic
    return Stack(children: <Widget>[
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // if the sign-in with google pressed
            SignInButton(Buttons.Google,
                onPressed: () => authBlocGoogle.loginGoogle()),
          ],
        ),
      ),
    ]);
  }
}
