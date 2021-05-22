import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/blocs/auth_bloc_facebook.dart';
import 'package:flutter_firebase/login/main_component.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/blocs/auth_bloc_google.dart';
import 'package:flutter_firebase/UI/HomeUI.dart';



class Home extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  Home(this.list);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  StreamSubscription<FirebaseUser> homeStateSubscription;
  int generalFlag = 0;
  @override
  void initState() {
    var authBlocFacebook = Provider.of<AuthBlocFacebook>(context, listen: false);
    if (authBlocFacebook.flag == 1) {
      generalFlag = 1;
    }
    homeStateSubscription = authBlocFacebook.currentUser.listen((fbUser) {
      if (fbUser == null) {
        authBlocFacebook.flag = 0;
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => MainComponentLogin(this.widget.list)));
      }
    });
    var authBlockGoogle =  Provider.of<AuthBlocGoogle>(context, listen: false);
    if (authBlockGoogle.flag == 1) {
      generalFlag = 2;
    }
    // the case that the user loged out
    homeStateSubscription = authBlockGoogle.currentUser.listen((event) {
      if (event == null) {
        authBlockGoogle.flag = 0;
        Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => MainComponentLogin(this.widget.list)));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    homeStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /**
     * the case of facebook
     */
    switch(generalFlag) {
      case 1:
        return getFacebookUI(context);
        break;
      case 2:
        return getGoogleUI(context);
        break;
      default:
        return MainComponentLogin(this.widget.list);
    }
  }
}
