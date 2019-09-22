import 'package:flutter/material.dart';

import 'about_page.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeBottomNavBarState createState() => _HomeBottomNavBarState();
}

// TODO: add save state when tabs changed
class _HomeBottomNavBarState extends State<Home> {
  final _mainHomeTitle = 'Home';
  final _tabHomeTitle = 'Home';
  final _tabAboutTitle = 'About';
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    AboutPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_mainHomeTitle),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text(_tabHomeTitle),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text(_tabAboutTitle),
          )
        ],
      ),
    );
  }
}