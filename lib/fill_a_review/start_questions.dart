import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/start_questions2.dart';
import 'package:flutter_firebase/home/home_screen.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component.dart';
import 'package:provider/provider.dart';

class StartQuestions extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  List<Map<String, String>> answers;
  StartQuestions(this.list, this.answers);
  int index = 0;

  @override
  StartQuestionsState createState() => StartQuestionsState();
}

class StartQuestionsState extends State<StartQuestions> {
  int _currentOptionButtomBar = 0;
  StreamSubscription<FirebaseUser> loginStateSubscription;

  @override
  void initState() {
    sortList();
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

  void sortList() {
    this.widget.list.sort((a, b) => a['number'].compareTo(b['number']));
  }

  Widget headLine() {
    return Stack(children: <Widget>[
      // image
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Container(
          width: 430.0,
          height: 210.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fill_start.jfif'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Center(
          child: Text(
            'מלא חוות דעת חדשה',
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 30,
              color: Color.fromRGBO(0, 48, 80, 50),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 400),
        child: Divider(
          color: const Color.fromRGBO(0, 48, 80, 50),
          thickness: 1,
          indent: 120,
          endIndent: 120,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 260, left: 20, right: 20),
        child: Center(
          child: Text(
            'כמה דקות מזמנך, ותוכל לסייע ביצירת שקיפות בתחום העזרה הסיעודית',
            style: TextStyle(
              fontFamily: 'Europa',
              fontSize: 20,
              color: Color.fromRGBO(0, 48, 80, 50),
              fontWeight: FontWeight.w700,
              height: 1.1666666666666667,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 460, 0, 0),
        child: Center(
          child: FlatButton(
              height: 60,
              minWidth: 70,
              color: Color.fromRGBO(0, 48, 80, 50),
              child: Text(
                "?שנתחיל",
                style: TextStyle(
                  fontFamily: 'Europa',
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
              ),
              highlightColor: Color.fromRGBO(0, 48, 80, 30),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StartQuestions2(
                        this.widget.list, this.widget.answers)));
              }),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBlocGoogle>(context);
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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(67, 232, 137, 50),
          currentIndex: _currentOptionButtomBar,
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
              _currentOptionButtomBar = index;
            });
            if (_currentOptionButtomBar == 0) {
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
                            builder: (context) =>
                                HomeScreen(this.widget.list)));
                      },
                      child: Text("חזור למסך הבית"),
                    ),
                  ],
                ),
              );
            } else if (_currentOptionButtomBar == 1) {
              //TO DO
            }
          },
        ),
        body: headLine());
    return scaffold;
  }
}
