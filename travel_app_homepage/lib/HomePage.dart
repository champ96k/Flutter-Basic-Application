import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:travel_app_homepage/ProfilePage.dart';
import 'package:url_launcher/url_launcher.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _image;
  File _image1;

  Future imagepicker() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera); //For Camera to take photos
    setState(() {
      _image = image;
    });
  }

  Future galarypicker() async {
    var image1 = await ImagePicker.pickImage( source: ImageSource.gallery); //For Gallery open
    setState(() {
      _image1 = image1;
    });
  }

     void changeBrightness() {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }

  _launchURL() async {
  const url = 'https://champ96k.blogspot.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("champ96k@gmail.com"),
              accountName: Text("Tushar Nikam"),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: AssetImage("images/pic1.png")),
            ),
            ListTile(
              onTap: () {
                imagepicker();
              },
              leading: Icon(Icons.camera_alt),
              title: Text(
                "Camera",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                galarypicker();
              },
              leading: Icon(Icons.apps),
              title: Text(
                "Galaray",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              leading: Icon(Icons.account_circle),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              
              leading: Icon(Icons.contact_mail),
              title: Text(
                "About US",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
             ListTile(
               onTap: (){
                 _launchURL();
               },
              leading: Icon(Icons.add_to_home_screen),
              title: Text(
                "Internet",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),

            Divider(
              thickness: 2,
            ),


            ListTile(
              onTap: () {
                changeBrightness(); 
              },
              leading: Icon(Icons.wb_sunny),
              title: Text(
                "Dark Theme",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),



           
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.close),
              title: Text(
                "Close",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),


      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Navigation App"),
        centerTitle: true,
      ),


      body: Column(
        children: <Widget>[
          Container(
            child: Image( 
              image: NetworkImage("https://www.arihantwebtech.com/images/design-notice/Hire-Full-Time-Developer.png"),
            )
          ),

          Stack(
            children: <Widget>[
              Container(
                height: 42,
                width: 320,
                
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 12,left: 8.0,top: 8,bottom: 8),
                      child: Icon(Icons.wb_sunny),
                    ),
                    Text("It's Now 32 °F  ",
                    style: TextStyle(
                      color: Colors.white,
                       fontSize:14,
                    ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Text("Welcome to Jaipur",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:14,
                      ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Icon(Icons.add_location),
                    ),

                  ],
                ),
               decoration: new BoxDecoration(
                        color: Colors.purple[800],
                        borderRadius: new BorderRadius.only(
                            topLeft:   Radius.circular(17.0),
                            topRight:  Radius.circular(17.0),
                            bottomLeft: Radius.circular(17.0),
                            bottomRight: Radius.circular(17.0),
                          ),
                    ),
              ),
            ],
          ),


          Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 22, right: 10, bottom: 10),
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.library_music,
                      size: 14,
                    ),
                    elevation: 25,
                    onPressed: () => {},
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 22, right: 10, bottom: 10),
                  child: FloatingActionButton(
                     hoverElevation: 20,
                      focusElevation: 25,
                    child: Icon(
                      Icons.calendar_today,
                      size: 14,
                    ),
                    elevation: 20,
                    onPressed: () => {},
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 22, right: 10, bottom: 10),
                  child: FloatingActionButton(
                     hoverElevation: 20,
                      focusElevation: 25,
                    child: Icon(
                      Icons.library_music,
                      size: 14,
                    ),
                    elevation: 20,
                    onPressed: () => {},
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 22, right: 10, bottom: 8),
                  child: FloatingActionButton(
                      hoverElevation: 20,
                      focusElevation: 25,
                    child: Icon(
                      Icons.airplay,
                      size: 14,
                    ),
                    elevation: 20,
                    onPressed: () => {},
                  ),
                ),
              ],
          ),

          Padding(
            padding: const EdgeInsets.only(right: 80,top: 12,bottom: 20),
            child: Text("Sunday, 20 January 2020",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 11,left: 15,right: 15,bottom: 30),
            child: Text("This is our day guide for Monday January 20th 2020 which shows you at a glance what's happening on this day around the world.",
            style: TextStyle(
              fontSize: 13,
            ),
            ),
          ),


          Row(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(left: 24,right: 10),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      changeBrightness();
                    });
                  },
                  child: Text("CALL",
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: Text("TEXT"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: MaterialButton(
                  onPressed: () {
                   
                  },
                  child: Text("MAIL"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                     side: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
            ],
          ),

          


        ],
      ),


    );
  }
}
