import 'package:mongo_dart/mongo_dart.dart';

List<String> parser(String data) {
  List<String> lst = data.split("#");
  return lst;

}

void onSubmitReview(List<String> json) async{
  final db = await Db.create(
    'mongodb+srv://muser:mbuser@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
  await db.open();
  final coll = db.collection('reviews');
  var data = <Map<String, dynamic>>[];
  data.add({ json[0]: json[1], json[2]: json[3], json[4]: json[5]});
  await coll.insert(data[0], writeConcern: WriteConcern.ACKNOWLEDGED);
}
