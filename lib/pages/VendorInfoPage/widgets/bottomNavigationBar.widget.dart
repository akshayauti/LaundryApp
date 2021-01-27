import 'package:flutter/material.dart';

import 'package:LaundryApp/MenuPage.dart';
import 'package:LaundryApp/pages/VendorInfoPage/OverviewPage/page/OverviewPage.dart';
import 'package:LaundryApp/PhotosPage.dart';
import 'package:LaundryApp/ReviewPage.dart';

class BottomNaviagtionBar extends StatefulWidget {
  @override
  _BottomNaviagtionBarState createState() => _BottomNaviagtionBarState();
}

class _BottomNaviagtionBarState extends State<BottomNaviagtionBar> {
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
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Photos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_album),
            label: 'Reviews',
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
