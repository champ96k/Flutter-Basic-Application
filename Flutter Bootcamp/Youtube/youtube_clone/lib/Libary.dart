import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/UserProfile.dart';

class Libary extends StatefulWidget {
  @override
  _LibaryState createState() => _LibaryState();
}

class _LibaryState extends State<Libary> {
   void changeBrightness() {
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(6.5),
            child: Image(
              image: AssetImage("images/pic2.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 104),
            child: IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {},
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserProfile()));
            },
          ),
        ],
      ),
      body: SafeArea(
      child: ListView(
        children: <Widget>[
         ListTile(leading: Icon(Icons.history,size: 28,),
           title: Text("History",
           style: TextStyle( fontSize: 16)
          ),
         ),

          ListTile(leading: Icon(Icons.file_download,size: 28,),
           title: Text("Download",
           style: TextStyle( fontSize: 16), 
          ),
          subtitle: Text("20 recommendations"),
         ),

          ListTile(leading: Icon(Icons.play_circle_outline,size: 28,),
           title: Text("My Videos",
           style: TextStyle( fontSize: 16),
          ),
         ),

          ListTile(leading: Icon(Icons.local_offer,size: 28,),
           title: Text("Purchases",
           style: TextStyle( fontSize: 17),
          ),
         ),

          ListTile(leading: Icon(Icons.watch_later,size: 28,),
           title: Text("Watch Later",
           style: TextStyle( fontSize: 16),
          ),
          subtitle: Text("23 unwatched videos"),
         ),

         ListTile(leading: Icon(Icons.brightness_4,size: 28,),
           title: Text("Change Theme",
           style: TextStyle( fontSize: 16),
          ),
          onTap: () {
            changeBrightness();
          },
         ), 

         Container(
           height: 0.60,
           width: double.infinity,
           color: Colors.grey,
         ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Playlists"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Recently added "),
            )
          ],
        ),

        ListTile(
          leading: Icon(Icons.add,color: Colors.blue[800],),
          title: Text("Liked Videos",
          style: TextStyle(
            color: Colors.blue[800],
            fontWeight: FontWeight.bold
           ),
          ),
          subtitle: Text("680 Videos"),
        ),


        ListTile(
          leading: Image(
            height: 150,
            width: 80,
            image: NetworkImage("https://4.bp.blogspot.com/-46z2lhOaFVo/Xebu0OPEPhI/AAAAAAAAIJU/K8usH-qTwckL3a8-ldDRAeJaeQBnqxi9gCLcBGAsYHQ/s1600/Blog_Header.png"),
          ),
          title: Text("Flutter Videos Tutorial in English"),
          subtitle: Text("Smartherd - 34 Videos"),
        ),


        ListTile(
          leading: Image(
            height: 150,
            width: 80,
            image: NetworkImage("https://4.bp.blogspot.com/-46z2lhOaFVo/Xebu0OPEPhI/AAAAAAAAIJU/K8usH-qTwckL3a8-ldDRAeJaeQBnqxi9gCLcBGAsYHQ/s1600/Blog_Header.png"),
          ),
          title: Text("Theory of Computation TE Computer SPPU"),
          subtitle: Text("Technical Solution - 34 Videos"),
        ),


        ListTile(
          leading: Image(
            height: 150,
            width: 80,
            image: NetworkImage("https://4.bp.blogspot.com/-46z2lhOaFVo/Xebu0OPEPhI/AAAAAAAAIJU/K8usH-qTwckL3a8-ldDRAeJaeQBnqxi9gCLcBGAsYHQ/s1600/Blog_Header.png"),
          ),
          title: Text("Computer Network Practical 2020"),
          subtitle: Text("Naresh it Hyderabad - 19 Videos"),
        ),

         ListTile(
          leading: Image(
            height: 150,
            width: 80,
            image: NetworkImage("https://4.bp.blogspot.com/-46z2lhOaFVo/Xebu0OPEPhI/AAAAAAAAIJU/K8usH-qTwckL3a8-ldDRAeJaeQBnqxi9gCLcBGAsYHQ/s1600/Blog_Header.png"),
          ),
          title: Text("LCO Flutter Bootcamp 2020 Jaipur"),
          subtitle: Text("Learncodeonline - 19 Videos"),
        ),
        


        ],
      )
      )
        
      
    );
  }
}