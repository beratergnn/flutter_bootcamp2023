import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_1/data/entity/product_model.dart';

class Day8_1DetailPage extends StatefulWidget {
  final ProductModel product;

  const Day8_1DetailPage({super.key, required this.product});

  @override
  State<Day8_1DetailPage> createState() => _Day8_1DetailPageState();
}

class _Day8_1DetailPageState extends State<Day8_1DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.productName),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.product.productImagePath,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Text(
              '${widget.product.productPrice} ₺',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
