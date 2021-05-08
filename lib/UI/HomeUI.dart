import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/blocs/auth_bloc_facebook.dart';
import 'package:flutter_firebase/blocs/auth_bloc_google.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/screens/opinion.dart';


Scaffold getFacebookUI(BuildContext context) {
      var authBloc = Provider.of<AuthBlocFacebook>(context);
      var photoToken = authBloc.photo;
      if (photoToken == null) {
        photoToken = "";
      }
      return Scaffold(
        body: Center(
          child: StreamBuilder<FirebaseUser>(
              stream: authBloc.currentUser,
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      snapshot.data.displayName,
                      style: TextStyle(fontSize: 35.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          snapshot.data.photoUrl + "?height=500&access_token=" + photoToken),
                      radius: 60.0,
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    SignInButton(Buttons.Facebook,
                        text: "Sign out of Facebook",
                        onPressed: () => authBloc.logut()),
                    SizedBox(
                      height: 100.0,
                    ),
                    RaisedButton(
                        child: Text('Write a review',
                          style: TextStyle(color: Colors.red[500], fontSize: 16),
                        ),
                        onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Opinion()),
                        );
                      }
                    )
                  ],
                );
              }),
        ),
      );
  }


Scaffold getGoogleUI(BuildContext context) {
  final authBloc = Provider.of<AuthBlocGoogle>(context);
        return Scaffold(
            body: Center(
          child: StreamBuilder<FirebaseUser>(
            stream: authBloc.currentUser,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();
              print(snapshot.data.photoUrl);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data.displayName,style:TextStyle(fontSize: 35.0)),
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data.photoUrl.replaceFirst('s96','s400')),
                    radius: 60.0,
                  ),
                  SizedBox(height: 100.0,),
                  SignInButton(
                    Buttons.Google,
                    text: 'Sign Out of Google',
                    onPressed: () => authBloc.logoutGoogle()
                  ),
                           SizedBox(
                      height: 100.0,
                    ),
                    RaisedButton(
                        child: Text('Write a review',
                          style: TextStyle(color: Colors.blue[500], fontSize: 16),
                        ),
                        onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Opinion()),
                        );
                      }
                    )
                ],
              );
            }
          ),
        ));
}

