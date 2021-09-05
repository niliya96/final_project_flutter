import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<List<ReviewFormatData>> readReviewsFromDB(
    String user_id, List<Map<String, dynamic>> q) async {
  final db = await Db.create(
      'mongodb+srv://muser:Aa123456@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
  await db.open();
  final coll = db.collection('reviews');
  var listfromdb = await coll.find(where.match('user_id', user_id)).toList();
  List<ReviewFormatData> listReviews = [];
  for (var i = 0; i < listfromdb.length; i++) {
    ReviewFormatData temp2 = ReviewFormatData();
    temp2.fromJson(listfromdb[i], q);
    listReviews.add(temp2);
  }
  return listReviews;
}
