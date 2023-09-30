import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_4/day_4_2&3/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pizza',
          style: TextStyle(
            color: textColorOne,
            fontFamily: "Pacifico",
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
      body: Center(
        // Yatayda ortalama
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortalama
          children: [
            Text(
              'Merhaba Dünya',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
