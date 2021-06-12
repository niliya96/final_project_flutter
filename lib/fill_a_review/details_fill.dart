import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/fill_a_review/rating_format.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/fill_a_review/text_format.dart';
import 'package:flutter_firebase/home/home_screen.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component.dart';
import 'package:provider/provider.dart';

class DetailsFill extends StatefulWidget {
  String authTyped = '';
  String passportTyped = '';
  String nameTyped = '';
  String nationTyped = '';
  final List<Map<String, dynamic>> list;
  List<Map<String, String>> answers;
  DetailsFill(this.list, this.answers);
  int index = 0;

  @override
  DetailsFillState createState() => DetailsFillState();
}

class DetailsFillState extends State<DetailsFill> {
  StreamSubscription<FirebaseUser> loginStateSubscription;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String validate() {
    if (formkey.currentState.validate()) {
      return "validate";
    } else {
      return "not validate";
    }
  }

  @override
  void initState() {
    List<String> _options = [
      "הודו",
      "פיליפינים",
      "אוזבקיסטן",
      "אוקריינה",
      "מולדובה",
      "נפאל",
      "גיאורגיה",
      "סרילנקה"
    ];
    _dropdownMenuItems = buildDropdownMenuItems(_options);
    _selectedOption = _dropdownMenuItems[0].value;
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

  List<DropdownMenuItem<String>> _dropdownMenuItems;
  String _selectedOption;
  List<DropdownMenuItem<String>> buildDropdownMenuItems(List options) {
    List<DropdownMenuItem<String>> items = List();
    for (String option in options) {
      items.add(
        DropdownMenuItem(
          value: option,
          child: Text(option),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(String selectedOption) {
    setState(() {
      _selectedOption = selectedOption;
    });
  }

  int _currentOptionButtomBar = 0;
  String passport = '';
  String auth_passport = '';
  String nation = '';
  String name = '';
  int _rating;
  bool is_correct = false;
  String passport_response = "";

  Widget headLine() {
    return Stack(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'אנא מלא את הפרטים הבאים',
              style: TextStyle(
                fontFamily: 'Europa',
                fontSize: 25,
                color: Color.fromRGBO(0, 48, 80, 50),
                fontWeight: FontWeight.w700,
                height: 1.1666666666666667,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Divider(
          color: const Color.fromRGBO(0, 48, 80, 50),
          thickness: 1,
          indent: 40,
          endIndent: 40,
        ),
      ),
    ]);
  }

  Widget createBody() {
    return Stack(children: <Widget>[
      headLine(),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
        child: Container(
          width: 430.0,
          height: 130.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fill_details.jfif'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 240, 30, 0),
        child: Container(
            child: Column(
          children: [
            Form(
              key: formkey,
              child: Column(
                children: [
                  buildPassport(),
                  buildAuth(),
                  buildName(),
                ],
              ),
            ),
            Row(
              children: [
                buildNation(),
                SizedBox(width: 130),
                Text(
                  'מדינת המוצא',
                  style: TextStyle(
                    fontFamily: 'Europa',
                    fontSize: 18,
                    color: Color.fromRGBO(0, 48, 80, 50),
                    fontWeight: FontWeight.w700,
                    height: 1.1666666666666667,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        )),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 510, 0, 0),
        child: Center(
          child: FlatButton(
              height: 60,
              minWidth: 70,
              color: Color.fromRGBO(0, 48, 80, 50),
              child: Text(
                "הבא",
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
                String status = validate();
                if (status.compareTo("validate") == 0) {
                  if (this.widget.list[0]['kind'].toString() == 'rating') {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => RatingFormat((rating) {
                                setState(() {
                                  _rating = rating;
                                });
                              }, this.widget.list, this.widget.index,
                                  this.widget.answers)),
                    );
                  } else if (this.widget.list[0]['kind'].toString() ==
                      'choose') {
                    List<dynamic> options = this.widget.list[0]['options'];
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SelectionFormat(this.widget.index,
                            this.widget.list, options, this.widget.answers)));
                  } else if (this.widget.list[0]['kind'].toString() == 'text') {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TextFormat(this.widget.index,
                            this.widget.list, this.widget.answers)));
                  }
                }
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
        body: createBody());
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
        String response = passwordValidator(value);
        if (response.compareTo("מספר הדרכון חוקי") != 0) {
          return response;
        } else {
          return null;
        }
      },
      maxLength: 13,
      onChanged: (value) => setState(() {
        passport = value;
        this.widget.passportTyped = value;
      }),
    );
  }

  Widget buildAuth() {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(0, 48, 80, 50),
        focusColor: Color.fromRGBO(0, 48, 80, 50),
        hoverColor: Color.fromRGBO(0, 48, 80, 50),
        filled: true,
        labelText: 'אימות מספר דרכון',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value != passport) {
          return 'מספר דרכון אינו זהה';
        } else {
          return null;
        }
      },
      maxLength: 13,
      onChanged: (value) => setState(() {
        auth_passport = value;
        this.widget.authTyped = value;
      }),
    );
  }

  Widget buildNation() {
    return DropdownButton(
      dropdownColor: Color.fromRGBO(67, 232, 137, 50),
      iconEnabledColor: Color.fromRGBO(67, 232, 137, 50),
      iconDisabledColor: Color.fromRGBO(67, 232, 137, 50),
      style: new TextStyle(
        color: Color.fromRGBO(0, 48, 80, 50),
        fontSize: 18.0,
      ),
      value: _selectedOption,
      items: _dropdownMenuItems,
      onChanged: onChangeDropdownItem,
    );
  }

  Widget buildName() {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(0, 48, 80, 50),
        focusColor: Color.fromRGBO(0, 48, 80, 50),
        hoverColor: Color.fromRGBO(0, 48, 80, 50),
        filled: true,
        labelText: 'שם העובד',
        border: OutlineInputBorder(),
      ),
      validator: (value) {},
      maxLength: 20,
      onChanged: (value) => setState(() {
        name = value;
        this.widget.nameTyped = value;
      }),
    );
  }

