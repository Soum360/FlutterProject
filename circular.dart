import 'dart:html';

import 'package:flutter/material.dart';

class cirlcle extends StatelessWidget {
  String path;
  cirlcle({required this.path});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
      child: /* CircleAvatar(
        backgroundImage: ,
      ), */
          Container(
        height: 10,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(2),
            image: DecorationImage(image: AssetImage("images/${path}"))),
      ),
    );
  }
}
