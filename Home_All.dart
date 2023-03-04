/* import 'package:flutter/material.dart';
import 'package:fruit/screem_importante/HomeScreem.dart';
import 'package:fruit/screem_importante/Jeu.dart';
import 'package:fruit/screem_importante/Other_fruit.dart';

class HomeAllComponent extends StatefulWidget {
  const HomeAllComponent({Key? key}) : super(key: key);

  @override
  State<HomeAllComponent> createState() => _HomeAllComponentState();
}

class _HomeAllComponentState extends State<HomeAllComponent> {
  int currentIndex = 0;
  var composants = [HomeScreem(), OtherFruit(), Game()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: composants[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Acceuil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "AZ Fruit"),
          BottomNavigationBarItem(icon: Icon(Icons.games), label: "Game"),
        ],
      ),
    );
  }
}
 */