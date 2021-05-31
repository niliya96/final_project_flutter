import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/fill_a_review/text_format.dart';
import 'package:flutter_firebase/home/home.dart';
import 'package:flutter_firebase/search/main_component.dart';

class RatingFormat extends StatefulWidget {
  final int maximumRating;
  final Function(int) onRatingSelected;
  final List<Map<String, dynamic>> list;
  int index;

  RatingFormat(this.onRatingSelected, this.list, this.index, [this.maximumRating = 5]);

  @override
  RatingFormatState createState() => RatingFormatState();
}

class RatingFormatState extends State<RatingFormat> {
  int _currentRating = 0;
  int _rating;
  int _currentIndex = 0;

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(
        Icons.star,
        size: 50, 
        color: Colors.amber[700]
        );
    } else {
      return Icon(
        Icons.star,
        size: 50,
        color: Colors.amber[100]
        );
    }
  }

  Widget _buildBody() {
    final stars = List<Widget>.generate(this.widget.maximumRating, (index) {
      return Center(
        child: GestureDetector(
          child: _buildRatingStar(index),
          onTap: () {
            setState(() {
              _currentRating = index + 1;
            });

            this.widget.onRatingSelected(_currentRating);
          },
        ),
      );
    });
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(          
          backgroundColor: Color.fromRGBO(67, 232, 137, 50),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(67, 232, 137, 50),
          currentIndex: _currentIndex,
          iconSize: 30,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              color: Color.fromRGBO(0, 48, 80, 50)),
              title: Text(
                "בית",
                style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
              ),
              backgroundColor: Color.fromRGBO(67, 232, 137, 50),
            ),
                BottomNavigationBarItem(
              icon: Icon(Icons.save,
              color: Color.fromRGBO(0, 48, 80, 50)),
              title: Text(
                "שמור",
                style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
              ),
              backgroundColor: Color.fromRGBO(67, 232, 137, 50),
            ),
          ],
          onTap: (index) async{
            setState(() {
              _currentIndex = index;
            });
            if (_currentIndex == 0) {
              await showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("חזור למסך הבית",
                  textAlign: TextAlign.right,),
                  content: Text('האם אתה בטוח שברצונך למחוק את החוו"ד שמילאת?',
                  textAlign: TextAlign.right),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen(this.widget.list)));
                      },
                      child: Text("חזור למסך הבית"),
                    ),
                  ],
                ),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MainComponentSearch(this.widget.list)));
            }
          },
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: <Widget>[
              Text(
                this.widget.list[this.widget.index]['text'].toString(),
                style: TextStyle(
                  fontFamily: 'Europa',
                  fontSize: 30,
                  color: const Color.fromRGBO(0, 48, 80, 50),
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
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
              padding: const EdgeInsets.only(left:80, right: 80),
              child: Row(
                  children: stars,
                ),
            ),
            FlatButton(
                child: Text(
                "נקה", 
                style: TextStyle(
                  fontFamily: 'Europa',
                  fontSize: 18,
                  color: const Color.fromRGBO(0, 48, 80, 50),
                  height: 1.3888888888888888,
                  )
                ),
                onPressed: () {
                setState(() {
                  _currentRating = 0;
                });
                this.widget.onRatingSelected(_currentRating);
              },
            ),
             SizedBox(
              width: 0.0,
              height: 100.0,
            ),
             Center(
               child: Row(
                 children: [
               Padding(
                 padding: const EdgeInsets.only(left:50),
                 child: FlatButton(
                      color: const Color.fromRGBO(0, 48, 80, 50),
                      child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 40,
                      ),
                        onPressed: () {
                          // not first format
                          if (this.widget.index > 0) {
                            this.widget.index--;
                            // rating bar case
                            if (this.widget.list[this.widget.index]['kind'].toString() == 'rating') {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RatingFormat((rating) {
                                  setState(() {
                               _rating = rating;
                              });
                              }, this.widget.list, this.widget.index, 5)),
                              );
                            }
                            // choose case
                            else if (this.widget.list[this.widget.index]['kind'].toString() == 'choose') {
                              List<dynamic> options = this.widget.list[this.widget.index]['options'];
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SelectionFormat(this.widget.index, this.widget.list, options)),
                              );
                            }
                            // text format
                            else if (this.widget.list[this.widget.index]['kind'].toString() == 'text') {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TextFormat(this.widget.index, this.widget.list)),
                              );
                            } 
                          }
                          // first format
                          else {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MainComponentSearch(this.widget.list)));
                          }                
                        }
                      ),
               ),
                    SizedBox(width: 130,),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: FlatButton(
                      color: const Color.fromRGBO(0, 48, 80, 50),
                      child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 40,
                      ),
                        onPressed: () {
                          this.widget.index++;
                          if (this.widget.index < this.widget.list.length) {
                            // rating bar case
                            if (this.widget.list[this.widget.index]['kind'].toString() == 'rating') {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RatingFormat((rating) {
                                  setState(() {
                               _rating = rating;
                              });
                              }, this.widget.list, this.widget.index, 5)),
                              );
                            }
                            // choose case
                            else if (this.widget.list[this.widget.index]['kind'].toString() == 'choose') {
                              List<dynamic> options = this.widget.list[this.widget.index]['options'];
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SelectionFormat(this.widget.index, this.widget.list, options)),
                              );
                            }
                            // text format
                            else if (this.widget.list[this.widget.index]['kind'].toString() == 'text') {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TextFormat(this.widget.index, this.widget.list)),
                              );
                            }                 
                          }
                          else {
                            print("end");
                          }
                        }
                  ),
                    ),
                 ],
               ),
             ),
            ],
          ),
        ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}