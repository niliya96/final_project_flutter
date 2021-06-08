import 'dart:async';
import 'dart:collection';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/details_fill.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/fill_a_review/text_format.dart';
import 'package:flutter_firebase/home/home_screen.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component.dart';
import 'package:provider/provider.dart';
import 'complete_fill.dart';

class RatingFormat extends StatefulWidget {
  final int maximumRating = 5;
  final Function(int) onRatingSelected;
  final List<Map<String, dynamic>> list;
  List<Map<String, String>> answers;
  int current_question;

  RatingFormat(
      this.onRatingSelected, this.list, this.current_question, this.answers);

  @override
  RatingFormatState createState() => RatingFormatState();
}

class RatingFormatState extends State<RatingFormat> {
  int _currentRating = 0;
  int _rating;
  int _currentIndexInBar = 0;
  bool _checked = false;
  StreamSubscription<FirebaseUser> loginStateSubscription;
  @override
  void initState() {
    var authBloc = Provider.of<AuthBlocGoogle>(context, listen: false);
    loginStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser == null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MainComponentLogin(this.widget.list),
          ),
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    loginStateSubscription.cancel();
    super.dispose();
  }

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(Icons.star, size: 50, color: Colors.amber[700]);
    } else {
      return Icon(Icons.star, size: 50, color: Colors.amber[100]);
    }
  }

  void addAnswer() {
    Map<String, String> answer = new HashMap<String, String>();
    answer.putIfAbsent(this.widget.list[this.widget.current_question]['text'].toString(),
        () => _currentRating.toString());
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
                  deleteAnswer();
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
                  addAnswer();
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
                        builder: (context) => CompleteFillReview(
                            this.widget.list, this.widget.answers)));
                  }
                }),
          ),
        ],
      ),
    );
  }

  Widget createBody() {
    final stars = List<Widget>.generate(this.widget.maximumRating, (index) {
      return Center(
        child: GestureDetector(
          child: _buildRatingStar(index),
          onTap: () {
            setState(() {
              _currentRating = index + 1;
              if (_currentRating != 0) {
                _checked = false;
              }
            });

            this.widget.onRatingSelected(_currentRating);
          },
        ),
      );
    });
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Container(
            width: 430.0,
            height: 230.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    this.widget.list[this.widget.current_question]['image']),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Text(
          this.widget.list[this.widget.current_question]['text'].toString(),
          style: TextStyle(
            fontFamily: 'Europa',
            fontSize: 25,
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
          indent: 60,
          endIndent: 60,
        ),
        SizedBox(
          width: 0.0,
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80),
          child: Row(
            children: stars,
          ),
        ),
        FlatButton(
          child: Text("נקה",
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 18,
                color: const Color.fromRGBO(0, 48, 80, 50),
                height: 1.3888888888888888,
              )),
          onPressed: () {
            setState(() {
              _currentRating = 0;
            });
            this.widget.onRatingSelected(_currentRating);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80),
          child: CheckboxListTile(
              value: _checked,
              controlAffinity: ListTileControlAffinity.platform,
              activeColor: const Color.fromRGBO(0, 48, 80, 50),
              checkColor: Colors.white,
              tileColor: Color.fromRGBO(67, 232, 137, 50),
              title: Text(
                "סמן כלא רלוונטי",
                style: TextStyle(
                  fontFamily: 'Europa',
                  fontSize: 15,
                  color: const Color.fromRGBO(0, 48, 80, 50),
                  fontWeight: FontWeight.w700,
                  height: 1.3888888888888888,
                ),
                textAlign: TextAlign.right,
              ),
              onChanged: (bool value) {
                setState(() {
                  _checked = value;
                });
                if (_checked) {
                  _currentRating = 0;
                }
              }),
        ),
        SizedBox(
          width: 0.0,
          height: 30.0,
        ),
        createRoute(),
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
    );
  }

  Widget _buildBody() {
    final authBloc = Provider.of<AuthBlocGoogle>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: <Widget>[
                  Text(
                    "ברוך הבא",
                    style: TextStyle(
                      fontFamily: 'Europa',
                      fontSize: 17,
                      color: Color.fromRGBO(0, 48, 80, 50),
                      fontWeight: FontWeight.w700,
                      height: 1.1666666666666667,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () => authBloc.logoutGoogle(),
                    child: Text(
                      'התנתק',
                      style: TextStyle(
                        fontFamily: 'Europa',
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        height: 1.1666666666666667,
                      ),
                    ),
                    color: Color.fromRGBO(0, 48, 80, 50),
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                    //bottomOpthpacity: 0,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ],
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(67, 232, 137, 50)),
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
