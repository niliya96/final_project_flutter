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

  Widget factory() {
    /**
     * A rating format
     */
      if (this.widget.list[0]['kind'].toString() == 'rating') {
        return Scaffold(
        backgroundColor: const Color(0xff353549),
        appBar: AppBar(          backgroundColor: Colors.lightBlue,
        ),
        body: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 200, 80, 300),
            child: RatingFormat((rating) {
                  setState(() {
                    _rating = rating;
                  });
                }, this.widget.list[0]['text'], 5),
          ),
        ]
      )
    );
    }
  }

  @override
  Widget build(BuildContext context) {
    return factory();
  }
}
