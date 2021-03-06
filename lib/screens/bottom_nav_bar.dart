import 'package:flutter/material.dart';
import 'package:heart_app/screens/profile_screen.dart';

import 'cat_screen.dart';
import 'chat_screen.dart';
import 'home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final screens =[
    HomeScreen(),
    ChatScreen(),
    // CatScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff0ad1a9),
        selectedItemColor: Color(0xfff2870c),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.local_hospital,size: 30,),label: ''),
          // BottomNavigationBarItem(icon: Icon(Icons.category,size: 30,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle,size: 30,),label: ''),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: screens[_currentIndex],
    );
  }
}
