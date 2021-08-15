import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter_firebase/services/mongodb_server.dart' as server;

void onSubmitReview(List<String> json) async {
  final db = await Db.create(
      'mongodb+srv://muser:Aa123456@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
  await db.open();
  final coll = db.collection('reviews');
  var data = <Map<String, dynamic>>[];
  int i;
  for (i = 0; i < json.length; i += 2) {
    data.add({json[i]: json[i + 1]});
  }
  await coll.insert(data[0], writeConcern: WriteConcern.ACKNOWLEDGED);
}
