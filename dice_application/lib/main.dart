import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Dice application"),
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int left=1;
  int right=1;

  void diceRoll(){
    setState(() {
      left = Random().nextInt(6)+1;
      right =Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
              TextButton(
            onPressed: () {diceRoll();},
                style: TextButton.styleFrom(backgroundColor: Colors.black),
            child: Image.asset("images/dice$left.png"),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.pink),
            child: Image.asset("images/dice$right.png"),
          )
        ],
      ),
    );
  }
}
