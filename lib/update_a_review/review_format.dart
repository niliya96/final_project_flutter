import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/login/main_component_login.dart';
import 'package:flutter_firebase/update_a_review/main_component_update.dart';

class ReviewFormat extends StatefulWidget {
  AuthBlocGoogle authBlock;
  String name;
   MainComponentUpdateState state;
  ReviewFormat(this.authBlock, this.name, this.state);
  @override
  ReviewFormatState createState() => ReviewFormatState();
}

class ReviewFormatState extends State<ReviewFormat> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return createReviewFormat(this.widget.authBlock, this.widget.name, this.widget.state);
  }
}

Widget createReviewFormat(AuthBlocGoogle authBlock, String name, MainComponentUpdateState state) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Container(
      color: LIGHT_GREEN,
      child: Column(children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: DARK_BLUE,
          ),
        ),
        /**
         * row 1
         */
        Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    DATE,
                    style: TextStyle(
                      fontFamily: EUROPA_FONT,
                      fontSize: 13,
                      color: DARK_BLUE,
                      fontWeight: FontWeight.w700,
                      height: 1.1666666666666667,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(),
                ),
              ],
            )),
        /**
         * row 2
         */
        Expanded(
          flex: 2,
          child: Row(children: <Widget>[
            Expanded(
              flex: 8,
              child: SizedBox(),
            ),
            Expanded(
              flex: 8,
              child: Text(
                NAME_WORKER + name,
                style: TextStyle(
                  fontFamily: EUROPA_FONT,
                  fontSize: 18,
                  color: DARK_BLUE,
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ]),
          /**
         * row 3
         */
        ),
        Expanded(
          flex: 2,
          child: Row(children: <Widget>[
            Expanded(
              flex: 8,
              child: SizedBox(),
            ),
            Expanded(
              flex: 8,
              child: Text(
                PASSPORT_NUMBER_WORKER,
                style: TextStyle(
                  fontFamily: EUROPA_FONT,
                  fontSize: 18,
                  color: DARK_BLUE,
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ]),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        /**
         * row 4 buttons
         */
        createReviewButtons(state),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
      ]),
    ),
  );
}

Widget createReviewButtons( MainComponentUpdateState state) {
  return Expanded(
    flex: 1,
    child: Row(
      children: [
        Expanded(
          flex: 5,
          child: SizedBox(),
        ),
        Expanded(
          flex: 10,
          child: FlatButton(
              height: 60,
              minWidth: 70,
              color: DARK_BLUE,
              child: Icon(Icons.delete),
              highlightColor: DARK_BLUE2,
              onPressed: () {
                state.deleteElement(Widget);
              }),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Expanded(
          flex: 10,
          child: FlatButton(
              height: 60,
              minWidth: 70,
              color: DARK_BLUE,
              child: Icon(Icons.edit),
              highlightColor: DARK_BLUE2,
              onPressed: () {
                // TODO
              }),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Expanded(
          flex: 10,
          child: FlatButton(
              height: 60,
              minWidth: 70,
              color: DARK_BLUE,
              child: Icon(Icons.read_more),
              highlightColor: DARK_BLUE2,
              onPressed: () {
                // TODO
              }),
        ),
        Expanded(
          flex: 25,
          child: SizedBox(),
        ),
      ],
    ),
  );
}

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
