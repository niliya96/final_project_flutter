import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/fill_a_review/text_format.dart';
import 'package:flutter_firebase/home/home.dart';
import 'package:flutter_firebase/search/main_component.dart';

class RatingFormat extends StatefulWidget {
  final int maximumRating;
  final Function(int) onRatingSelected;
  final List<Map<String, dynamic>> list;
  int current_question;

  RatingFormat(this.onRatingSelected, this.list, this.current_question,
      [this.maximumRating = 5]);

  @override
  RatingFormatState createState() => RatingFormatState();
}

class RatingFormatState extends State<RatingFormat> {
  int _currentRating = 0;
  int _rating;
  int _currentIndexInBar = 0;
  bool _checked = false;

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(Icons.star, size: 50, color: Colors.amber[700]);
    } else {
      return Icon(Icons.star, size: 50, color: Colors.amber[100]);
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
                  // not first format
                  if (this.widget.current_question > 0) {
                    this.widget.current_question--;
                    // rating bar case
                    if (this
                            .widget
                            .list[this.widget.current_question]['kind']
                            .toString() ==
                        'rating') {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => RatingFormat((rating) {
                                  setState(() {
                                    _rating = rating;
                                  });
                                }, this.widget.list,
                                    this.widget.current_question, 5)),
                      );
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
                                options)),
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
                                this.widget.list)),
                      );
                    }
                  }
                  // first format
                  else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            MainComponentSearch(this.widget.list)));
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
                  this.widget.current_question++;
                  if (this.widget.current_question < this.widget.list.length) {
                    // rating bar case
                    if (this
                            .widget
                            .list[this.widget.current_question]['kind']
                            .toString() ==
                        'rating') {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => RatingFormat((rating) {
                                  setState(() {
                                    _rating = rating;
                                  });
                                }, this.widget.list,
                                    this.widget.current_question, 5)),
                      );
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
                                options)),
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
                                this.widget.list)),
                      );
                    }
                  } else {
                    print("end");
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
          padding: const EdgeInsets.only(left:80, right:80),
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
                  color:  const Color.fromRGBO(0, 48, 80, 50),
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
          height: 50.0,
        ),
        createRoute(),
      ],
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
                builder: (context) => MainComponentSearch(this.widget.list)));
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
