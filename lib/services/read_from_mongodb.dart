import 'package:mongo_dart/mongo_dart.dart';
import 'package:sevr/sevr.dart';

class MongoReader {
  
  List<Map<String, String>> list;

  Future<List<Map<String, dynamic>>> readQuestions() async {
    final db = await Db.create(
        'mongodb+srv://muser:Aa123456@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
    await db.open();
    final coll = db.collection('questions');
    var response = await coll.find().toList();
    return response;
  }

    Future<List<Map<String, dynamic>>> searchForWorker(String name, String passport) async {
      final db = await Db.create(
        'mongodb+srv://muser:Aa123456@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
      await db.open();
      final coll = db.collection('workers');
      var response = await coll.find({"passport": passport, "name": name}).toList();
      if (response.isEmpty) {
        return null;
      }
      // null or not
      return response;
    }

}