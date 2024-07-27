import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydoctor/screens/home_screen.dart';
import 'package:mydoctor/screens/message_screen.dart';
import 'package:mydoctor/screens/schedule_screen.dart';
import 'package:mydoctor/screens/settings_screen.dart';

class NavbarRoutes extends StatefulWidget {
  const NavbarRoutes({super.key});

  @override
  State<NavbarRoutes> createState() => _NavbarRoutesState();
}

class _NavbarRoutesState extends State<NavbarRoutes> {
  int _selectedIndex = 0;
  final _screens = [
    //home screen
    HomeScreen(),
    //message screen
    MessageScreen(),
    //schedule screen
    const ScheduleScreen(),
    //settings screen
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Schedule'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}
