import 'package:flutter/material.dart';
import 'package:upchat/Screem%20/Classes/circular.dart';

class HomeScreem1 extends StatefulWidget {
  const HomeScreem1({Key? key}) : super(key: key);

  @override
  State<HomeScreem1> createState() => _HomeScreem1State();
}

class _HomeScreem1State extends State<HomeScreem1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        title: Text(
          "UpChat",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 230, 158, 243)),
                  child: Column(
                    children: [],
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  height: 30,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.group,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: size.height,
              width: size.width,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 230, 158, 243)),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    //color: Colors.black,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      cirlcle(path: "face16.jpg"),
                      cirlcle(path: "face16.jpg"),
                      cirlcle(path: "face16.jpg"),
                      cirlcle(path: "face16.jpg"),
                      cirlcle(path: "face16.jpg"),
                      cirlcle(path: "face16.jpg"),
                      cirlcle(path: "face16.jpg"),
                      cirlcle(path: "face16.jpg"),
                      cirlcle(path: "face16.jpg"),
                      cirlcle(path: "face16.jpg")
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
