import 'package:flutter/material.dart';
import 'package:fruit/otherclass.dart/Classes/first_fruits.dart';
import 'package:fruit/otherclass.dart/fruit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fruit/screem_importante/important/Screem_autreFruit.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({Key? key}) : super(key: key);

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  List<FirstClassFrit> img = [
    FirstClassFrit(
        imgpath1: "1.jpg", imgpath2: "2.jpg", name1: "Ananas", name2: "Avocat"),
    FirstClassFrit(
        imgpath1: "3.jpg",
        imgpath2: "4.jpg",
        name1: "Baie de goji",
        name2: "Banane"),
    FirstClassFrit(
        imgpath1: "5.jpg",
        imgpath2: "6.jpg",
        name1: "Bergamote",
        name2: "Carambole"),
    FirstClassFrit(
        imgpath1: "7.jpg", imgpath2: "8.jpg", name1: "Cassis", name2: "Cerise"),
  ];
  List<FirstClassFrit> img2 = [
    FirstClassFrit(
        imgpath1: "29.jpg",
        imgpath2: "30.jpg",
        name1: "Achacha",
        name2: "Aguaje"),
    FirstClassFrit(
        imgpath1: "39.jpg", imgpath2: "41.jpg", name1: "Awara", name2: "Bael"),
    FirstClassFrit(
        imgpath1: "46.jpg",
        imgpath2: "50.jpg",
        name1: "Bignay",
        name2: "Canistel"),
    FirstClassFrit(
        imgpath1: "58.jpg",
        imgpath2: "60.jpg",
        name1: "Citron doux",
        name2: "Cocona"),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(164, 214, 209, 209),
      /* appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(92, 63, 61, 62),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.phone_rounded,
              color: Color.fromARGB(255, 255, 0, 0),
              size: 25,
            ),
          )
        ],
      ), */
      body: ListView(
        scrollDirection: Axis.vertical,
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
                      "Meet ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 240, 139, 139)),
                    ),
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
                      "its ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow),
                    ),
                    Text(
                      "App",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
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
                      //border: Border.all(color: Colors.yellowAccent),
                      //color: Colors.black54,
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 240, 139, 139),
                        Colors.black45,
                        //Color.fromARGB(173, 60, 255, 0),
                      ]),
                      borderRadius: BorderRadius.circular(20)),
                  height: 150,
                  width: size.width - 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Nos Fruits",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                        Text(
                          "Les fruits, terre de culture, les régions les plus adaptées, son importance, temps de recolte et sa conservation",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OurFruits()));
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                //padding: EdgeInsets.only(top: 4, left: 3),
                                height: 25,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(child: Text("Savoir Plus")),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fruits",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OurFruits()));
                      },
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text("Plus",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //***
              CarouselSlider(
                  items: img
                      .map(
                        (item) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Fruits(
                                imagepath: item.imgpath1,
                                namefruit: Text(
                                  "${item.name1}",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                            Fruits(
                                imagepath: item.imgpath2,
                                namefruit: Text(
                                  "${item.name2}",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          ],
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    //reverse: true
                    autoPlayInterval: Duration(seconds: 5),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Autre Fruit Existant",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              CarouselSlider(
                  items: img2
                      .map(
                        (item) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Fruits(
                                imagepath: item.imgpath1,
                                namefruit: Text(
                                  "${item.name1}",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                            Fruits(
                                imagepath: item.imgpath2,
                                namefruit: Text(
                                  "${item.name2}",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black),
                                )),
                          ],
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    //reverse: true,
                    autoPlayInterval: Duration(seconds: 3),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Importance majeur de consommer des fruits",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 10),
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
                        //border: Border.all(color: Colors.yellowAccent),
                        //color: Colors.black54,
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 240, 139, 139),
                          Colors.black45,
                          //Color.fromARGB(173, 60, 255, 0),
                        ]),
                        borderRadius: BorderRadius.circular(20)),
                    height: 200,
                    width: size.width - 120,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      height: 100,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          //color: Colors.black,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/abdo.png"))),
                                    )),
                                Container(
                                  child: Column(
                                    children: [
                                      Text("Energie",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("&",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("Force",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                      height: 100,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          //color: Colors.black,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/maladie.png"))),
                                    )),
                                Container(
                                  child: Column(
                                    children: [
                                      Text("Contre les",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("Maladies",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                      height: 100,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          //color: Colors.black,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/corpulence.png")))),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text("Bonne",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("Corpurance",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
