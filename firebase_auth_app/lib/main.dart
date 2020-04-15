import 'package:firebase_auth_app/UI/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(       
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
