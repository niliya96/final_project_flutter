import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/rating_format.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/home/home.dart';

import 'complete_fill.dart';
import 'details_fill.dart';

class TextFormat extends StatefulWidget {
  int current_question;
  final List<Map<String, dynamic>> list;
  List<Map<String, String>> answers;

  TextFormat(this.current_question, this.list, this.answers) : super();

  @override
  TextFormatState createState() => TextFormatState();
}

class TextFormatState extends State<TextFormat> {
  int _rating;
  int _currentIndexInBar = 0;
  String text_fill;

  void addAnswer() {
    Map<String, String> answer = new HashMap<String, String>();
    answer.putIfAbsent(
        this.widget.current_question.toString(), () => text_fill);
    this.widget.answers.add(answer);
  }

  void deleteAnswer() {
    if (!this.widget.answers.isEmpty) {
      this.widget.answers.removeLast();
    }
  }

  Widget createRoute() {
    return Center(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: FlatButton(
                height: 60,
                minWidth: 110,
                color: Color.fromRGBO(0, 48, 80, 50),
                child: Text(
                  "הקודם",
                  style: TextStyle(
                    fontFamily: 'Europa',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    height: 1.1666666666666667,
                  ),
                ),
                onPressed: () {
                  /**
                   * update list of answers
                   */
                  addAnswer();
                  // not first format
                  if (this.widget.current_question > 0) {
                    this.widget.current_question--;
                    // rating bar case
                    if (this
                            .widget
                            .list[this.widget.current_question]['kind']
                            .toString() ==
                        'rating') {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RatingFormat((rating) {
                          setState(() {
                            _rating = rating;
                          });
                        }, this.widget.list, this.widget.current_question,
                            this.widget.answers),
                      ));
                    }
                    // choose case
                    else if (this
                            .widget
                            .list[this.widget.current_question]['kind']
                            .toString() ==
                        'choose') {
                      List<dynamic> options = this
                          .widget
                          .list[this.widget.current_question]['options'];
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SelectionFormat(
                                this.widget.current_question,
                                this.widget.list,
                                options,
                                this.widget.answers)),
                      );
                    }
                    // text format
                    else if (this
                            .widget
                            .list[this.widget.current_question]['kind']
                            .toString() ==
                        'text') {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => TextFormat(
                                this.widget.current_question,
                                this.widget.list,
                                this.widget.answers)),
                      );
                    }
                  }
                  // first format
                  else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsFill(
                            this.widget.list, this.widget.answers)));
                  }
                }),
          ),
          /**
           * end of previous button
           */
          SizedBox(
            width: 90,
          ),
          /**
           * start of next button
           */
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: FlatButton(
                height: 60,
                minWidth: 110,
                color: Color.fromRGBO(0, 48, 80, 50),
                child: Text(
                  "הבא",
                  style: TextStyle(
                    fontFamily: 'Europa',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    height: 1.1666666666666667,
                  ),
                ),
                onPressed: () {
                  /**
                   * update list of answers
                   */
                  deleteAnswer();
                  this.widget.current_question++;
                  if (this.widget.current_question < this.widget.list.length) {
                    // rating bar case
                    if (this
                            .widget
                            .list[this.widget.current_question]['kind']
                            .toString() ==
                        'rating') {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RatingFormat((rating) {
                          setState(() {
                            _rating = rating;
                          });
                        }, this.widget.list, this.widget.current_question,
                            this.widget.answers),
                      ));
                    }
                    // choose case
                    else if (this
                            .widget
                            .list[this.widget.current_question]['kind']
                            .toString() ==
                        'choose') {
                      List<dynamic> options = this
                          .widget
                          .list[this.widget.current_question]['options'];
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SelectionFormat(
                                this.widget.current_question,
                                this.widget.list,
                                options,
                                this.widget.answers)),
                      );
                    }
                    // text format
                    else if (this
                            .widget
                            .list[this.widget.current_question]['kind']
                            .toString() ==
                        'text') {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TextFormat(
                            this.widget.current_question,
                            this.widget.list,
                            this.widget.answers),
                      ));
                    }
                  } else {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CompleteFillReview(this.widget.list, this.widget.answers)));
                  }
                }),
          ),
        ],
      ),
    );
  }

  Widget createBody() {
    return new Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                width: 430.0,
                height: 230.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(this
                        .widget
                        .list[this.widget.current_question]['image']),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              this.widget.list[this.widget.current_question]['text'].toString(),
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 30,
                color: const Color.fromRGBO(0, 48, 80, 50),
                fontWeight: FontWeight.w700,
                height: 1.1666666666666667,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
            Divider(
              color: const Color.fromRGBO(0, 48, 80, 50),
              thickness: 1,
              indent: 120,
              endIndent: 120,
            ),
            SizedBox(
              width: 0.0,
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color.fromRGBO(0, 48, 80, 50),
                  focusColor: Color.fromRGBO(0, 48, 80, 50),
                  hoverColor: Color.fromRGBO(0, 48, 80, 50),
                  filled: true,
                  labelText: 'כתוב מלל חופשי',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  return null;
                },
                maxLength: 500,
                maxLines: 5,
                onChanged: (value) => setState(() {
                  text_fill = value;
                }),
              ),
            ),
            SizedBox(
              width: 0.0,
              height: 50.0,
            ),
            Center(
              child: createRoute(),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: LinearProgressIndicator(
                  value: (this.widget.current_question + 1) /
                      (this.widget.list.length),
                  minHeight: 10,
                  //backgroundColor: Color.fromRGBO(67, 232, 137, 50),
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromRGBO(67, 232, 137, 10))),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(67, 232, 137, 50),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(67, 232, 137, 50),
        currentIndex: _currentIndexInBar,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromRGBO(0, 48, 80, 50)),
            title: Text(
              "בית",
              style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
            ),
            backgroundColor: Color.fromRGBO(67, 232, 137, 50),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save, color: Color.fromRGBO(0, 48, 80, 50)),
            title: Text(
              "שמור",
              style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
            ),
            backgroundColor: Color.fromRGBO(67, 232, 137, 50),
          ),
        ],
        onTap: (index) async {
          setState(() {
            _currentIndexInBar = index;
          });
          if (_currentIndexInBar == 0) {
            await showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Text(
                  "חזור למסך הבית",
                  textAlign: TextAlign.right,
                ),
                content: Text('האם אתה בטוח שברצונך למחוק את החוו"ד שמילאת?',
                    textAlign: TextAlign.right),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen(this.widget.list)));
                    },
                    child: Text("חזור למסך הבית"),
                  ),
                ],
              ),
            );
          } else if (_currentIndexInBar == 1) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) =>
                    DetailsFill(this.widget.list, this.widget.answers)));
          }
        },
      ),
      body: createBody(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
