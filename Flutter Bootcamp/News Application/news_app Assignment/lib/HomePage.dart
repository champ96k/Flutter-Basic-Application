import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
           Card(
             elevation: 12,
             child:  ListTile(
              leading: Icon(Icons.filter_list),
              trailing: Icon(Icons.search),
              title: Center(
                child: Text("NEWS",
                style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),)),
            ),
           ),
           Container(
             height: 75,
             width: double.infinity,
             color: Colors.yellow,
             alignment: Alignment.topLeft,
             child: Padding(
               padding: const EdgeInsets.all(14.0),
               child: Text("Headlines",
               style: TextStyle(
                 fontSize: 34,
                 fontWeight: FontWeight.bold,
                 color: Colors.red,
               ),
               ),
             ),
           ),

              Column(
               children: <Widget>[
                 Row(
                   children: <Widget>[
                     Column(
                       children: <Widget>[
                         Container(
                           margin: EdgeInsets.all(12),
                           height:142,
                           width: 155,
                           color: Colors.redAccent,
                             child: Image(
                               fit: BoxFit.cover,
                               image: AssetImage("images/pic1.jpg")
                             )
                         ),
                       ],
                     ),
                     Column(
                       children: <Widget>[
                         Row(
                           children: <Widget>[
                             Container(
                                 height: 100,
                                 width: 170,
                               //  color: Colors.red,
                                 child: Text("Headline"),
                               ),
                                ListTile(
                                       leading: Icon(Icons.watch_later),
                                       trailing: Icon(Icons.bookmark),
                                       title: Text("Hello This djjd"),
                                     ),
                                     Text("data") 
                              
                           ],
                          
                         ),
                       ],
                     )
                   ],
                 )
               ],
             )
           


          ],
        ),
      ),
      
    );
  }
}