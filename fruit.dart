import 'package:flutter/material.dart';

class Fruits extends StatelessWidget {
  String imagepath;
  Text namefruit;
  Fruits({required this.imagepath, required this.namefruit});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 210,
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
          color: Color.fromARGB(255, 240, 139, 139),
          //border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          Container(
            height: 130,
            width: size.width / 3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              image: DecorationImage(
                image: AssetImage("images/${imagepath}"),
              ),
              //border: Border.all(color: Color.fromARGB(255, 51, 51, 48))
            ),
          ),
          Container(
            width: size.width / 3,
            //color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fruit",
                    style: TextStyle(
                        color: Color.fromARGB(255, 88, 255, 130),
                        fontWeight: FontWeight.w500),
                  ),
                  namefruit
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
