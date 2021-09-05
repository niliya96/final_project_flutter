import 'package:flutter_firebase/fill_a_review/QuestionFormat.dart';
import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:intl/intl.dart'; 
 
 ReviewFormatData convert(
    List<QuestionFormat> ans,
    List<Map<String, dynamic>> questions,
    String name_of_worker,
    String passport,
    String nation,
    String user_id) {
  ReviewFormatData review = new ReviewFormatData();
  review.rating_answers = [];
  review.choose_answers = [];
  review.text_answers = [];
  for (var i = 0; i < ans.length; i++) {
    switch (ans[i].kind) {
      case "rating":
        if (ans[i].ifAnswered == true)
          review.rating_answers.add([ans[i].text, ans[i].answer, '1']);
        if (ans[i].ifAnswered == false)
          review.rating_answers.add([ans[i].text, ans[i].answer, '0']);
        break;
      case "choose":
        if (ans[i].ifAnswered == true)
          review.choose_answers.add([ans[i].text, ans[i].answer, '1']);
        if (ans[i].ifAnswered == false)
          review.choose_answers.add([ans[i].text, ans[i].answer, '0']);
        break;
      case "text":
        if (ans[i].ifAnswered == true)
          review.text_answers.add([ans[i].text, ans[i].answer, '1']);
        if (ans[i].ifAnswered == false)
          review.text_answers.add([ans[i].text, ans[i].answer, '0']);
        break;
    }
  }
  review.questions = questions;
  review.name_of_worker = name_of_worker;
  review.passport = passport;
  review.nation = nation;
  review.user_id = user_id;
  DateTime now = DateTime.now();
  review.last_update = DateFormat('dd-MM-y').format(now);
  return review;
}