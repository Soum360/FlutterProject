import 'package:flutter/material.dart';

class Fruites extends StatelessWidget {
  String imagepath;
  String imagename;
  Fruites({required this.imagepath, required this.imagename});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
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
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          border: Border.all(color: Colors.grey)),
      child: Column(
        children: [
          Container(
            height: 150,
            width: size.width / 3,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagepath))),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              imagename,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}
