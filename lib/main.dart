import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase/blocs/auth_bloc_facebook.dart';
import 'package:flutter_firebase/blocs/auth_bloc_google.dart';
import 'package:flutter_firebase/search/main_component.dart';
import 'package:flutter_firebase/services/read_from_mongodb.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/services/read_from_mongodb.dart' as server;
import 'fill_a_review/main_component.dart';
import 'fill_a_review/rating_format.dart';
import 'login/main_component.dart';

void main() {
  Reader reader = new Reader();
  reader.read().then((value) => {
    runApp(MyApp(value))
  });
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> list;
  MyApp(this.list);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => AuthBlocFacebook()),
        Provider(create: (context) => AuthBlocGoogle())
      ],
      child: MaterialApp(
        title: 'Project',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: MainComponentSearch(this.list),
      ),
    );
  }
}
