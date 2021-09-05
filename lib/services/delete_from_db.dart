import 'package:mongo_dart/mongo_dart.dart';

deleteReviewFromDB(ObjectId id) async {
  final db = await Db.create(
      'mongodb+srv://muser:Aa123456@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
  await db.open();
  final coll = db.collection('reviews');
  coll.remove(where.id(id));
}