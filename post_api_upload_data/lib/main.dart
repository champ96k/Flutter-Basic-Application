import 'package:flutter/material.dart';
import 'package:post_api/LoginPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "User News",
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
