import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: Text("Multi Child Widget Demo"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row( //You can change it to Column ot see how row works.
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                height: 50,
                color: Colors.lightBlueAccent,
                child: Center(
                  child: Text("first child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.black,fontWeight: FontWeight.bold),),)
              ),
              Container(
                width: 250,
                height: 50,
                color: Colors.pink,
                  child: Center(
                    child: Text("second child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.black,fontWeight: FontWeight.bold),),)
              ),
              // Container(
              //   width: 250,
              //   height: 50,
              //   color: Colors.yellowAccent,
              //     child: Center(
              //       child: Text("third child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.black,fontWeight: FontWeight.bold),),)
              // ),
              // Container(
              //   width: 250,
              //   height: 50,
              //   color: Colors.black,
              //     child: Center(
              //       child: Text("fourth child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.white,fontWeight: FontWeight.bold),),)
              // ),
            ]
          ),
            Row( //You can change it to Column ot see how row works.
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 250,
                      height: 50,
                      color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text("fifth child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.black,fontWeight: FontWeight.bold),),)
                  ),
                  Container(
                      width: 250,
                      height: 50,
                      color: Colors.pink,
                      child: Center(
                        child: Text("sixth child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.black,fontWeight: FontWeight.bold),),)
                  ),
                  // Container(
                  //     width: 250,
                  //     height: 50,
                  //     color: Colors.yellowAccent,
                  //     child: Center(
                  //       child: Text("seventh child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.black,fontWeight: FontWeight.bold),),)
                  // ),
                  // Container(
                  //     width: 250,
                  //     height: 50,
                  //     color: Colors.black,
                  //     child: Center(
                  //       child: Text("eighth child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.white,fontWeight: FontWeight.bold),),)
                  // ),
                ]
            ),
            Row( //You can change it to Column ot see how row works.
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 250,
                      height: 50,
                      color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text("ningth child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.black,fontWeight: FontWeight.bold),),)
                  ),
                  Container(
                      width: 250,
                      height: 50,
                      color: Colors.pink,
                      child: Center(
                        child: Text("tength child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.black,fontWeight: FontWeight.bold),),)
                  ),
                  // Container(
                  //     width: 250,
                  //     height: 50,
                  //     color: Colors.yellowAccent,
                  //     child: Center(
                  //       child: Text("seventh child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.black,fontWeight: FontWeight.bold),),)
                  // ),
                  // Container(
                  //     width: 250,
                  //     height: 50,
                  //     color: Colors.black,
                  //     child: Center(
                  //       child: Text("eighth child",style: TextStyle(fontSize: 25,fontFamily: "Shizuru",color: Colors.white,fontWeight: FontWeight.bold),),)
                  // ),
                ]
            ),
          ]
          )
        ),
      )
    );
  }
}
