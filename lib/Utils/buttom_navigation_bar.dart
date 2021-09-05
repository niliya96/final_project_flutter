
import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/main_component_fill.dart';
import 'package:flutter_firebase/home/home_screen.dart';
import 'package:flutter_firebase/search/main_component.dart';
import 'package:flutter_firebase/update_a_review/list_view_component.dart';
import 'package:flutter_firebase/update_a_review/main_component_update.dart';
import 'headers.dart';

BottomNavigationBar createButtomBar(
    BuildContext context, int _currentBarOption, dynamic state, String uid) {
  return BottomNavigationBar(
    backgroundColor: LIGHT_GREEN,
    currentIndex: _currentBarOption,
    iconSize: 30,
    selectedFontSize: 15,
    unselectedFontSize: 10,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: DARK_BLUE),
        title: Text(
          HOME,
          style: TextStyle(color: DARK_BLUE),
        ),
        backgroundColor: LIGHT_GREEN,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search, color: DARK_BLUE),
        title: Text(
          SEARCH,
          style: TextStyle(color: DARK_BLUE),
        ),
        backgroundColor: LIGHT_GREEN,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add, color: DARK_BLUE),
        title: Text(
          ADD_REVIEW,
          style: TextStyle(color: DARK_BLUE),
        ),
        backgroundColor: LIGHT_GREEN,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.edit, color: DARK_BLUE),
        title: Text(
          UPDATE_REVIEW,
          style: TextStyle(color: DARK_BLUE),
        ),
        backgroundColor: LIGHT_GREEN,
      ),
    ],
    onTap: (index) {
      state.setState(() {
        _currentBarOption = index;
      });
      Widget option;
      switch (_currentBarOption) {
        case 0:
          option = HomeScreen(state.widget.questions);
          break;
        case 1:
          option = MainComponentSearch(state.widget.questions, uid);
          break;
        case 2:
          option = MainComponentFill(state.widget.questions, uid);
          break;
        case 3:
          option = MainComponentUpdate(state.widget.questions, uid);
          break;
      }
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => option));
    },
  );
}
