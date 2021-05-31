/**import 'package:flutter/material.dart';


class InputFormatsSearch extends StatefulWidget {
  String nameTyped = '';
  String passportTyped = '';

  InputFormatsSearch(this.nameTyped, this.passportTyped);

  @override
  InputFormatsSearchState createState() => InputFormatsSearchState();
}

class InputFormatsSearchState extends State<InputFormatsSearch> {
  String name = '';
  String passport = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,240,20,0),
      child: Stack(
          children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //buildName(),
                const SizedBox(height: 15),
                buildPassport(),
              ]
            )
          )
        ]
      ),
    );
  }

    Widget buildName() { 
     return TextFormField(
        decoration: InputDecoration(
          labelText: 'שם מלא',
          border: OutlineInputBorder(),
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
            print(this.widget.nameTyped);
          }
        ),
      );
    }

    Widget buildPassport() { 
     return TextFormField(
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(0, 48, 80, 50),
          focusColor: Color.fromRGBO(0, 48, 80, 50),
          hoverColor: Color.fromRGBO(0, 48, 80, 50),
          labelText: 'מספר דרכון',
          border: OutlineInputBorder(
          ),
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
**/