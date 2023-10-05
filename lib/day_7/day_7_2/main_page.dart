import 'package:flutter/material.dart';

class Day72MainPage extends StatefulWidget {
  const Day72MainPage({super.key});

  @override
  State<Day72MainPage> createState() => _Day72MainPageState();
}

class _Day72MainPageState extends State<Day72MainPage> {
  List<String> countryList = [];
  String currentCountry = 'Türkiye';
  @override
  void initState() {
    super.initState();
    countryList.add('Türkiye');
    countryList.add('Almanya');
    countryList.add('Fransa');
    countryList.add('İtalya');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButton(
              value: currentCountry,
              icon: Icon(Icons.arrow_drop_down),
              items: countryList.map((country) {
                return DropdownMenuItem(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (current) {
                setState(() {
                  currentCountry = current!;
                });
              },
            ),
            GestureDetector(
              onTap: () {
                print('Tek tıklandı.');
              },
              onDoubleTap: () {
                print('Çift tıklandı.');
              },
              onLongPress: () {
                print('Uzun tıklandı.');
              },
              child: Container(
                width: 200,
                height: 50,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
