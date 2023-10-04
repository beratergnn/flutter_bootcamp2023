import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_6/odev4/pages/a_page.dart';
import 'package:flutter_bootcamp2023/day_6/odev4/pages/x_page.dart';

class PageMain extends StatelessWidget {
  const PageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE MAİN'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PageA()));
              },
              child: Text('Go to the A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PageX()));
              },
              child: Text('Go to the X Page'),
            ),
          ],
        ),
      ),
    );
  }
}
