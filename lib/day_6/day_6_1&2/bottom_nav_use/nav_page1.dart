import 'package:flutter/material.dart';

class NavPage1 extends StatefulWidget {
  const NavPage1({super.key});

  @override
  State<NavPage1> createState() => _NavPage1State();
}

class _NavPage1State extends State<NavPage1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'PAGE 1',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
