import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/fill_a_review/start_questions.dart';

class MainComponentFill extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  List<Map<String, String>> answers = [];
  MainComponentFill(this.questions);

  @override
  MainComponentFillState createState() => MainComponentFillState();
}

class MainComponentFillState extends State<MainComponentFill> {

  @override
  Widget build(BuildContext context) {
      var scaffold = Scaffold(
        backgroundColor: WHITE,
        body: StartQuestions(this.widget.questions, this.widget.answers)
      );
      return scaffold;
  }

}
