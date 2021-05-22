import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/main_component.dart';
import 'package:flutter_firebase/services/read_from_mongodb.dart';


class ButtonSearch extends StatefulWidget {
  String nameTyped = '';
  String passportTyped = '';
  final List<Map<String, dynamic>> list;

  ButtonSearch(this.nameTyped, this.passportTyped, this.list);

  @override
  ButtonSearchState createState() => ButtonSearchState();
}

class ButtonSearchState extends State<ButtonSearch> {
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Padding(
          padding: const EdgeInsets.fromLTRB(0,530,0,0),
          child:   FlatButton(
            color: Colors.lightBlue,
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Reader reader = new Reader();
              reader.searchForWorker(this.widget.nameTyped, this.widget.passportTyped).then((value) => {
                if (value == new List()) {
                  message = "העובד שחיפשת אינו מופיע במערכת, נסה שוב."
                }
                else {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MainComponentFill(this.widget.list)))
                }
              });
            }
          ),  
        ),
        Text(
          message,
          style: TextStyle(
          fontFamily: 'Europa',
          fontSize: 15,
          color: const Color(0xffffffff),
          letterSpacing: -0.3,
          fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        ],
      ),
    );
  }

}