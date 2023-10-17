import 'package:flutter/material.dart';

class D8AnaSayfa extends StatefulWidget {
  const D8AnaSayfa({super.key});

  @override
  State<D8AnaSayfa> createState() => _D8AnaSayfaState();
}

class _D8AnaSayfaState extends State<D8AnaSayfa> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  int resultText = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC Pattern'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                resultText.toString(),
                style: TextStyle(fontSize: 35),
              ),
              TextField(
                controller: num1Controller,
                decoration: InputDecoration(hintText: 'Sayı 1'),
              ),
              TextField(
                controller: num2Controller,
                decoration: InputDecoration(hintText: 'Sayı 1'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String getNumber1 = num1Controller.text;
                      String getNumber2 = num2Controller.text;
                      int num1 = int.parse(getNumber1);
                      int num2 = int.parse(getNumber2);
                      int result = num1 + num2;
                      setState(() {
                        resultText = result;
                      });
                    },
                    child: Text('Topla'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String getNumber1 = num1Controller.text;
                      String getNumber2 = num2Controller.text;
                      int num1 = int.parse(getNumber1);
                      int num2 = int.parse(getNumber2);
                      int result = num1 * num2;
                      setState(() {
                        resultText = result;
                      });
                    },
                    child: Text('Çarp'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
