import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/colors.dart';

class DetailInfoContainer extends StatelessWidget {
  const DetailInfoContainer({
    super.key,
    required this.screnSize,
    required this.title,
    required this.location,
    required this.price,
    required this.description,
    required this.rating,
    required this.imagePath,
  });

  final Size screnSize;
  final String title, location, price, description, rating;
  final List<String> imagePath;
  @override
  Widget build(BuildContext context) {
    print('@@@@@@@@@@@@@@@@@@@@@@@@');
    print(imagePath[0]);
    print(imagePath[1]);
    print(imagePath[2]);
    print(imagePath[3]);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      width: screnSize.width,
      decoration: BoxDecoration(
        color: oBackGroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: oDarkColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: oTextColor,
                      ),
                      SizedBox(width: 5),
                      Text(
                        location,
                        style: TextStyle(
                          color: oTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      color: oDarkColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '/Person',
                    style: TextStyle(
                      color: oGrayColor,
                      fontSize: 14,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            description,
            overflow: TextOverflow.ellipsis,
            maxLines: 6,
            style: TextStyle(
              color: oGrayColor,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Preview',
                style: TextStyle(
                  color: oDarkColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                decoration: BoxDecoration(
                    color: oGrayColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade300,
                    ),
                    SizedBox(width: 3),
                    Text(
                      rating,
                      style: TextStyle(
                        color: oGrayColor,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset('assets/ic_${imagePath[0]}.png'),
                SizedBox(width: 10),
                Image.asset('assets/ic_${imagePath[1]}.png'),
                SizedBox(width: 10),
                Image.asset('assets/ic_${imagePath[2]}.png'),
                SizedBox(width: 10),
                Image.asset('assets/ic_${imagePath[3]}.png'),
              ],
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: oTextColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Book Now',
                style: TextStyle(
                    color: oBackGroundColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
