import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
  
  void changeColor() {
    DynamicTheme.of(context).setThemeData(new ThemeData(
        primaryColor: Theme.of(context).primaryColor == Colors.indigo? Colors.red: Colors.indigo
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  height: 330,
                  width: 360,
                  // color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/pic2.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Text(
                          "School Education",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),

                      


                    ],
                  )),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: <Widget>[
                          Image.asset("images/pic9.png"),
                          Text(
                            "Math",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xFFFF4E50), Color(0xFFF9D423)]),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                              bottom: Radius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: <Widget>[
                            Image.asset("images/pic8.png"),
                            Text(
                              "Chemistry",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xFFFBD3E9), Color(0xFFBB377D)]),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                                bottom: Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "images/pic7.png",
                            height: 130,
                            width: 130,
                          ),
                          Text(
                            "English",
                            style: TextStyle(
                              // fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xFF649173), Color(0xFFDBD5A4)]),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                              bottom: Radius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              "images/pic5.png",
                              height: 120,
                              width: 120,
                            ),
                            Text(
                              "Physics",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)]),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                                bottom: Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: <Widget>[
                          Image.asset("images/pic3.webp"),
                          Text(
                            "Biology",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xFFc21500), Color(0xFFffc500)]),
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: <Widget>[
                            Image.asset("images/pic9.png"),
                            Text(
                              "Algorithm",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xFF7b4397), Color(0xFFdc2430)]),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                                bottom: Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: <Widget>[
                          Image.asset("images/pic9.png"),
                          Text(
                            "Java",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xFF614385), Color(0xFF516395)]),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                              bottom: Radius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: <Widget>[
                            Image.asset("images/pic9.png"),
                            Text(
                              "Dart",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xFF56ab2f), Color(0xFFa8e063)]),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                                bottom: Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: <Widget>[
                          Image.asset("images/pic9.png"),
                          Text(
                            "Flutter",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xFF42275a), Color(0xFF734b6d)]),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                              bottom: Radius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: <Widget>[
                            Image.asset("images/pic9.png"),
                            Text(
                              "React",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xFFcc2b5e), Color(0xFF753a88)]),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                                bottom: Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        children: <Widget>[
                          Image.asset("images/pic9.png"),
                          Text(
                            "ML",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xFFffafbd), Color(0xFFffc3a0)]),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                              bottom: Radius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: <Widget>[
                            Image.asset("images/pic9.png"),
                            Text(
                              "IOT",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xFF132B43), Color(0xFF56B1F7)]),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                                bottom: Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),

               MaterialButton(
                        child: Text("Change Theme",
                        style: TextStyle(
                          fontSize:15 ,
                        ),
                        ),
                        onPressed: (){
                          setState(() {
                            changeBrightness();
                           // changeColor();
                          }
                        );
                        },
                      )


            ],
          ),
        ],
      ),
    );
  }
}
