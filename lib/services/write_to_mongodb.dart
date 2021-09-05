import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:mongo_dart/mongo_dart.dart';

writeReviewToDB(ReviewFormatData testReviewFormatData) async {
  final db = await Db.create(
      'mongodb+srv://muser:Aa123456@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
  await db.open();
  final coll = db.collection('reviews');
  await coll.insert(testReviewFormatData.toJson());
}