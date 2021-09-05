import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/fill_a_review/InsertionFormat.dart';


 Widget buildPassport(String passport, BuildContext context,  dynamic state,  String _selectedOption) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: DARK_BLUE,
        focusColor: DARK_BLUE,
        hoverColor: DARK_BLUE,
        filled: true,
        labelText: PASSPORT_NUMBER,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        String response = passwordValidator(value, _selectedOption);
        if (response.compareTo(VALID_PASSPORT_NUM) != 0) {
          return response;
        } else {
          return null;
        }
      },
      maxLength: 13,
      onChanged: (value) => state.setState(() {
        state.passport = value;
        state.widget.passportTyped = value;
      }),
    );
  }

  Widget buildAuth(String auth_passport, String passport, BuildContext context,  dynamic state, InsertionFormat insertion_format) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: DARK_BLUE,
        focusColor: DARK_BLUE,
        hoverColor: DARK_BLUE,
        filled: true,
        labelText: AUTH_PASSPORT,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value != state.passport) {
          return NOT_SAME_PASSPORT;
        } else {
          insertion_format.passport = value;
          return null;
        }
      },
      maxLength: 13,
      onChanged: (value) => state.setState(() {
        state.auth_passport = value;
        state.widget.authTyped = value;
      }),
    );
  }

  Widget buildNation(String _selectedOption, List<DropdownMenuItem<String>> _dropdownMenuItems, Function onChangeDropdownItem, InsertionFormat insertion_format) {
    insertion_format.nation = _selectedOption;
    return DropdownButton(
      dropdownColor: LIGHT_GREEN,
      iconEnabledColor: LIGHT_GREEN,
      iconDisabledColor: LIGHT_GREEN,
      style: new TextStyle(
        color: DARK_BLUE,
        fontSize: 18.0,
      ),
      value: _selectedOption,
      items: _dropdownMenuItems,
      onChanged: onChangeDropdownItem,
    );
  }

  Widget buildName(String name, BuildContext context,  dynamic state, InsertionFormat insertion_format) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: DARK_BLUE,
        focusColor: DARK_BLUE,
        hoverColor: DARK_BLUE,
        filled: true,
        labelText: WORKER_NAME,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        insertion_format.name_of_worker = value;
      },
      maxLength: 20,
      onChanged: (value) => state.setState(() {
        name = value;
        state.widget.nameTyped = value;
      }),
    );
  }

  String passwordValidator(String text, String _selectedOption) {
    int counter = 0;
    int validChar = 0;
    if (text.length != 13) {
      return (LENGTH_NOT_VALID);
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
      if (text[i] == COMPLETE_CHAR) {
        validChar = 1;
      }
      if (validChar == 0) {
        return (CHAR_NOT_VALID);
      }
    }
    if (counter % 10 != int.tryParse(text[9])) {
      return (PASSPORT_NOT_VALID);
    }
    String Country = text.substring(10, 13);
    if (Country != PHL &&
        Country != IND &&
        Country != UZB &&
        Country != UKR &&
        Country != MDA &&
        Country != NPL &&
        Country != LKA &&
        Country != GEO) {
      return (COUNTRY_NOT_VALID);
    }
    if (_selectedOption.compareTo(INDIA) == 0 &&
        Country.compareTo(IND) != 0) {
      return (COUNTRY_NOT_COMPATIBLE);
    }
    if (_selectedOption.compareTo(PHILIPPINES) == 0 &&
        Country.compareTo(PHL) != 0) {
      return (COUNTRY_NOT_COMPATIBLE);
    }
    if (_selectedOption.compareTo(UZBEKISTAN) == 0 &&
        Country.compareTo(UZB) != 0) {
      return (COUNTRY_NOT_COMPATIBLE);
    }
    if (_selectedOption.compareTo(UKRAINE) == 0 &&
        Country.compareTo(UKR) != 0) {
      return (COUNTRY_NOT_COMPATIBLE);
    }
    if (_selectedOption.compareTo(MOLDOVA) == 0 &&
        Country.compareTo(MDA) != 0) {
      return (COUNTRY_NOT_COMPATIBLE);
    }
    if (_selectedOption.compareTo(NEPAL) == 0 &&
        Country.compareTo(NPL) != 0) {
      return (COUNTRY_NOT_COMPATIBLE);
    }
    if (_selectedOption.compareTo(GEORGIA) == 0 &&
        Country.compareTo(GEO) != 0) {
      return (COUNTRY_NOT_COMPATIBLE);
    }
    if (_selectedOption.compareTo(SRALANKA) == 0 &&
        Country.compareTo(LKA) != 0) {
      return (COUNTRY_NOT_COMPATIBLE);
    }
    return (VALID_PASSPORT_NUM);
  }