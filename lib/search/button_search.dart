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
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Center(
              child: FlatButton(
                  color: Color.fromRGBO(0, 48, 80, 50),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Reader reader = new Reader();
                    reader
                        .searchForWorker(
                            this.widget.nameTyped, this.widget.passportTyped)
                        .then((value) => {
                              if (value == null)
                                {
                                  // message = "העובד שחיפשת אינו מופיע במערכת, נסה שוב."
                                }
                              else
                                {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          MainComponentFill(this.widget.list)))
                                }
                            });
                  }),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                message,
                style: TextStyle(
                  fontFamily: 'Europa',
                  fontSize: 15,
                  color: Color.fromRGBO(0, 48, 80, 50),
                  letterSpacing: -0.3,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
