import 'dart:collection';
import 'package:flutter_firebase/fill_a_review/details_fill.dart';
import 'package:flutter_firebase/fill_a_review/selection_format.dart';
import 'package:flutter_firebase/fill_a_review/text_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'complete_fill.dart';
import 'rating_format.dart';

void saveAnswer(String answer, List<Map<String, Map<dynamic, bool>>> answers,
    int number, List<Map<String, dynamic>> questions) {
  questions.forEach((q) {
    if (q[NUMBER].toString() == number.toString()) {
      answers.forEach((a) {
        var key = number.toString();
        if (a.containsKey(key)) {
          a.update(key, (value) => {answer: true});
        }
      });
    }
  });
}

Widget createRoute(
    BuildContext context,
    dynamic state,
    int _rating,
    String answer,
    List<Map<String, Map<dynamic, bool>>> answers,
    List<Map<String, dynamic>> questions) {
  return Center(
    child: Row(
      children: [
        /**
           * start of next button
           */
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
              height: 60,
              minWidth: 110,
              color: DARK_BLUE,
              child: Text(
                NEXT,
                style: TextStyle(
                  fontFamily: EUROPA_FONT,
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
              ),
              onPressed: () {
                print("nili");
                /**
                   * update list of answers
                   */
                saveAnswer(
                    answer,
                    answers,
                    state.widget.questions[state.widget.current_question]
                        [NUMBER],
                    questions);
                state.widget.current_question++;
                if (state.widget.current_question <
                    state.widget.questions.length) {
                  // rating bar case
                  if (state
                          .widget.questions[state.widget.current_question][KIND]
                          .toString() ==
                      RATING) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RatingFormat((rating) {
                        state.setState(() {
                          _rating = rating;
                        });
                      }, state.widget.questions, state.widget.current_question,
                          state.widget.answers),
                    ));
                  }
                  // choose case
                  else if (state
                          .widget.questions[state.widget.current_question][KIND]
                          .toString() ==
                      CHOOSE) {
                    List<dynamic> options = state.widget
                        .questions[state.widget.current_question][OPTIONS];
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => SelectionFormat(
                              state.widget.current_question,
                              state.widget.questions,
                              options,
                              state.widget.answers)),
                    );
                  }
                  // text format
                  else if (state
                          .widget.questions[state.widget.current_question][KIND]
                          .toString() ==
                      TEXT) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TextFormat(
                          state.widget.current_question,
                          state.widget.questions,
                          state.widget.answers),
                    ));
                  }
                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CompleteFillReview(
                          state.widget.questions, state.widget.answers)));
                }
              }),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
              height: 60,
              minWidth: 110,
              color: DARK_BLUE,
              child: Text(
                BACK,
                style: TextStyle(
                  fontFamily: EUROPA_FONT,
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.1666666666666667,
                ),
              ),
              onPressed: () {
                /**
                   * update list of answers
                   */
                saveAnswer(
                    answer,
                    answers,
                    state.widget.questions[state.widget.current_question]
                        [NUMBER],
                    questions);
                // not first format
                if (state.widget.current_question > 0) {
                  state.widget.current_question--;
                  // rating bar case
                  if (state
                          .widget.questions[state.widget.current_question][KIND]
                          .toString() ==
                      RATING) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RatingFormat((rating) {
                        state.setState(() {
                          _rating = rating;
                        });
                      }, state.widget.questions, state.widget.current_question,
                          state.widget.answers),
                    ));
                  }
                  // choose case
                  else if (state
                          .widget.questions[state.widget.current_question][KIND]
                          .toString() ==
                      CHOOSE) {
                    List<dynamic> options = state.widget
                        .questions[state.widget.current_question][OPTIONS];
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => SelectionFormat(
                              state.widget.current_question,
                              state.widget.questions,
                              options,
                              state.widget.answers)),
                    );
                  }
                  // text format
                  else if (state
                          .widget.questions[state.widget.current_question][KIND]
                          .toString() ==
                      TEXT) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => TextFormat(
                              state.widget.current_question,
                              state.widget.questions,
                              state.widget.answers)),
                    );
                  }
                }
                // first format
                else {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsFill(
                          state.widget.questions, state.widget.answers)));
                }
              }),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
      ],
    ),
  );
}
