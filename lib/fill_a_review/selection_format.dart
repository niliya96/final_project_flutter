import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/rating_format.dart';
 
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
              FlatButton(
                child: Text(
                "הבא", 
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
                }
                else {
                  print("end");
                }
              }
              ),
              ],
            ),
          ),
        ),
      );
  }
}