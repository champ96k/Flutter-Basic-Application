import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gradients',
      home: Scaffold(
        appBar: AppBar(
          title: Text('LCO Bootcamp'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(
              colors: [
                Colors.pink,
                Colors.red,
                Colors.green,
                Colors.purple,
                Colors.teal
              ],
              stops: [0.8, 0.96, 0.74, 0.22, 0.85],
            ),
          ),
          child: Center(
            child: Text(
              'Welcome to India',
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
