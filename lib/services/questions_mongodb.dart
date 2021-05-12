import 'package:mongo_dart/mongo_dart.dart';
import 'package:sevr/sevr.dart';

void start() async {
  final db = await Db.create(
      'mongodb+srv://muser:Aa123456@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
  await db.open();
  final coll = db.collection('questions');
  //var data = <Map<String, dynamic>>[];
  //await coll.insert(data[0], writeConcern: WriteConcern.ACKNOWLEDGED);
  var response = await coll.find().toList();
  print(response);
}
