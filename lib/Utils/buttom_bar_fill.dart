import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/fill_a_review/InsertionFormat.dart';
import 'package:flutter_firebase/home/home_screen.dart';
import 'package:flutter_firebase/services/json_convert.dart';
import 'package:flutter_firebase/services/write_to_mongodb.dart';
import 'package:flutter_firebase/update_a_review/review_format.dart';

BottomNavigationBar createButtomBarFill(
    BuildContext context,
    int _currentBarOption,
    dynamic state,
    String uid,
    InsertionFormat insertion_format,
    final List<Map<String, dynamic>> questions,
    bool afterDeatails) {
  return BottomNavigationBar(
    backgroundColor: LIGHT_GREEN,
    currentIndex: _currentBarOption,
    iconSize: 30,
    selectedFontSize: 15,
    unselectedFontSize: 10,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: DARK_BLUE),
        title: Text(
          HOME,
          style: TextStyle(color: DARK_BLUE),
        ),
        backgroundColor: LIGHT_GREEN,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.save, color: DARK_BLUE),
        title: Text(
          SAVE,
          style: TextStyle(color: DARK_BLUE),
        ),
        backgroundColor: LIGHT_GREEN,
      ),
    ],
    onTap: (index) async {
      state.setState(() {
        _currentBarOption = index;
      });
      switch (_currentBarOption) {
        case 0:
          {
            await showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Text(
                  RETURN_HOME,
                  textAlign: TextAlign.right,
                ),
                content: Text(ARE_YOU_SURE, textAlign: TextAlign.right),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen(state.widget.questions)));
                    },
                    child: Text(RETURN_HOME),
                  ),
                ],
              ),
            );
            break;
          }
        case 1:
          {
            switch (afterDeatails) {
              case true:
                await showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text(
                      SAVE_REVIEW,
                      textAlign: TextAlign.right,
                    ),
                    content: Text(SAVE_REVIEW2, textAlign: TextAlign.right),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          ReviewFormatData review = convert(
                              insertion_format.answers,
                              questions,
                              insertion_format.name_of_worker,
                              insertion_format.passport,
                              insertion_format.nation,
                              insertion_format.uid);
                          writeReviewToDB(review);
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomeScreen(state.widget.questions)));
                        },
                        child: Text(SAVE),
                      ),
                    ],
                  ),
                );
                break;
              case false:
                await showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text(
                      CANT_SAVE1,
                      textAlign: TextAlign.right,
                    ),
                    content: Text(CANT_SAVE2, textAlign: TextAlign.right),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomeScreen(state.widget.questions)));
                        },
                        child: Text(RETURN_HOME),
                      ),
                    ],
                  ),
                );
                break;
            }

            break;
          }
      }
    },
  );
}