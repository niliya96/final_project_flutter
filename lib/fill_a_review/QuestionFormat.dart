import 'package:flutter/material.dart';

class QuestionFormat {
  String kind;
  String text;
  dynamic answer;
  int number;
  bool ifAnswered;

  QuestionFormat({
    @required this.kind,
    @required this.text,
    @required this.answer,
    @required this.number,
    @required this.ifAnswered
  });
}