import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit/listFruit.dart';
import 'package:fruit/modele/New_Json.dart';
import 'package:fruit/otherclass.dart/Classes/seconde_class.dart';
import 'package:fruit/otherclass.dart/_fruit.dart';
import 'package:fruit/screem_importante/important/FruitComponent.dart';

class OurFruits extends StatelessWidget {
  const OurFruits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int j = 1;
    String search;
    List<SecondeFruit> FruitOther = [
      SecondeFruit(fruit1: 1),
      SecondeFruit(fruit1: 2),
      SecondeFruit(fruit1: 3),
      SecondeFruit(fruit1: 4),
      SecondeFruit(fruit1: 5),
      SecondeFruit(fruit1: 6),
      SecondeFruit(fruit1: 7),
      SecondeFruit(fruit1: 8),
      SecondeFruit(fruit1: 9),
      SecondeFruit(fruit1: 10),
      SecondeFruit(fruit1: 11),
      SecondeFruit(fruit1: 12),
      SecondeFruit(fruit1: 13),
      SecondeFruit(fruit1: 14),
      SecondeFruit(fruit1: 15),
      SecondeFruit(fruit1: 16),
      SecondeFruit(fruit1: 17),
      SecondeFruit(fruit1: 18),
      SecondeFruit(fruit1: 19),
      SecondeFruit(fruit1: 20),
      SecondeFruit(fruit1: 21),
      SecondeFruit(fruit1: 22),
      SecondeFruit(fruit1: 23),
      SecondeFruit(fruit1: 24),
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(164, 214, 209, 209),
      body: FutureBuilder(
          future: fecData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            var post = snapshot.data as List<NewJson>;
            return Container(
              /* decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(150, 131, 255, 135),
              Colors.white60,
              Color.fromARGB(174, 245, 232, 117),
            ])), */
              child: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "My ",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                //color: Colors.red
                              ),
                            ),
                            Text(
                              "Fru",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                            Text(
                              "its",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow),
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
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(155, 191, 192, 201),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 0),
                                  child: Autocomplete<String>(
                                    optionsBuilder: (TextEditingValue value) {
                                      if (value.text.isEmpty) {
                                        return [];
                                      }
                                      return mesFruitAll.where((suggestion) =>
                                          suggestion.toLowerCase().contains(
                                              value.text.toLowerCase()));
                                    },
                                    onSelected: (value) {
                                      search = value;
                                      print(search);
                                      for (int i = 1; i <= 24; i++) {
                                        if (mesFruitAll[i] == value) {
                                          j = i;
                                        }
                                      }
                                      ;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FruitComponent(id: j)));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 46, 46, 46),
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(150, 131, 255, 135),
                              Colors.white60,
                              Color.fromARGB(174, 245, 232, 117),
                            ]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                          ),
                          child: Row(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Container(
                                height: 120,
                                width: 160,
                                decoration: BoxDecoration(
                                    //border: Border.all(color: Colors.black),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/AllFruits.png"))),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Les Fruits Les Plus Fréquents",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Admirer Les Fruits",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 15),
                                )
                              ],
                            )
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "All Fruits",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                  /* gradient: LinearGradient(colors: [
                                    Color.fromARGB(255, 240, 139, 139),
                                    Colors.black45,
                                    //Color.fromARGB(173, 60, 255, 0),
                                  ]), */
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 46, 46, 46),
                                      offset: const Offset(
                                        5.0,
                                        5.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: BackButton(
                                  onPressed: () {
                                    Navigator.pop(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OurFruits()));
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      /* Column(
                        children: FruitOther.map((e) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FruitComponent(id: e.fruit1)));
                                  },
                                  child: Fruites(
                                      imagepath:
                                          "images/${post[e.fruit1].path}",
                                      imagename: "${post[e.fruit1].title}"),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FruitComponent(id: e.fruit1)));
                                  },
                                  child: Fruites(
                                      imagepath:
                                          "images/${post[e.fruit1].path}",
                                      imagename: "${post[e.fruit1].title}"),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ), */
                      Container(
                        height: size.height,
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: FruitOther.map((e) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FruitComponent(
                                                      id: e.fruit1)));
                                    },
                                    child: Fruites(
                                        imagepath:
                                            "images/${post[e.fruit1].path}",
                                        imagename: "${post[e.fruit1].title}"),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }

  Future<List<NewJson>> fecData() async {
    final response = await rootBundle.loadString('assets/FruitsAll.json');
    print(response);
    final post = await json.decode(response) as List<dynamic>;
    return post.map((e) => NewJson.fromJson(e)).toList();
  }
}
