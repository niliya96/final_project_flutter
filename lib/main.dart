import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase/blocs/auth_bloc_facebook.dart';
import 'package:flutter_firebase/blocs/auth_bloc_google.dart';
import 'package:flutter_firebase/services/questions_mongodb.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/services/questions_mongodb.dart' as server;
import 'fill_a_review/main_component.dart';
import 'fill_a_review/rating_format.dart';
import 'login/main_component.dart';

// Noy
void main() {
  //server.start();
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
        home: MainComponentFill(),
      ),
    );
  }
}
