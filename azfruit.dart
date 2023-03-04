import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:text_to_speech/text_to_speech.dart';

class AzFruit extends StatefulWidget {
  String title;
  String body;
  String imagepath;
  String text;
  AzFruit(
      {required this.title,
      required this.body,
      required this.imagepath,
      required this.text});

  @override
  State<AzFruit> createState() => _AzFruitState();
}

class _AzFruitState extends State<AzFruit> {
  final String defaultLanguage = 'fr-Fr';
  TextToSpeech tts = TextToSpeech();
  String text = '';
  bool play = false;
  bool check = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2 - 50,
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
        //border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: 150,
                  width: size.width / 3,
                  decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      //border: Border.all(color: Colors.grey),
                      image:
                          DecorationImage(image: AssetImage(widget.imagepath))),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width / 4,
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    play = !play;
                    text = widget.text;
                    if (play) {
                      tts.speak(widget.title);
                    } else {
                      tts.pause();
                    }
                  });
                },
                child: play
                    ? Icon(
                        Icons.play_arrow_outlined,
                        color: Colors.blue,
                      )
                    : Icon(
                        Icons.pause,
                        color: Colors.blue,
                      ),
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      check = !check;
                    });
                  },
                  child: check
                      ? Icon(
                          Icons.arrow_circle_down,
                          color: Colors.blue,
                        )
                      : Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.blue,
                        )),
            ],
          ),
          check
              ? Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.body),
                  ),
                )
              : Text("")
        ],
      ),
    );
  }
}
