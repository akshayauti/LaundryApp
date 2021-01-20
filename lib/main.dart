import 'package:flutter/material.dart';
import 'homepage.dart';
import 'overview.dart';

void main() => MyApp();

class MyApp extends StatelessWidget {
  AssetImage akshay = AssetImage("images/badge.png");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Laundry App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        "/overview": (context) => Overview(),
      },
    );
  }
}
