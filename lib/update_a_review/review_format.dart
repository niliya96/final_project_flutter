import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/update_a_review/updating_section.dart';
import 'package:flutter_firebase/update_a_review/watch_review.dart';
import 'package:mongo_dart/mongo_dart.dart';

class ReviewFormatData {
  ObjectId id;
  String user_id;
  String name_of_worker;
  String passport;
  String nation;
  String last_update;
  List<List<String>> rating_answers;
  List<List<String>> choose_answers;
  List<List<String>> text_answers;
  List<Map<String, dynamic>> questions;

  ReviewFormatData({
    @required this.id,
    @required this.user_id,
    @required this.name_of_worker,
    @required this.passport,
    @required this.nation,
    @required this.last_update,
    @required this.rating_answers,
    @required this.choose_answers,
    @required this.text_answers,
    @required this.questions,
  });

  fromJson(Map<String, dynamic> json, List<Map<String, dynamic>> q) {
    this.id = json['_id'];
    this.user_id = json['user_id'];
    this.name_of_worker = json['name_of_worker'];
    this.passport = json['passport'];
    this.nation = json['nation'];
    this.last_update = json['last_update'];
    this.rating_answers = [];
    this.choose_answers = [];
    this.text_answers = [];
    this.questions = q;

    for (var i = 0; i < json['rating_answers'].length; i++) {
      List<String> temp = new List<String>.from(json['rating_answers'][i]);
      this.rating_answers.add(temp);
    }
    for (var i = 0; i < json['choose_answers'].length; i++) {
      List<String> temp = new List<String>.from(json['choose_answers'][i]);
      this.choose_answers.add(temp);
    }
    for (var i = 0; i < json['text_answers'].length; i++) {
      List<String> temp = new List<String>.from(json['text_answers'][i]);
      this.text_answers.add(temp);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.user_id;
    data['name_of_worker'] = this.name_of_worker;
    data['passport'] = this.passport;
    data['nation'] = this.nation;
    data['last_update'] = this.last_update;
    data['rating_answers'] = this.rating_answers;
    data['choose_answers'] = this.choose_answers;
    data['text_answers'] = this.text_answers;
    return data;
  }
}

class ReviewFormatWidget extends StatelessWidget {
  final ReviewFormatData item;
  final Animation animation;
  final VoidCallback onClicked;

  const ReviewFormatWidget({
    @required this.item,
    @required this.animation,
    @required this.onClicked,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ScaleTransition(
        scale: animation,
        child: Card(
          margin: EdgeInsets.all(8),
          color: LIGHT_GREEN,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                    flex: 20,
                    child: SizedBox(),
                  ),
                  Text(LAST_UPDATE + ": " + this.item.last_update,
                      style: TextStyle(fontSize: 18)),
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ]),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 20,
                      child: SizedBox(),
                    ),
                    Column(children: <Widget>[
                      Text(WORKER_NAME + ": " + this.item.name_of_worker,
                          style: TextStyle(fontSize: 30)),
                      Text(PASSPORT_NUMBER + ": " + this.item.passport,
                          style: TextStyle(fontSize: 25)),
                    ]),
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Column(children: <Widget>[]),
                    Icon(Icons.rate_review, size: 50, color: DARK_BLUE),
                    Expanded(
                      flex: 2,
                      child: SizedBox(),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.delete, color: DARK_BLUE, size: 35),
                        onPressed: () async {
                          await showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                      title: Text(
                                        DELETE_YOUR_REVIEW,
                                        textAlign: TextAlign.right,
                                      ),
                                      content: Text(ARE_YOU_SURE_TO_DELETE,
                                          textAlign: TextAlign.right),
                                      actions: <Widget>[
                                        FlatButton(
                                            onPressed: onClicked,
                                            child: Text(DELETE)),
                                      ]));
                        }),
                    IconButton(
                        icon: Icon(Icons.edit, color: DARK_BLUE, size: 35),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => UpdatingSection(
                                  this.item.questions,
                                  this.item,
                                  this.item.user_id)));
                        }),
                    IconButton(
                      icon: Icon(Icons.read_more, color: DARK_BLUE, size: 35),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WatchReview(
                                this.item.questions,
                                this.item,
                                this.item.user_id)));
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}