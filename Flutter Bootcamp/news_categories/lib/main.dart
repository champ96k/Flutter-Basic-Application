import 'package:flutter/material.dart';
import 'package:news_categories/HomePage.dart';
import 'package:news_categories/Login.dart';
import 'package:news_categories/ViewNews.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewNews(),
    );
  }
}