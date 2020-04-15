import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // add it to your class as a static member
  static AudioCache player = AudioCache();

  int timer1 = 15;
  int timer2 = 15;
  bool changer = true;
  String showTimer1 = " ";
  String showTimer2 = " ";
  void firstTimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t1) {
      setState(() {
        if (!changer) //Button press
        {
          if (t1.isActive) t1.cancel();
          timer2 = 15;
        } else //button not pree
        {
          if (timer1 < 1) //time limit is sold
          {
            t1.cancel();
            timer2 = 15;
            secondTimer();
            changer = false;
          } else //if button is not press
          {
             player.play("timer.wav");
            timer1 = timer1 - 1;
          }
        }
        showTimer1 = timer1.toString();
      });
    });
  }

  void secondTimer() async {
    const onesec1 = Duration(seconds: 1);
    Timer.periodic(onesec1, (Timer t2) {
      setState(() {
        if (changer) //Button press
        {
          t2.cancel();
          timer1 = 15;
        } else //button not pree
        {
          if (timer2 < 1) //time limit is sold
          {
            t2.cancel();
            timer1 = 15;
            firstTimer();
            changer = false;
          } else //if button is not pree
          {
            timer2 = timer2 - 1;
            player.play("timer.wav");
          }
        }
        showTimer2 = timer2.toString();
      });
    });
  }

  int firstTotal = 0, secondTotal = 0;
  int count = 0;
  int firstRandom=1;
  firstDice() {
    setState(() {
      changer = false;
      firstTimer();
      secondTimer();
      firstRandom = Random().nextInt(6) + 1;
      firstTotal = firstTotal + firstRandom;
      print(firstTotal);
    });
  }

  int secondRandom=1;
  secondDice() {
    setState(() {
      changer = true;
      secondTimer();
      firstTimer();
      secondRandom = Random().nextInt(6) + 1;
      secondTotal = secondTotal + secondRandom;
      print(secondTotal);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice Roller Multi Player",
      home: Scaffold(
        backgroundColor: Color(0xFFfefbd8),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 21.0),
                child: Container(
                  height: 40.0,
                  width: 150.0,
                  child: MaterialButton(
                    splashColor: Colors.red,
                    highlightColor: Colors.indigo,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {
                      if (count == 0) {
                      
                        firstDice();
                        count++;
                      } else {
                        return;
                      }
                    },
                    child: Text(
                      "Click Here",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "⏱ $showTimer1",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Container(
                  height: 200.0,
                  width: 300.0,
                  child: Image.asset("images/dice$firstRandom.png")),
              Container(
                  height: 200.0,
                  width: 300.0,
                  child: Image.asset("images/dice$secondRandom.png")),
              Text(
                "⏱ $showTimer2",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21.0),
                child: Container(
                  height: 40.0,
                  width: 150.0,
                  child: MaterialButton(
                    splashColor: Colors.red,
                    highlightColor: Colors.indigo,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {
                      if (count == 1) {
                        secondDice();
                        count--;
                      } else {
                        return;
                      }
                    },
                    child: Text(
                      "Click Here",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
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
