import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int r;
  onnPress() {
   randomcolor();
    r = Random().nextInt(6) + 1;
    setState(() {
      print("r$r");
    });
  }

   int redcolor,greencolor,bluecolor;
  randomcolor() {
    redcolor = Random().nextInt(255) + 1;
    greencolor = Random().nextInt(255) + 1;
    bluecolor = Random().nextInt(255) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice Roller",
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, redcolor, greencolor, bluecolor),
        appBar: AppBar(
          title: Text("Dice Roller"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Text("Score $r",
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
              ),

              Image(
                image: AssetImage("images/dice$r.png",
                ),
                width: 200,
                height: 500,
              ),
              MaterialButton(
                color: Colors.purple,
                onPressed: () {
                  onnPress();
                 },
                child: Text(
                  "Click Here",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
