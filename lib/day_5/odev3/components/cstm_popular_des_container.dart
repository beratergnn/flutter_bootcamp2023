import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/colors.dart';

class CustomPopularDesContainer extends StatelessWidget {
  const CustomPopularDesContainer({
    super.key,
    required this.screnSize,
    required this.title,
    required this.loc,
    required this.description,
    required this.price,
    required this.imagePath,
  });

  final Size screnSize;
  final String imagePath;
  final String title;
  final String loc;
  final String description;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: oBackGroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: oGrayColor.withOpacity(0.15),
            offset: const Offset(5, 10),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/ic_${imagePath}.png"),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: oDarkColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 12,
                    color: oTextColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    loc,
                    style: TextStyle(
                      color: oTextColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screnSize.width * .59,
                child: Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    color: oGrayColor,
                    fontSize: 10,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      color: oDarkColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '/Person',
                    style: TextStyle(
                      color: oGrayColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
