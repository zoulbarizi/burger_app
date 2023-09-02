import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/burger.dart';
import '../widgets/burger_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Burger> burgers = [
    Burger(
      name: "Cheddar Stuffed",
      price: 20,
      img: 'assets/images/1.png',
      desc:
          "This is description this is description this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is  this is desc this is  this is description this is desc this is description this is description this is desc this is",
    ),
    Burger(
      name: "Bacon & Kimchi",
      price: 32,
      img: 'assets/images/2.png',
      desc:
          "This is description this is description this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is  this is desc this is  this is description this is desc this is description this is description this is desc this is",
    ),
    Burger(
      name: "Cheddar BLT ",
      price: 19,
      img: 'assets/images/3.png',
      desc:
          "This is description this is description this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is  this is desc this is  this is description this is desc this is description this is description this is desc this is",
    ),
    Burger(
      name: "Cheddar & Onion",
      price: 20,
      img: 'assets/images/4.png',
      desc:
          "This is description this is description this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is  this is desc this is  this is description this is desc this is description this is description this is desc this is",
    ),
    Burger(
      name: "Umami Burgers",
      price: 27,
      img: 'assets/images/5.png',
      desc:
          "This is description this is description this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is this is desc this is description this is  this is desc this is  this is description this is desc this is description this is description this is desc this is",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage("assets/images/bg2.jpg"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 60, left: 20, bottom: 10),
              child: Text(
                "Choose your\nBURGER",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Expanded(
              child: ListWheelScrollView(
                itemExtent: Get.height / 3,
                diameterRatio: 3,
                children: burgers.map((e) => BurgerTile(e: e)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
