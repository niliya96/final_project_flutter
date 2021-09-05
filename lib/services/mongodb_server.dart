import 'package:mongo_dart/mongo_dart.dart';
import 'package:sevr/sevr.dart';

void start() async{
  final db = await Db.create(
    'mongodb+srv://muser:mbuser@cluster0.f1hwb.mongodb.net/finalProject?retryWrites=true&w=majority');
  await db.open();
  print('Connected to database');
  final coll = db.collection('reviews');
  print(await coll.find().toList());
  var data = <Map<String, dynamic>>[];
  data.add({ 'nation': 'UK', 'pasport': '12121212', 'review': 'very good'});
  await coll.insert(data[0], writeConcern: WriteConcern.ACKNOWLEDGED);
  // create server
  const port = 8081;
  final serv = Sevr();

  // get
  serv.get('/', [
    (ServRequest req, ServResponse res) async {
      final reviews = await coll.find().toList();
      return res.status(200).json({'reviews': reviews});
    }
  ]);

  // post
  
  serv.post('/', [
    (ServRequest req, ServResponse res) async {
      await coll.save(req.body);
      return res.json(
        await coll.findOne(where.eq('passport', req.body['passport'])),
      );
    }
  ]);

  // delete
    serv.delete('/:id', [
    (ServRequest req, ServResponse res) async {
      await coll
          .remove(where.eq('_id', ObjectId.fromHexString(req.params['id'])));
      return res.status(200);
    }
  ]);

  // listen
  serv.listen(port, callback: () {
    print('lisetn on port: $port');
  });
}