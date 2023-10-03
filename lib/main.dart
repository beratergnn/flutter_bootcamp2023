import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/pages/detail_page.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/pages/navpages/bottom_nav_bar.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/pages/navpages/home_page.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/pizza_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // Sağ üstteki debug yazısını kaldırmak için
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNavBar(),
    );
  }
}
