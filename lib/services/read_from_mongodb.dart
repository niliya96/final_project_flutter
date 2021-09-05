import 'package:mongo_dart/mongo_dart.dart';
import 'package:sevr/sevr.dart';
import 'package:flutter_firebase/Utils/headers.dart';

class MongoReader {
  
  List<Map<String, String>> list;

  Future<List<Map<String, dynamic>>> readQuestions() async {
    final db = await Db.create(
        DB);
    await db.open();
    final coll = db.collection(QUESTIONS);
    var response = await coll.find().toList();
    return response;
  }

    Future<List<Map<String, dynamic>>> searchForWorker(String name, String passport) async {
      final db = await Db.create(
        DB);
      await db.open();
      final coll = db.collection(WORKERS);
      var response = await coll.find({PASSPORT: passport, NAME: name}).toList();
      if (response.isEmpty) {
        return null;
      }
      // null or not
      return response;
    }

}
