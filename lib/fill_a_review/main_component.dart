import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/rating_format.dart';

class MainComponentFill extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  MainComponentFill(this.list);

  @override
  MainComponentFillState createState() => MainComponentFillState();
}

class MainComponentFillState extends State<MainComponentFill> {
  int _rating;
  String _text = "חרוץ";
  List<Widget> formatList;

  Widget factory() {
    this.widget.list.forEach((element) {
      switch (element['kind']) {
        case 'rating':
          formatList.add(RatingFormat((rating) {
            setState(() {
              _rating = rating;
            });
          }, element['text'], 5));
          break;
        case 'choice':
          break;
        case 'text':
          break;
      }
    });
  }

  Widget loop() {
    formatList.forEach((element) {
      return element;
    });
  }

  @override
  Widget build(BuildContext context) {
    factory();
    return Scaffold(
        backgroundColor: const Color(0xff353549),
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
        ),
        body: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 200, 80, 300),
          ),
          fromatList(0)
        ]));
  }
}
