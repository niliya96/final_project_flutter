import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/home/home_screen.dart';

BottomNavigationBar createButtomBarFill(
    BuildContext context, int _currentBarOption, dynamic state) {
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
        icon: Icon(Icons.save, color: DARK_BLUE),
        title: Text(
          SAVE,
          style: TextStyle(color: DARK_BLUE),
        ),
        backgroundColor: LIGHT_GREEN,
      ),
    ],
    onTap: (index) async {
      state.setState(() {
        _currentBarOption = index;
      });
      switch (_currentBarOption) {
        case 0:
          {
            await showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Text(
                  RETURN_HOME,
                  textAlign: TextAlign.right,
                ),
                content: Text(ARE_YOU_SURE, textAlign: TextAlign.right),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen(state.widget.questions)));
                    },
                    child: Text(RETURN_HOME),
                  ),
                ],
              ),
            );
            break;
          }
        case 1:
          {
            // TO DO
          }
      }
    },
  );
}
