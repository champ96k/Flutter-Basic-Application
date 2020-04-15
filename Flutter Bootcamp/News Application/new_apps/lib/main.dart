import 'package:flutter/material.dart';
import 'package:new_apps/HomePage.dart';
import 'package:dynamic_theme/dynamic_theme.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
        primarySwatch: Colors.indigo,
        brightness: brightness,
      ),
      themedWidgetBuilder: (context, theme) {
        return new MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News App',
          theme: theme,
          home: new HomePage(),
        );
      }
    );
  }
}