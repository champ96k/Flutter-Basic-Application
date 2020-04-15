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
        actions: <Widget>[
          Container(
            child: Image(
              image: AssetImage("assetName"),
            ),
          ),
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {

            },
          ),

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {

            },
          ),

          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Center(
        child: Text("data"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home)
          ),

        ],
      ),
    );
  }
}
