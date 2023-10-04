import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Day7MainPage extends StatefulWidget {
  const Day7MainPage({super.key});

  @override
  State<Day7MainPage> createState() => _Day7MainPageState();
}

class _Day7MainPageState extends State<Day7MainPage> {
  var tfController = TextEditingController();
  String data = "";
  String imagePath = "svg_mood.svg";
  bool check = true;
  bool checkSwitch = false;
  bool checkCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(data),
            TextField(
              controller: tfController,
              decoration: InputDecoration(
                hintText: 'Data',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  data = tfController.text;
                });
                tfController.text = "";
              },
              child: Text('fetch Data'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      imagePath = "svg_mood.svg";
                      check = true;
                    });
                  },
                  child: Text('Resim 1'),
                ),
                SvgPicture.asset(
                  'assets/day7/${imagePath}',
                  width: 50,
                  color: check ? Colors.green : Colors.red,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      imagePath = "svg_mood_bad.svg";
                      check = false;
                    });
                  },
                  child: Text('Resim 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
