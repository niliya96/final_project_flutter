import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/update_a_review/updating_section.dart';
import 'package:flutter_firebase/update_a_review/watch_review.dart';

class ReviewFormatData {
  final String name_of_worker;
  final String passport;
  final String nation;
  final String last_update;
  final List<List<String>> rating_answers;
  final List<List<String>> choose_answers;
  final List<List<String>> text_answers;
  final List<Map<String, dynamic>> questions;

  const ReviewFormatData({
    @required this.name_of_worker,
    @required this.passport,
    @required this.nation,
    @required this.last_update,
    @required this.rating_answers,
    @required this.choose_answers,
    @required this.text_answers,
    @required this.questions,
  });
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
                      onPressed: onClicked,
                    ),
                    IconButton(
                        icon: Icon(Icons.edit, color: DARK_BLUE, size: 35),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  UpdatingSection(this.item.questions, this.item)));
                        }),
                    IconButton(
                      icon: Icon(Icons.read_more, color: DARK_BLUE, size: 35),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                WatchReview(this.item.questions, this.item)));
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
