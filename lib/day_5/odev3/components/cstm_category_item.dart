import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/colors.dart';

class CustomCategoryItem extends StatelessWidget {
  final String title;
  final String imagePath;
  CustomCategoryItem({
    required this.title,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        color: oGrayColor.withOpacity(.15),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset('assets/ic_${imagePath}.png'),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(color: oGrayColor),
          )
        ],
      ),
    );
  }
}
