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
          title: Text("Single child Widget demo",style: TextStyle(color: Colors.greenAccent),),
          backgroundColor: Colors.black54,
        ),
        body: Padding(
          padding: EdgeInsets.all(25.5),
          child:Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.greenAccent,
          child: Align(
              alignment: Alignment.center,
            child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.amberAccent,
                child: Center(
                  child: Text(
                    "Nested container",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Shizuru", color: Colors.black),
              ),
            )))
          // child: const Center(
          // child: Text("Container widget demonstration",style: TextStyle(fontSize: 50, fontFamily: "Shizuru",color: Colors.black),
          // )
          // ),
        ),
      ),
      )
    );
  }
}

