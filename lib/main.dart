import 'package:flutter/material.dart';
import 'homepage.dart';
import 'overview.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  // AssetImage akshay = AssetImage("images/badge.png");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Laundry App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Colors.black,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (context) => MyHomePage(),
        "/overview": (context) => Overview(),
      },
    );
  }
}
