import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit/screem_importante/Jeu.dart';

import '../modele/Sec_Json.dart';

class Win extends StatefulWidget {
  bool fail;
  bool good;
  int start;
  int i;
  Win(
      {required this.fail,
      required this.good,
      required this.start,
      required this.i});

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fecData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          var post = snapshot.data as List<SecJson>;
          return InkWell(
              onTap: () {
                _clicwin();
              },
              child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    //color: Colors.greenAccent,
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
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Center(
                        child: Text(
                          "${post[widget.start].title}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ))));
        });
  }

  void _clicwin() {
    setState(() {
      widget.fail = false;
      widget.good = true;
      widget.start = Random().nextInt(127) + 7;
      widget.i++;
    });
  }

  Future<List<SecJson>> fecData() async {
    final response = await rootBundle.loadString('assets/AutreFruits.json');
    print(response);
    final post = await json.decode(response) as List<dynamic>;
    return post.map((e) => SecJson.fromJson(e)).toList();
  }
}
