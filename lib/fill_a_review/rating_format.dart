import 'package:flutter/material.dart';

class RatingFormat extends StatefulWidget {
  final int maximumRating;
  final String text;
  final Function(int) onRatingSelected;
  final List<Map<String, dynamic>> list;
  int index;

  RatingFormat(this.onRatingSelected, this.text, this.list, this.index, [this.maximumRating = 5]);

  @override
  RatingFormatState createState() => RatingFormatState();
}

class RatingFormatState extends State<RatingFormat> {
  int _currentRating = 0;

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
      return GestureDetector(
        child: _buildRatingStar(index),
        onTap: () {
          setState(() {
            _currentRating = index + 1;
          });

          this.widget.onRatingSelected(_currentRating);
        },
      );
    });
    /**
     * A rating bar case
     */
    if (this.widget.list[this.widget.index]['kind'].toString() == 'rating') {
      return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Text(
            this.widget.text,
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 30,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        Divider(
            color: const Color(0xffffffff),
            thickness: 1,
            indent: 60,
            endIndent: 60,
        ),
       SizedBox(
        width: 0.0,
         height: 10.0,
        ),
        Center(
          child: Row(
            children: stars,
          ),
        ),
        FlatButton(
            child: Text(
            "Clear", 
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 18,
              color: const Color(0xffffffff),
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
         FlatButton(
           child: Text(
            "next", 
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 18,
              color: const Color(0xffffffff),
              height: 1.3888888888888888,
              )
            ),
            onPressed: () {
              this.widget.index++;
              if (this.widget.index < this.widget.list.length) {
                
              }
              else {
                print("end");
              }
            }
        ),
       ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}