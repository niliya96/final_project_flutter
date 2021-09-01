import 'dart:collection';
import 'package:flutter_firebase/fill_a_review/details_fill.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/fill_a_review/text_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'complete_fill.dart';
import 'rating_format.dart';

List<Map<String, dynamic>> questions;
List<Map<String, Map<dynamic, bool>>> answers;

void buildAnswers() {
  questions.forEach((element) {
    String text = element[TEXT].toString();
    Map<String, Map<dynamic, bool>> answer_init = {text: {"init": false}};
    answers.add(answer_init);
  });
}