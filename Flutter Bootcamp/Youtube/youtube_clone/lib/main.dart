import 'package:flutter/material.dart';
import 'package:youtube_clone/HomePage.dart';
import 'package:youtube_clone/Libary.dart';
import 'package:youtube_clone/Subscriptions.dart';
import 'package:youtube_clone/Trending.dart';
import 'package:youtube_clone/inbox.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  var array = [
    HomePage(),
    Trending(),
    Subscriptions(),
    inbox(),
    Libary(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData( 
        ),
        debugShowCheckedModeBanner: false,
        home: DynamicTheme(
            defaultBrightness: Brightness.light,
            data: (brightness) => new ThemeData(
                 primaryColor: Colors.white,
                  brightness: brightness,
                ),
            themedWidgetBuilder: (context, theme) {
              return new MaterialApp(
                debugShowCheckedModeBanner: false, 
                  title: 'YouTube',
                  theme: theme,
                  home: Scaffold(
                    body: array[currentIndex],
                    bottomNavigationBar: BottomNavigationBar(
                      
                      onTap: onTabTapped, // new
                      currentIndex: currentIndex,
                      type: BottomNavigationBarType.fixed,
                      fixedColor: Colors.red,
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), title: Text('Home')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.whatshot),
                            title: Text('Trending')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.subscriptions),
                            title: Text('Subscriptions')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.mail_outline),
                            title: Text('Inbox')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.library_music),
                            title: Text('Libary')),
                      ],
                    ),
                   )
                  );
             }
            )
          );
  }
}
