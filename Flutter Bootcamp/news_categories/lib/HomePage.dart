import 'package:flutter/material.dart';
import 'package:news_categories/Caregories.dart';
import 'package:news_categories/News.dart';
import 'package:news_categories/ViewNews.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 52),
                child: Image(
                  width: double.infinity,
                  height: 200,   
                  image: AssetImage('images/pic1.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24), 
                child: Text(
                  "The Prime News",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),  
                child: Center(
                  child: Center(
                    child: Text(
                      "The best fiction is far more true than",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Center(
                  child: Center(
                    child: Text(
                      "any journalism.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),   

               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 28),
                 child: Container(
                   height: 42,
                   width: 300,
                   child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => News()),
                        ); 
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      color: Colors.black,
                        child: Text(
                          "Manage News",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30,
                          ),
                        ),
                      ),
                 ),
               ),
                

              Container(
                   height: 42,
                     width: 300,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Caregories()),
                        ); 
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      color: Colors.black,
                        child: Text(
                          "Manage Categories",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30,
                          ),
                        ),
                      ),
                ),

                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 28),
                   child: Container(
                     height: 42,
                       width: 300,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ViewNews()),
                          ); 
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.black,
                          child: Text(
                            "View News",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 30,
                            ),
                          ),
                        ),
                ),
                 ),
              
                
              


            ],
          ),
        ),
    ); 
  }
}