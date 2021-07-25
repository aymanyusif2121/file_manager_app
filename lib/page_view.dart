import 'package:flutter/material.dart';

import 'package:weather_clime/screens/home_screen.dart';

import 'screens/cloud_screen.dart';

class PageViewGrid extends StatefulWidget {
  @override
  _PageViewGridState createState() => _PageViewGridState();
}

class _PageViewGridState extends State<PageViewGrid> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'hru',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTappedBar,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        currentIndex: _selectedIndex,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          HomeScreen(),
          BottomNavationBar(),
          HomeScreen(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
      print(value);
    });
    _pageController.jumpToPage(value);
  }
}
