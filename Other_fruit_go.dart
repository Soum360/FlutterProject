import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit/modele/Sec_Json.dart';
import 'package:fruit/otherclass.dart/azfruit.dart';
import 'package:fruit/screem_importante/Other_fruit.dart';

class MyFruitChoose extends StatelessWidget {
  int myChoise;
  MyFruitChoose({required this.myChoise});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => OtherFruit()));
          },
        ),
      ),
      body: FutureBuilder(
          future: fecData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            var post = snapshot.data as List<SecJson>;
            return Padding(
              padding: EdgeInsets.only(left: size.width / 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AzFruit(
                    title: "${post[myChoise].title}",
                    body: "${post[myChoise].body}",
                    imagepath: "images/${post[myChoise].path}",
                    text: "${post[myChoise].title}",
                  ),
                ],
              ),
            );
          }),
    );
  }

  Future<List<SecJson>> fecData() async {
    final response = await rootBundle.loadString('assets/AutreFruits.json');
    print(response);
    final post = await json.decode(response) as List<dynamic>;
    return post.map((e) => SecJson.fromJson(e)).toList();
  }
}
