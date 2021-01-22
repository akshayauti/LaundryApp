import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Laundry App"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.yellow,
          child: Text("More info"),
          onPressed: () {
            Navigator.of(context).pushNamed('/overview');
          },
        ),
      ),
    );
  }
}
