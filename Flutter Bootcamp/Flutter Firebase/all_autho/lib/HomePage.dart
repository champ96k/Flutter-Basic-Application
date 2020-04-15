import 'package:all_autho/Facebook.dart';
import 'package:all_autho/Google.dart';
import 'package:all_autho/Mobile.dart';
import 'package:all_autho/Simple.dart';
import 'package:all_autho/Twitter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All in One Authentication"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Simple()));
                },
                child: Text(
                  "Simple Authentication",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                ),
              ),
              MaterialButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Google()));
                },
                child: Text(
                  "Google Authentication",
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
                ),
              ),
              MaterialButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Facebook()));
                 },
                child: Text(
                  "Facebook Authentication",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                ),
              ),
              MaterialButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Mobile()));
                },
                child: Text(
                  "Mobile Authentication",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                ),
              ),
              MaterialButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Twitter()));
                },
                child: Text("Twitter Authentication",
                  style: TextStyle(color: Colors.teal, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      );
  }
}