import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/rating_format.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';

class MainComponentFill extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  MainComponentFill(this.list);
  int index = 0;

  @override
  MainComponentFillState createState() => MainComponentFillState();
}

class MainComponentFillState extends State<MainComponentFill> {
  int _rating;

  Widget factory() {
      // this.widget.list.sort((a, b) => a['numer'] < b['number']);
      // rating format
      Widget _child;
      if (this.widget.list[0]['kind'].toString() == 'rating') {
          _child =  RatingFormat((rating) {
          setState(() {
            _rating = rating;
          });
        }, this.widget.list, this.widget.index, 5);
      }
      // choose format
      else if (this.widget.list[0]['kind'].toString() == 'choose') {
        List<dynamic> options = this.widget.list[0]['options'];
        _child = SelectionFormat(this.widget.index, this.widget.list, options);
      }
      // text format
      else if (this.widget.list[0]['kind'].toString() == 'text') {

      }
      return Scaffold(
        backgroundColor: const Color(0xff353549),
        appBar: AppBar(          
          backgroundColor: Colors.lightBlue,
        ),
        body: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 0, 80, 100),
              child: _child
          ),
        ]
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return factory();
  }
}
