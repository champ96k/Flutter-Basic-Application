import 'package:flutter/material.dart';
import 'package:news_app/HomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "API Application",
      home: HomePage(),   
    );
  }
}