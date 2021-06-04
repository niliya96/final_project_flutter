import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/start_questions.dart';

class MainComponentFill extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  List<Map<String, String>> answers = [];
  MainComponentFill(this.list);
  int index = 0;

  @override
  MainComponentFillState createState() => MainComponentFillState();
}

class MainComponentFillState extends State<MainComponentFill> {

  @override
  Widget build(BuildContext context) {
      var scaffold = Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: StartQuestions(this.widget.list, this.widget.answers)
      );
      return scaffold;
  }

}
