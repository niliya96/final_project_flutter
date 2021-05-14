import 'package:mongo_dart/mongo_dart.dart';
import 'package:sevr/sevr.dart';

class Reader {
  List<Map<String, String>> list;

  Future<List<Map<String, dynamic>>> read() async {
    final db = await Db.create(
        'mongodb+srv://muser:Aa123456@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
    await db.open();
    final coll = db.collection('questions');
    var response = await coll.find().toList();
    return response;
  }

}
