import 'package:flutter_firebase/login/auth_bloc_google.dart';
import 'package:flutter_firebase/update_a_review/review_format.dart';

class DataList {
  static List<ReviewFormatData> reviewsList = [
    ReviewFormatData(
        name_of_worker: "צ'אנג",
        passport: "2134<<<5",
        last_update: "27/08/2021",
        nation: "פיליפינים",
        rating_answers: [
          ["סובלני", "3", "1"],
          ["מבצע עם המטופל פעולות מעבר לתפקידו", "4", "1"],
          ["ישר", "5", "0"],
          ["הגייני", "5", "1"],
          ["מקפיד על נטילת תרופות בזמן", "5", "0"]
        ],
        choose_answers: [
          ["חוות דעת על סמך", "תעסוקה", "1"]
        ],
        text_answers: [
          [
            "מלל חופשי",
            "העובד טיפל באבי היטב. דאג לו לכל מה שהיה צריך. מאוד מוקיר תודה וממליץ.",
            "1"
          ]
        ]),
    ReviewFormatData(
        name_of_worker: "לואי",
        passport: "7689<<<5",
        last_update: "25/08/2021",
        nation: "הודו"),
  ];
}
