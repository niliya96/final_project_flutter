import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/services/read_from_mongodb.dart';
import 'package:provider/provider.dart';
import '../login/main_component_login.dart';

void main() {
  // read the questions of the questionnaire and put in a list (that returns as a Future).
  MongoReader reader = new MongoReader();
  reader.readQuestions().then((value) => {runApp(MyApp(value))});
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> questionsList;
  MyApp(this.questionsList);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => AuthBlocGoogle())
      ],
      child: MaterialApp(
        title: PROJECT_TITLE,
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: MainComponentLogin(this.questionsList),
      ),
    );
  }
}