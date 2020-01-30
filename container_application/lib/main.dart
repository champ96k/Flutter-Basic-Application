import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
   var colorsList=[
    Color(0xFF4d4dff),
    Color(0xFFff1a75),
    Color(0xFF80ff00),
    Color(0xFF00ffcc),
    Color(0xFFff9933),
    Color(0xFFff0000),
    Color(0xFF9933ff),
    Colors.black,
    Colors.amber,
    Colors.grey,
    
  ];
  var colorsList2=[
    Colors.grey,
    Color(0xFF4d4dff),
    Color(0xFF9933ff),
    Color(0xFFff1a75),
    Color(0xFF80ff00),
    Color(0xFF00ffcc),
    Color(0xFFff9933),
    Color(0xFFff0000),
    Color(0xFFcccc00),
    Color(0xFFff6600),
  ];
  int colorcount=0;
  changecolor()
  {
    setState(() {
      if(colorcount<colorsList.length-1)
      {
          colorcount++;
      }
      else
      {
        colorcount=0;
      }
    });
  }
   int colorcount1=0;
  changecolor2()
  {
    setState(() {
      if(colorcount1<colorsList2.length-1)
      {
          colorcount1++;
      }
      else
      {
        colorcount1=0;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                 margin: const EdgeInsets.all(10.0),
                 color: Colors.amber[600],
                 width: 400.0,
                 height: 300.0,
                 child: RaisedButton(
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  splashColor: Color(0xFFffff00),
                  padding: EdgeInsets.all(20),
                  color: colorsList[colorcount],
                  onPressed: changecolor,
                  child: Text("Click Here",
                  style: TextStyle(
                     fontSize: 22,
                    color: Colors.white,
                  ),
                  ) , 
                ),
              ),
               Container(
                 margin: const EdgeInsets.all(10.0),
                 color: Colors.deepPurple,
                 width: 400.0,
                 height: 300.0,
                 child: RaisedButton(
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  splashColor: Color(0xFFffff00),
                  padding: EdgeInsets.all(20),
                  color: colorsList2[colorcount1],
                  onPressed: changecolor2,
                  child: Text("Click Here",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  ) , 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}