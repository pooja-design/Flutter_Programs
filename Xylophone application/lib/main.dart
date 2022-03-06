import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

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
          title: Text("Xylophone app"),
        ),
        body: Xylo(),
      ),
    );
  }
}

class Xylo extends StatefulWidget {
  const Xylo({Key? key}) : super(key: key);

  @override
  _XyloState createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  void play(int i){
    final player = AudioCache();
    player.play("note$i.wav");
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: TextButton(
          onPressed: () {play(1);},
          child: Text("SA",style: TextStyle(color: Colors.white),),
          style: TextButton.styleFrom(backgroundColor: Colors.black),
        )),
        Expanded(
            child: TextButton(
              onPressed: () {play(2);},
              child: Text("RE",style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(backgroundColor: Colors.white),
            )),
        Expanded(
            child: TextButton(
              onPressed: () {play(3);},
              child: Text("GA",style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(backgroundColor: Colors.black),
            )),
        Expanded(
            child: TextButton(
              onPressed: () {play(4);},
              child: Text("MA",style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(backgroundColor: Colors.white),
            )),
        Expanded(
            child: TextButton(
              onPressed: () {play(5);},
              child: Text("PA",style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(backgroundColor: Colors.black),
            )),
        Expanded(
            child: TextButton(
              onPressed: () {play(6);},
              child: Text("DA",style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(backgroundColor: Colors.white),
            )),
        Expanded(
            child: TextButton(
              onPressed: () {play(7);},
              child: Text("NI",style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(backgroundColor: Colors.black),
            )),

      ],
    ));
  }
}
