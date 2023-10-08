import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_1/ui/views/movie/main_page.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_1/ui/views/product/main_page.dart';

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
      home: Day8MovieMainPage(),
    );
  }
}
