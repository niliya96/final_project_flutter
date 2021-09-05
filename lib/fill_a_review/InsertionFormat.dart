import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/QuestionFormat.dart';

class InsertionFormat {
  String uid;
  String name_of_worker;
  String passport;
  String nation;
  List<QuestionFormat> answers;

  InsertionFormat({
    @required this.uid,
    @required this.name_of_worker,
    @required this.passport,
    @required this.nation,
    @required this.answers
  });
}