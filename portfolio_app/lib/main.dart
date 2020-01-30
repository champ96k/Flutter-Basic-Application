import 'package:flutter/material.dart';
import 'package:portfolio_app/LoginPage.dart';
//  import 'package:portfolio_app/LoginPage.dart';
// import 'package:portfolio_app/ProfilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Portfolio",
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
