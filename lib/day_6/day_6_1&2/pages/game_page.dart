import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_6/day_6_1&2/models/person_model.dart';
import 'package:flutter_bootcamp2023/day_6/day_6_1&2/pages/result_page.dart';

class GamePage extends StatefulWidget {
  final Persons person;

  const GamePage({super.key, required this.person});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Future<bool> backButton(BuildContext context) async {
    print('Navigation back button clicked');
    return false; // false = geri dönüş olmasın
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Page'),
        leading: IconButton(
          onPressed: () {
            print('appBar arrowBack clicked');
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: WillPopScope(
        onWillPop: () => backButton(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // widget = GamePage
              Text(
                  'Name      :   ${widget.person.name} \nAge         :   ${widget.person.yas}\nSize         :   ${widget.person.boy}\nMarried   :     ${widget.person.isMarried}'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultPage()));
                },
                child: Text('Tıkla'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
