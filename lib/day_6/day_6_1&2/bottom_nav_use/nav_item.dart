import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_6/day_6_1&2/bottom_nav_use/nav_page1.dart';
import 'package:flutter_bootcamp2023/day_6/day_6_1&2/bottom_nav_use/nav_page2.dart';
import 'package:flutter_bootcamp2023/day_6/day_6_1&2/bottom_nav_use/nav_page3.dart';

class NavItem extends StatefulWidget {
  const NavItem({super.key});

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  int currentIndex = 0;
  List pages = [
    NavPage1(),
    NavPage2(),
    NavPage3(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PAGE ${currentIndex + 1}',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: Colors.grey.shade300,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade500,
        items: const [
          BottomNavigationBarItem(
              label: '1', icon: Icon(Icons.looks_one_outlined)),
          BottomNavigationBarItem(
              label: '2', icon: Icon(Icons.looks_two_outlined)),
          BottomNavigationBarItem(
              label: '3', icon: Icon(Icons.looks_3_outlined)),
        ],
      ),
    );
  }
}
