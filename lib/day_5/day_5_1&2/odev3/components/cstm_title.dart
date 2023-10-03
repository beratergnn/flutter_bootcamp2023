import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/colors.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final Function()? viewAllOnTap;

  const CustomTitle({super.key, required this.title, this.viewAllOnTap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: oDarkColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: viewAllOnTap,
          child: Row(
            children: [
              Text(
                'View All',
                style: TextStyle(
                  color: oTextColor,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_right_alt_outlined,
                color: oTextColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
