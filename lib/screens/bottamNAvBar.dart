import 'package:fast_food/screens/profile.dart';
import 'package:fast_food/screens/restaurents.dart';
import 'package:fast_food/screens/search.dart';
import 'package:flutter/material.dart';

import 'discoveryPage.dart';
import 'favourite.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  List<Widget> screens = [
    Discovery(),
    Restaurent(),
    Search(),
    Favorite(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // extendBody: true,
      body: screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(left: 20,right: 20,bottom: 5),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 10,
          showUnselectedLabels: true,
          selectedLabelStyle:
              TextStyle(color: Colors.pink, fontWeight: FontWeight.w900),
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/explore.png"),
                size: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              //backgroundColor: Colors.cyan,
              icon: ImageIcon(
                AssetImage("assets/store.png"),
                size: 20,
              ),
              label: 'Restaurent',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            // Add more items as needed
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
