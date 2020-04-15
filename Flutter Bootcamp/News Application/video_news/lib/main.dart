import 'package:flutter/material.dart';
import 'package:video_news/Categories.dart';
import 'package:video_news/HomePage.dart';
import 'package:video_news/Profile.dart';
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
    Categories(),
    Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: DynamicTheme(
            defaultBrightness: Brightness.light,
            data: (brightness) => new ThemeData(
                  primaryColor: Colors.red,
                  brightness: brightness,
                ),
            themedWidgetBuilder: (context, theme) {
              return new MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'NEWS',
                  theme: theme,
                  home: Scaffold(
                    body: array[currentIndex],
                    bottomNavigationBar: BottomNavigationBar(
                      onTap: onTabTapped, // new
                      currentIndex: currentIndex,
                      fixedColor: Colors.red,
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), title: Text('Home')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.whatshot),
                            title: Text('Categories')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.subscriptions),
                            title: Text('Profile')),
                      ],
                    ),
                  ));
            }));
  }
}
