import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'nav_pages/chatting.dart';
import 'nav_pages/events.dart';
import 'nav_pages/profile.dart';
import 'nav_pages/teams_list.dart';
import 'nav_pages/user_feed.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List navPages =  [
    TeamList(),
    Chatting(),
    UserFeed(),
    Events(),
    Profile()
  ];

  int currentIndex = 2;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: bottomNavBgColor,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unSelectedItemColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items:  const [
            BottomNavigationBarItem(icon:Icon(Icons.account_box_outlined), label: "Teams"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_rounded), label: "Chatting"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo_outlined), label: "UserFeed"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded), label: "Events"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: "Profile"),
          ]),
    );
  }
}
