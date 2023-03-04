import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit/modele/Sec_Json.dart';
import 'package:url_launcher/url_launcher.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  int temp = 0;
  Future<void>? _launched;
  bool language = true;
  @override
  final Uri facebook = Uri(
      scheme: 'https',
      host: 'www.facebook.com',
      path: 'Mobile-Dev-Fa%C3%AFdollard-11039309692183');
  final Uri telegram =
      Uri(scheme: 'https', host: 't.me', path: '+Blcgo8bpLI4wMTc0/');
  final Uri whatsapp =
      Uri(scheme: 'https', host: 'www.facebook.com', path: 'adeshinan.amk/');
  /* Widget one = Container();
  Widget two = Container();
  Widget tree = Container();
  Widget four = Container();
  List<Games> anyone = [Games(game: Container())]; */
  Widget health = Icon(
    Icons.favorite,
    color: Colors.red,
    size: 30,
  );
  int comp = 3;
  bool fail = false;
  int i = 0;
  bool good = true;
  int start = Random().nextInt(127) + 7;
  String ecrit = "";
  bool ecrit2 = true;
  bool tap = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return tap
        ? Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "My ",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    "Fru",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    "its ",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    "Ga",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    "me",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            body: FutureBuilder(
                future: fecData(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  var post = snapshot.data as List<SecJson>;
                  return Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: result(comp),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                              ),
                              child: Container(
                                width: 250,
                                height: 190,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 46, 46, 46),
                                      offset: const Offset(
                                        3.0,
                                        3.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.greenAccent,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                  //color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/${post[start].path}")),
                                  borderRadius: BorderRadius.circular(120),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
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
                                                      color: Color.fromARGB(
                                                          255, 46, 46, 46),
                                                      offset: const Offset(
                                                        5.0,
                                                        5.0,
                                                      ),
                                                      blurRadius: 10.0,
                                                      spreadRadius: 2.0,
                                                    ), //BoxShadow
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset: const Offset(
                                                          0.0, 0.0),
                                                      blurRadius: 0.0,
                                                      spreadRadius: 0.0,
                                                    ), //BoxShadow
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Center(
                                                      child: Text(
                                                        "${post[start].title}",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      ),
                                                    )))),
                                        InkWell(
                                            onTap: () {
                                              _clicechec();
                                            },
                                            child: Container(
                                              width: 100,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                //color: Colors.greenAccent,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 46, 46, 46),
                                                    offset: const Offset(
                                                      5.0,
                                                      5.0,
                                                    ),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                  ), //BoxShadow
                                                  BoxShadow(
                                                    color: Colors.white,
                                                    offset:
                                                        const Offset(0.0, 0.0),
                                                    blurRadius: 0.0,
                                                    spreadRadius: 0.0,
                                                  ), //BoxShadow
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5),
                                                child: Center(
                                                  child: Text(
                                                    "${post[start - (Random().nextInt(5) + 1)].title}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              _clicechec();
                                            },
                                            child: Container(
                                                width: 100,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  //color: Colors.greenAccent,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          255, 46, 46, 46),
                                                      offset: const Offset(
                                                        5.0,
                                                        5.0,
                                                      ),
                                                      blurRadius: 10.0,
                                                      spreadRadius: 2.0,
                                                    ), //BoxShadow
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      offset: const Offset(
                                                          0.0, 0.0),
                                                      blurRadius: 0.0,
                                                      spreadRadius: 0.0,
                                                    ), //BoxShadow
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 5),
                                                  child: Center(
                                                    child: Text(
                                                      "${post[start + (Random().nextInt(4) + 1)].title}",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ))),
                                        InkWell(
                                            onTap: () {
                                              _clicechec();
                                            },
                                            child: Container(
                                              width: 100,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                //color: Colors.greenAccent,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 46, 46, 46),
                                                    offset: const Offset(
                                                      5.0,
                                                      5.0,
                                                    ),
                                                    blurRadius: 10.0,
                                                    spreadRadius: 2.0,
                                                  ), //BoxShadow
                                                  BoxShadow(
                                                    color: Colors.white,
                                                    offset:
                                                        const Offset(0.0, 0.0),
                                                    blurRadius: 0.0,
                                                    spreadRadius: 0.0,
                                                  ), //BoxShadow
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5),
                                                child: Center(
                                                  child: Text(
                                                    "${post[start + (Random().nextInt(6) + 6)].title}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                          //color: Colors.greenAccent,
                          /*gradient: LinearGradient(colors: [
                            Colors.pinkAccent,
                            Colors.yellow,
                            Colors.green,
                          ]),*/
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(children: [
                                Text(
                                  "Score: ",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${i}",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                            )
                          ],
                        ),
                      )),
                    ],
                  );
                }),
          )
        : Scaffold(
            backgroundColor: Color.fromARGB(255, 45, 103, 203),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: size.width / 2.5,
                    height: 200,
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "My ",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "Fru",
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "its ",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "Ga",
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "me",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 25.0, bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Score Final: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Text("${temp}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  tap = !tap;
                                });
                              },
                              child: Text("Restart")),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () => setState(() {
                                _launched = _launchInBrowser(facebook);
                              }),
                              child: Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                            InkWell(
                              onTap: () => setState(() {
                                _launched = _launchInBrowser(whatsapp);
                              }),
                              child: Icon(
                                Icons.whatsapp,
                                color: Colors.green,
                                size: 30,
                              ),
                            ),
                            InkWell(
                              onTap: () => setState(() {
                                _launched = _launchInBrowser(telegram);
                              }),
                              child: Icon(
                                Icons.telegram,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  Future<List<SecJson>> fecData() async {
    final response = await rootBundle.loadString('assets/AutreFruits.json');
    print(response);
    final post = await json.decode(response) as List<dynamic>;
    return post.map((e) => SecJson.fromJson(e)).toList();
  }

  List<Widget> result(int ab) {
    List<Widget> res = [];
    for (int a = 1; a <= ab; a++) {
      res.add(health);
    }
    return res;
  }

  // ignore: unused_element
  void _clicechec() {
    setState(() {
      start = Random().nextInt(127) + 7;
      good = false;
      comp = comp - 1;
      if (comp <= 0) {
        temp = i;
        i = 0;
        comp = 3;
        fail = true;
        tap = false;
      }
    });
  }

  void _clicwin() {
    setState(() {
      fail = false;
      good = true;
      start = Random().nextInt(127) + 7;
      i++;
    });
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
}
