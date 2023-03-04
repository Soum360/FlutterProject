// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:fruit/modele/New_Json.dart';
import 'package:fruit/otherclass.dart/Classes/seconde_class.dart';

class FruitComponent extends StatefulWidget {
  int id;
  FruitComponent({Key? key, required this.id}) : super(key: key);

  @override
  State<FruitComponent> createState() => _FruitComponentState();
}

class _FruitComponentState extends State<FruitComponent> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 153, 4),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 223, 153, 4),
        leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(164, 214, 209, 209),
            child: BackButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FruitComponent(
                                id: widget.id,
                              )));
                },
                color: Colors.black)),
        actions: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              CircleAvatar(
                backgroundColor: Colors.white,
                // ignore: prefer_const_constructors
                child: Icon(
                  Icons.apple_outlined,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Fruit",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            FutureBuilder(
                future: fecData(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  var post = snapshot.data as List<NewJson>;
                  return Container(
                    height: size.height,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            child: Container(
                              height: 80,
                              width: size.width,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(60),
                                  bottomRight: Radius.circular(60),
                                ),
                              ),
                            )),
                        Positioned(
                          bottom: 0,
                          top: 100,
                          child: SingleChildScrollView(
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60),
                                      topRight: Radius.circular(60))),
                              //height: 8000,
                              width: size.width,
                              child: Column(children: [
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 80.0, left: size.width / 3),
                                      child: Container(
                                        width: size.width / 3,
                                        child: Center(
                                          child: Text(
                                            "${post[widget.id].title}",
                                            // ignore: prefer_const_constructors
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "${post[widget.id].body}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Les Bienfaits",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "${post[widget.id].good}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Les Catégories",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "${post[widget.id].type}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Comment faire un bon choix",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "${post[widget.id].choise}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Utilisations",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "${post[widget.id].used}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Sa Production",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "${post[widget.id].product}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Conservation ou Recolte",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "${post[widget.id].recolt}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 30,
                            left: size.width / 3,
                            child: Container(
                              height: 132,
                              width: size.width / 3,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 223, 153, 4),
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                  //color: Colors.black,
                                  //border: Border.all(color: Colors.black),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/${post[widget.id].path}"))),
                            )),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  Future<List<NewJson>> fecData() async {
    final response = await rootBundle.loadString('assets/FruitsAll.json');
    print(response);
    final post = await json.decode(response) as List<dynamic>;
    return post.map((e) => NewJson.fromJson(e)).toList();
  }
}
