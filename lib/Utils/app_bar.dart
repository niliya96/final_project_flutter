import 'package:flutter/material.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'headers.dart';

AppBar createAppBar(AuthBlocGoogle authBloc) {
  return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: <Widget>[
              Text(
               WELCOM,
                style: TextStyle(
                  fontFamily: EUROPA_FONT,
                  fontSize: 17,
                  color: DARK_BLUE,
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
              ),
              RaisedButton(
                onPressed: () => authBloc.logoutGoogle(),
                child: Text(
                  DISCONNECT,
                  style: TextStyle(
                    fontFamily: EUROPA_FONT,
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    height: 1.1666666666666667,
                  ),
                ),
                color: DARK_BLUE,
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
                elevation: 0,
              ),
            ],
          ),
        ),
      ],
      automaticallyImplyLeading: false,
      backgroundColor: LIGHT_GREEN);
}