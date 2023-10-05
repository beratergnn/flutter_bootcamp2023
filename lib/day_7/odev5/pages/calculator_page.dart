import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  List<String> items = [
    'C',
    '?',
    '←',
    '÷',
    '7',
    '8',
    '9',
    '×',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '±',
    '0',
    '.',
    '=',
  ];
  String value = '0';
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: screenSize.height * .25,
              width: double.maxFinite,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  value,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: screenSize.height * .60,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (index == 0) {
                            value = '';
                          } else if (index == 1) {
                          } else if (index == 2) {
                            if (value.isNotEmpty) {
                              value = value.substring(0, value.length - 1);
                            }
                          } else if (index == 3) {
                            value = '${value}÷';
                          } else if (index == 4) {
                            value = '${value}7';
                          } else if (index == 5) {
                            value = '${value}8';
                          } else if (index == 6) {
                            value = '${value}9';
                          } else if (index == 7) {
                          } else if (index == 8) {
                          } else if (index == 9) {
                          } else if (index == 10) {
                          } else if (index == 11) {
                          } else if (index == 12) {
                          } else if (index == 13) {
                          } else if (index == 14) {
                          } else if (index == 15) {
                          } else if (index == 16) {
                          } else if (index == 17) {
                          } else if (index == 18) {
                          } else if (index == 19) {}
                        });
                      },
                      child: Card(
                        color: (index == 3 ||
                                index == 7 ||
                                index == 11 ||
                                index == 15 ||
                                index == 19)
                            ? Colors.orange.shade500
                            : Colors.grey.shade500,
                        child: Center(
                          child: Text(
                            '${items[index]}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
