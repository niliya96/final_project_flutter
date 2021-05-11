import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase/new_profile/XDnew_profile.dart';
import 'package:flutter_firebase/XDprofile.dart';
import 'package:flutter_firebase/blocs/auth_bloc_facebook.dart';
import 'package:flutter_firebase/blocs/auth_bloc_google.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/services/mongodb_server.dart' as server;
import 'XDcreate_acount.dart';
import 'XDreview1.dart';
import 'XDsearch.dart';
import 'login/main_component.dart';

// Noy
void main() {
  //server.start();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => AuthBlocFacebook()),
        Provider(create: (context) => AuthBlocGoogle())
      ],
      child: MaterialApp(
        title: 'Project',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: MainComponentLogin(),
      ),
    );
  }
}
