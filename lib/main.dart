import 'package:LaundryApp/ReviewPage.dart';
import 'package:LaundryApp/addReview.dart';
import 'package:LaundryApp/pages/MenuPhotos/photos.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'overview.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  // AssetImage akshay = AssetImage("images/badge.png");
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.green);

    return MaterialApp(
      title: "Laundry App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          primaryColor: Colors.black,
          secondaryHeaderColor: Colors.green),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (context) => MyHomePage(),
        "/overview": (context) => Overview(),
        "/addReview": (context) => addReview(),
        "/reviewPage": (context) => ReviewPage(),
        "/photos": (context) => Photos()
      },
    );
  }
}
