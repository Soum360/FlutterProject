// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit/listFruit.dart';
import 'package:fruit/modele/Sec_Json.dart';
import 'package:fruit/otherclass.dart/Classes/seconde_class.dart';
import 'package:fruit/otherclass.dart/azfruit.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:fruit/screem_importante/Other_fruit_go.dart';
import 'package:text_to_speech/text_to_speech.dart';

class OtherFruit extends StatefulWidget {
  const OtherFruit({Key? key}) : super(key: key);

  @override
  State<OtherFruit> createState() => _OtherFruitState();
}

class _OtherFruitState extends State<OtherFruit> {
  int j = 1;
  TextEditingController textEditingController = TextEditingController();
  bool volu = false;
  @override
  Widget build(BuildContext context) {
    String search;
    var size = MediaQuery.of(context).size;
    List<FirstFruit> FruitAll = [
      FirstFruit(fruit1: 1, fruit2: 2),
      FirstFruit(fruit1: 3, fruit2: 4),
      FirstFruit(fruit1: 5, fruit2: 6),
      FirstFruit(fruit1: 7, fruit2: 8),
      FirstFruit(fruit1: 9, fruit2: 10),
      FirstFruit(fruit1: 11, fruit2: 12),
      FirstFruit(fruit1: 13, fruit2: 14),
      FirstFruit(fruit1: 15, fruit2: 16),
      FirstFruit(fruit1: 17, fruit2: 18),
      FirstFruit(fruit1: 19, fruit2: 20),
      FirstFruit(fruit1: 21, fruit2: 22),
      FirstFruit(fruit1: 23, fruit2: 24),
      FirstFruit(fruit1: 25, fruit2: 26),
      FirstFruit(fruit1: 27, fruit2: 28),
      FirstFruit(fruit1: 29, fruit2: 30),
      FirstFruit(fruit1: 31, fruit2: 32),
      FirstFruit(fruit1: 33, fruit2: 34),
      FirstFruit(fruit1: 35, fruit2: 36),
      FirstFruit(fruit1: 37, fruit2: 38),
      FirstFruit(fruit1: 39, fruit2: 40),
      FirstFruit(fruit1: 41, fruit2: 42),
      FirstFruit(fruit1: 43, fruit2: 44),
      FirstFruit(fruit1: 45, fruit2: 46),
      FirstFruit(fruit1: 47, fruit2: 48),
      FirstFruit(fruit1: 49, fruit2: 50),
      FirstFruit(fruit1: 51, fruit2: 52),
      FirstFruit(fruit1: 53, fruit2: 54),
      FirstFruit(fruit1: 55, fruit2: 56),
      FirstFruit(fruit1: 57, fruit2: 58),
      FirstFruit(fruit1: 59, fruit2: 60),
      FirstFruit(fruit1: 61, fruit2: 62),
      FirstFruit(fruit1: 63, fruit2: 64),
      FirstFruit(fruit1: 65, fruit2: 66),
      FirstFruit(fruit1: 67, fruit2: 68),
      FirstFruit(fruit1: 69, fruit2: 70),
      FirstFruit(fruit1: 71, fruit2: 72),
      FirstFruit(fruit1: 73, fruit2: 74),
      FirstFruit(fruit1: 75, fruit2: 76),
      FirstFruit(fruit1: 77, fruit2: 78),
      FirstFruit(fruit1: 79, fruit2: 80),
      FirstFruit(fruit1: 81, fruit2: 82),
      FirstFruit(fruit1: 83, fruit2: 84),
      FirstFruit(fruit1: 85, fruit2: 86),
      FirstFruit(fruit1: 87, fruit2: 88),
      FirstFruit(fruit1: 89, fruit2: 90),
      FirstFruit(fruit1: 91, fruit2: 92),
      FirstFruit(fruit1: 93, fruit2: 94),
      FirstFruit(fruit1: 95, fruit2: 96),
      FirstFruit(fruit1: 97, fruit2: 98),
      FirstFruit(fruit1: 99, fruit2: 100),
      FirstFruit(fruit1: 101, fruit2: 102),
      FirstFruit(fruit1: 103, fruit2: 104),
      FirstFruit(fruit1: 105, fruit2: 106),
      FirstFruit(fruit1: 107, fruit2: 108),
      FirstFruit(fruit1: 109, fruit2: 110),
      FirstFruit(fruit1: 111, fruit2: 112),
      FirstFruit(fruit1: 113, fruit2: 114),
      FirstFruit(fruit1: 115, fruit2: 116),
      FirstFruit(fruit1: 117, fruit2: 118),
      FirstFruit(fruit1: 119, fruit2: 120),
      FirstFruit(fruit1: 121, fruit2: 122),
      FirstFruit(fruit1: 123, fruit2: 124),
      FirstFruit(fruit1: 125, fruit2: 126),
      FirstFruit(fruit1: 127, fruit2: 128),
      FirstFruit(fruit1: 129, fruit2: 130),
      FirstFruit(fruit1: 131, fruit2: 132),
      FirstFruit(fruit1: 133, fruit2: 134),
      FirstFruit(fruit1: 135, fruit2: 136),
      FirstFruit(fruit1: 137, fruit2: 139),
      FirstFruit(fruit1: 139, fruit2: 140),
      FirstFruit(fruit1: 141, fruit2: 142),
      FirstFruit(fruit1: 143, fruit2: 144),
      FirstFruit(fruit1: 145, fruit2: 146),
      FirstFruit(fruit1: 147, fruit2: 0),
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(164, 214, 209, 209),
      //backgroundColor: Colors.yellow,
      body: FutureBuilder(
          future: fecData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            var post = snapshot.data as List<SecJson>;
            return ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "My ",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              //color: Colors.red
                            ),
                          ),
                          const Text(
                            "Fru",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          const Text(
                            "its ",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow),
                          ),
                          const Text(
                            "AZ",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(155, 191, 192, 201),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Autocomplete<String>(
                                optionsBuilder: (TextEditingValue value) {
                                  if (value.text.isEmpty) {
                                    return [];
                                  }
                                  return mesFruitAz.where((suggestion) =>
                                      suggestion
                                          .toLowerCase()
                                          .contains(value.text.toLowerCase()));
                                },
                                onSelected: (value) {
                                  search = value;
                                  print(search);
                                  for (int i = 1; i <= 147; i++) {
                                    if (mesFruitAz[i] == value) {
                                      j = i;
                                    }
                                  }
                                  ;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyFruitChoose(myChoise: j)));
                                },
                              ),

                              /* TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: "Search Fruit",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                            ), */
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Fruits A-Z",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: FruitAll.map((e) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              AzFruit(
                                  title: "${post[e.fruit1].title}",
                                  body: "${post[e.fruit1].body}",
                                  imagepath: "images/${post[e.fruit1].path}",
                                  text: "${post[e.fruit1].title}"),
                              AzFruit(
                                title: "${post[e.fruit2].title}",
                                body: "${post[e.fruit2].body}",
                                imagepath: "images/${post[e.fruit2].path}",
                                text: "${post[e.fruit2].title}",
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ],
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