  String passwordValidator(String text) {
    int counter = 0;
    int validChar = 0;
    if (text.length != 13) {
      return ("האורך אינו חוקי, נסה שנית");
    }
    for (int i = 0; i < 9; i++) {
      validChar = 0;
      if (double.tryParse(text[i]) != null) {
        validChar = 1;
        if (i % 3 == 0) {
          counter = counter + (int.tryParse(text[i])) * 7;
        }
        if (i % 3 == 1) {
          counter = counter + (int.tryParse(text[i])) * 3;
        }
        if (i % 3 == 2) {
          counter = counter + (int.tryParse(text[i])) * 1;
        }
      }
      if (text.codeUnitAt(i) >= 65 && text.codeUnitAt(i) <= 90) {
        validChar = 1;
        if (i % 3 == 0) {
          counter = counter + (text.codeUnitAt(i) - 55) * 7;
        }
        if (i % 3 == 1) {
          counter = counter + (text.codeUnitAt(i) - 55) * 3;
        }
        if (i % 3 == 2) {
          counter = counter + (text.codeUnitAt(i) - 55) * 1;
        }
      }
      if (text[i] == '<') {
        validChar = 1;
      }
      if (validChar == 0) {
        return ("ישנו תו שאינו חוקי, נסה שנית");
      }
    }
    if (counter % 10 != int.tryParse(text[9])) {
      return ("מספר הדרכון אינו חוקי, נסה שנית");
    }
    String Country = text.substring(10, 13);
    if (Country != "PHL" &&
        Country != "IND" &&
        Country != "UZB" &&
        Country != "UKR" &&
        Country != "MDA" &&
        Country != "NPL" &&
        Country != "LKA" &&
        Country != "GEO") {
      return ("המדינה אינה חוקית, נסה שנית");
    }
    if (_selectedOption.compareTo("הודו") == 0 &&
        Country.compareTo("IND") != 0) {
      return ("המדינה שבחרת לא תואמת את מספר הדרכון");
    }
    if (_selectedOption.compareTo("פיליפינים") == 0 &&
        Country.compareTo("PHL") != 0) {
      return ("המדינה שבחרת לא תואמת את מספר הדרכון");
    }
    if (_selectedOption.compareTo("אוזבקיסטן") == 0 &&
        Country.compareTo("UZB") != 0) {
      return ("המדינה שבחרת לא תואמת את מספר הדרכון");
    }
    if (_selectedOption.compareTo("אוקריינה") == 0 &&
        Country.compareTo("UKR") != 0) {
      return ("המדינה שבחרת לא תואמת את מספר הדרכון");
    }
    if (_selectedOption.compareTo("מולדובה") == 0 &&
        Country.compareTo("MDA") != 0) {
      return ("המדינה שבחרת לא תואמת את מספר הדרכון");
    }
    if (_selectedOption.compareTo("נפאל") == 0 &&
        Country.compareTo("NPL") != 0) {
      return ("המדינה שבחרת לא תואמת את מספר הדרכון");
    }
    if (_selectedOption.compareTo("גיאורגיה") == 0 &&
        Country.compareTo("GEO") != 0) {
      return ("המדינה שבחרת לא תואמת את מספר הדרכון");
    }
    if (_selectedOption.compareTo("סרילנקה") == 0 &&
        Country.compareTo("LKA") != 0) {
      return ("המדינה שבחרת לא תואמת את מספר הדרכון");
    }
    return ("מספר הדרכון חוקי");
  }
}