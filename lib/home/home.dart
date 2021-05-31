import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/main_component.dart';
import 'package:flutter_firebase/search/main_component.dart';

import 'home_UI.dart';

class HomeScreen extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  HomeScreen(this.list);
  int index = 0;

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> { 
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
      var scaffold = Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(          
          backgroundColor: Color.fromRGBO(67, 232, 137, 50)
        ),
        body: createHeadline(),
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
              icon: Icon(Icons.search,
              color: Color.fromRGBO(0, 48, 80, 50)),
              title: Text(
                "חיפוש",
                style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
              ),
              backgroundColor: Color.fromRGBO(67, 232, 137, 50),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add,
              color: Color.fromRGBO(0, 48, 80, 50)),
              title: Text(
                'הוספה',
                style: TextStyle(color: Color.fromRGBO(0, 48, 80, 50)),
              ),
              backgroundColor: Color.fromRGBO(67, 232, 137, 50),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit,
              color: Color.fromRGBO(0, 48, 80, 50)),
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
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen(this.widget.list)));
            }
            else if (_currentIndex == 1) {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MainComponentSearch(this.widget.list)));
            }
            else if (_currentIndex == 2) {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MainComponentFill(this.widget.list)));
            }
          },
        ),
      );
      return scaffold;
  }

}
