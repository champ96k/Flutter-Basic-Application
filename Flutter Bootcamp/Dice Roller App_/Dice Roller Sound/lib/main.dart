import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(home:MyApp()));
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
  String playerfirst="Player First Winner";
  String playersecond="Player Second Winner";
  int counter=0;
  void firstTimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t1) {
      setState(() {
        if(firstTotal<15 && secondTotal<15)
        {
            if (!changer) //Button press
            {
              t1.cancel();
              timer2 = 15;
            } 
            else //button not pree
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
        }
        else
        {
          if(firstTotal>secondTotal)
          {
            _neverSatisfied(firstTotal,playerfirst);
            player.play("winner.wav");
            t1.cancel();
            return;
          }
        }
       }
      );
    }
    );
  }

  void secondTimer() async {
    const onesec1 = Duration(seconds: 1);
    Timer.periodic(onesec1, (Timer t2) {
      setState(() {
         if(firstTotal<15 && secondTotal<15)
        {
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
        }
        else
        {
          if(secondTotal>firstTotal)
          {
            player.play("winner.wav");
            _neverSatisfied(secondTotal,playersecond);
            t2.cancel();
            return;
          }
        }
      }
      );
    });
  }

  int firstTotal = 0, secondTotal = 0;
  int count = 0;
  int firstRandom = 1;
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

  int secondRandom = 1;
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

  Future<void> _neverSatisfied(text,String winText) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulations'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('$winText 🏆 with Score $text',
                style: TextStyle(
                  fontSize: 22.0, 
                ),
              ),
              Icon(Icons.directions_run),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice Roller Multi Player",
      home: Scaffold(
        body: Center(
          child: Container(
            width: 370, 
            decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.4, 0.6, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.yellow,
            Colors.red,
            Colors.indigo[600],
            Color(0xFFFF3E4D),
          ],
        ),
      ),
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
                Text(""),
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
      ),
    );
  }
}
