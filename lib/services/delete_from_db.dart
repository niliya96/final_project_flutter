import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter_firebase/Utils/headers.dart';

deleteReviewFromDB(ObjectId id) async {
  final db = await Db.create(DB);
  await db.open();
  final coll = db.collection(REVIEWS);
  coll.remove(where.id(id));
}
