// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_bootcamp2023/day_4/day_4_2&3/colors.dart';

class PizzaPage extends StatefulWidget {
  const PizzaPage({super.key});

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;
    print(screenHeight);
    print(screenWidth);

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
      body: Column(
        children: [
          Text('Beed Cheese',
              style: TextStyle(
                  fontSize: 36, color: mainColor, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/pizza.jpeg',
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customTextButton(title: 'Cheese'),
              customTextButton(title: 'Sausage'),
              customTextButton(title: 'Olive'),
              customTextButton(title: 'Pepper'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  '20 min',
                  style: TextStyle(
                      fontSize: 22,
                      color: textColorTwo,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Delivery',
                    style: TextStyle(
                        fontSize: 22,
                        color: mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Meat lover, get ready to meet your pizza!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: textColorTwo),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('\$ 5.98',
                  style: TextStyle(
                      fontSize: 44,
                      color: mainColor,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 50,
                width: 200,
                child: TextButton(
                  onPressed: () {},
                  child: Text('ADD TO CART',
                      style: TextStyle(color: textColorOne, fontSize: 18)),
                  style: TextButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class customTextButton extends StatelessWidget {
  customTextButton({
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(title, style: TextStyle(color: textColorOne)),
      style: TextButton.styleFrom(backgroundColor: mainColor),
    );
  }
}
