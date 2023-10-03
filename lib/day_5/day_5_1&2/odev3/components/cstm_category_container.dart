// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/colors.dart';

class CustomCategoryImages extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String price;
  final Function()? onTap;
  CustomCategoryImages({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.price,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                height: 170,
                width: 230,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: oBackGroundColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 12,
                      color: oBackGroundColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      location,
                      style: TextStyle(
                        color: oBackGroundColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 120,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    color: oBackGroundColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '/Person',
                  style: TextStyle(
                    color: oBackGroundColor,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
