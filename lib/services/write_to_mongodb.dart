import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter_firebase/Utils/headers.dart';

writeReviewToDB(ReviewFormatData testReviewFormatData) async {
  final db = await Db.create(DB);
  await db.open();
  final coll = db.collection(REVIEWS);
  await coll.insert(testReviewFormatData.toJson());
}
