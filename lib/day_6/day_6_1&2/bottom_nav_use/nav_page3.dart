import 'package:flutter/material.dart';

class NavPage3 extends StatefulWidget {
  const NavPage3({super.key});

  @override
  State<NavPage3> createState() => _NavPage3State();
}

class _NavPage3State extends State<NavPage3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'PAGE 3',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
