import 'package:firebase_to_do/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO Firebase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomePage()
    );
  }
}

