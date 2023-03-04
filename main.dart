import 'package:flutter/material.dart';
import 'package:upchat/Screem%20/HomeScreem1.dart';

import 'Home.dart';
import 'flutterbuzz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const Home(),
      //home: MyCustomUI(),
      home: HomeScreem1(),
    );
  }
}
