import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/main_component.dart';
import 'package:flutter_firebase/home/home_screen.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component.dart';
import 'package:provider/provider.dart';
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

  @override
  Widget build(BuildContext context) {
    //InputFormatsSearch input= new InputFormatsSearch("", "");
    int _currentIndex = 1;
    final authBloc = Provider.of<AuthBlocGoogle>(context);
    // main Scaffold
    var scaffold = Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
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
      body: Stack(children: <Widget>[
        HeadLineSearch(),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 400, 20, 0),
          child: Container(
              child: Column(
            children: [buildPassport(), auth()],
          )),
        ),
        ButtonSearch(
            this.widget.nameTyped, this.widget.passportTyped, this.widget.list)
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(67, 232, 137, 50),
        currentIndex: _currentIndex,
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
            icon: Icon(Icons.search, color: Color.fromRGBO(0, 48, 80, 50)),
            title: Text(
              "חיפוש",
              style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
            ),
            backgroundColor: Color.fromRGBO(67, 232, 137, 50),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Color.fromRGBO(0, 48, 80, 50)),
            title: Text(
              'הוספה',
              style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
            ),
            backgroundColor: Color.fromRGBO(67, 232, 137, 50),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit, color: Color.fromRGBO(0, 48, 80, 50)),
            title: Text(
              'עדכון',
              style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
            ),
            backgroundColor: Color.fromRGBO(67, 232, 137, 50),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (_currentIndex == 0) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(this.widget.list)));
          } else if (_currentIndex == 1) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MainComponentSearch(this.widget.list)));
          } else if (_currentIndex == 2) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MainComponentFill(this.widget.list)));
          }
        },
      ),
    );
    return scaffold;
  }

  Widget buildPassport() {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(0, 48, 80, 50),
        focusColor: Color.fromRGBO(0, 48, 80, 50),
        hoverColor: Color.fromRGBO(0, 48, 80, 50),
        filled: true,
        labelText: 'מספר דרכון',
        border: OutlineInputBorder(),
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
      }),
    );
  }

  Widget auth() {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(0, 48, 80, 50),
        focusColor: Color.fromRGBO(0, 48, 80, 50),
        hoverColor: Color.fromRGBO(0, 48, 80, 50),
        filled: true,
        labelText: 'אימות',
        border: OutlineInputBorder(),
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
      }),
    );
  }
}
