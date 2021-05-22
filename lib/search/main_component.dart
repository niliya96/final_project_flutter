import 'package:flutter/material.dart';
import 'button_search.dart';
import 'headline.dart';
import 'input_formats.dart';

class MainComponentSearch extends StatefulWidget {
  String nameTyped = '';
  String passportTyped = '';
  final List<Map<String, dynamic>> list;

  MainComponentSearch(this.list);

  @override
  MainComponentSearchState createState() => MainComponentSearchState();
}

class MainComponentSearchState extends State<MainComponentSearch> {
  String name = '';
  String passport = '';

  @override
  Widget build(BuildContext context) {
      InputFormatsSearch input= new InputFormatsSearch("", "");
      // main Scaffold 
      return Scaffold(
      backgroundColor: const Color(0xff353549),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body:  Stack(
        children: <Widget>[
          HeadLineSearch(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,400,20,0),
            child: Container(child: Column(
              children: [
                buildName(),
                buildPassport(),
              ],
            )),
          ),
          ButtonSearch(this.widget.nameTyped, this.widget.passportTyped, this.widget.list)
        ]
      )
    );
  }
  
  Widget buildName() { 
     return TextFormField(
        decoration: InputDecoration(
          labelText: 'שם מלא',
          border: OutlineInputBorder(),
            errorBorder:
               OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
           focusedErrorBorder:
               OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
           errorStyle: TextStyle(color: Colors.purple),
        ),
        validator: (value) {
          if (value.length < 0) {
            return '';
          } else {
            return null;
          }
        },
        maxLength: 30,
        onChanged: (value) => setState(() {
            name = value;
            this.widget.nameTyped = value;
          }
        ),
      );
    }

    Widget buildPassport() { 
     return TextFormField(
        decoration: InputDecoration(
          labelText: 'מספר דרכון',
          border: OutlineInputBorder(
          ),
          errorBorder:
               OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          focusedErrorBorder:
               OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          errorStyle: TextStyle(color: Colors.purple),
        ),
        validator: (value) {
          if (value.length < 9) {
            return 'מספר דרכון חייב להכיל בדיוק 9 ספרות';
          } else {
            return null;
          }
        },
        maxLength: 9,
         onChanged: (value) => setState(() {
            passport = value;
            this.widget.passportTyped = value;
          }
        ),
      );
    }
}

