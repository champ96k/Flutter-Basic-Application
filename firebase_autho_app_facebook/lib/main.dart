import 'package:firebase_autho_app/SignUp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Login',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
