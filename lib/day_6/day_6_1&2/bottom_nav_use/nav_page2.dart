import 'package:flutter/material.dart';

class NavPage2 extends StatefulWidget {
  const NavPage2({super.key});

  @override
  State<NavPage2> createState() => _NavPage2State();
}

class _NavPage2State extends State<NavPage2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'PAGE 2',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
