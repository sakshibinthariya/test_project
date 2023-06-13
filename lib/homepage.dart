import 'package:flutter/material.dart';
import 'package:test_project/create.dart';
import 'package:test_project/discover.dart';
import 'package:test_project/profile.dart';
import 'package:test_project/search.dart';
import 'package:test_project/shopping.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[

    Text('Discover',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal)),
    Text('Search',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal)),
    Text('Create',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal)),
    Text('Shopping',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal)),
    Text('Profile',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal)),
  ];

  void _itemClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [];
  @override
  void initState() {
    pages = [
      Discover(),
      Search(),
      Create(),
      Shopping(),
      Profile(),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
       // child: _widgetOptions.elementAt(_selectedIndex),
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(
                AssetImage("assets/images/discover.png"),
                color: Colors.amber,
                /* color: currentIndex == 0
          ? Colors.orange
          : Colors.black,*/
              ),
              label: 'Discover',
              backgroundColor: Colors.black12,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/search.png")),
              label: 'Search',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/create.png")),
              label: 'Create',
              backgroundColor: Colors.black12,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/shopping.png")),
              label: 'Shopping',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/profile.png")),
              label: 'Profile',
              backgroundColor: Colors.grey,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.amber,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          iconSize: 25,
          onTap: _itemClick,
          backgroundColor: Colors.grey.shade900,
          elevation: 5),

    );
  }
}
