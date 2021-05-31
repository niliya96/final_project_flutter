import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/rating_format.dart';
import 'package:flutter_firebase/fill_a_review/text_format.dart';
import 'package:flutter_firebase/search/main_component.dart';
 
 class Option {
  int id;
  String name;
 
  Option(this.id, this.name);
 
  static List<Option> createData(List<dynamic> lst) {
    int i = 0;
    List<Option> ret = [];
    lst.forEach((element) {
      ret.add(new Option(i, lst[i]));
      i++;
    });
    return ret;
  }
}

class SelectionFormat extends StatefulWidget {
  int index;
  final List<Map<String, dynamic>> list;
  final List<dynamic> options;
  
  SelectionFormat(this.index, this.list, this.options) : super();

  @override
  SelectionFormatState createState() => SelectionFormatState();
}
 
class SelectionFormatState extends State<SelectionFormat> {
  int _rating;

  @override
  void initState() {
    List<Option> _options = Option.createData(this.widget.options);
    _dropdownMenuItems = buildDropdownMenuItems(_options);
    _selectedOption = _dropdownMenuItems[0].value;
    super.initState();
  }
  
  List<DropdownMenuItem<Option>> _dropdownMenuItems;
  Option _selectedOption;
 
  List<DropdownMenuItem<Option>> buildDropdownMenuItems(List options) {
    List<DropdownMenuItem<Option>> items = List();
    for (Option option in options) {
      items.add(
        DropdownMenuItem(
          value: option,
          child: Text(option.name),
        ),
      );
    }
    return items;
  }
 
  onChangeDropdownItem(Option selectedOption) {
    setState(() {
      _selectedOption = selectedOption;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: new AppBar(
           backgroundColor: Color.fromRGBO(67, 232, 137, 50),
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
                      indent: 120,
                      endIndent: 120,
                  ),
                SizedBox(
                  width: 0.0,
                  height: 10.0,
                  ),
                DropdownButton(
                  dropdownColor: Colors.amber[700],
                  value: _selectedOption,
                  items: _dropdownMenuItems,
                  onChanged: onChangeDropdownItem,
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
        ),
      );
  }
}