import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/rating_format.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/search/main_component.dart';

class TextFormat extends StatefulWidget {
  int index;
  final List<Map<String, dynamic>> list;
  
  TextFormat(this.index, this.list) : super();

  @override
  TextFormatState createState() => TextFormatState();
}
 
class TextFormatState extends State<TextFormat> {
  int _rating;
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
        backgroundColor: const Color(0xff353549),
        appBar: new AppBar(
           backgroundColor: Colors.lightBlue,
        ),
        body: new Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                      this.widget.list[this.widget.index]['text'].toString(),
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
                    labelText: 'הוסף טקסט חופשי',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {

                  },
              maxLines: 5,
              maxLength: 500,
              ),
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
                      color: Colors.lightBlue,
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
                      color: Colors.lightBlue,
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
        ),
      );
  }
}