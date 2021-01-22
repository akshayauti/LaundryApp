import 'package:flutter/material.dart';

import 'package:LaundryApp/MenuPage.dart';
import 'package:LaundryApp/OverviewPage.dart';
import 'package:LaundryApp/PhotosPage.dart';
import 'package:LaundryApp/ReviewPage.dart';

/// This is the stateful widget that the main application instantiates.
class Overview extends StatefulWidget {
  Overview({Key key}) : super(key: key);

  @override
  _Overview createState() => _Overview();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Overview extends State<Overview> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  final List<Widget> _widgetOptions = <Widget>[
    OverviewPage(),
    MenuPage(),
    PhotosPage(),
    ReviewPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_album),
            label: 'Photos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
