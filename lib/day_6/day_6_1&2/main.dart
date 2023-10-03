import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_6/day_6_1&2/bottom_nav_use/nav_item.dart';
import 'package:flutter_bootcamp2023/day_6/day_6_1&2/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NavItem(),
    );
  }
}
