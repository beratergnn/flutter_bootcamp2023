import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_1/data/entity/movies_model.dart';

class Day8MovieDetailPage extends StatefulWidget {
  final MovieModel model;

  const Day8MovieDetailPage({super.key, required this.model});
  @override
  State<Day8MovieDetailPage> createState() => _Day8MovieDetailPageState();
}

class _Day8MovieDetailPageState extends State<Day8MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.model.movieName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                widget.model.movieImagePath,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              '${widget.model.moviePrice} ₺',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
