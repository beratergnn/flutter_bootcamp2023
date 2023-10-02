// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_bootcamp2023/day_5/odev3/colors.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/components/cstm_category_container.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/components/cstm_category_item.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/components/cstm_popular_des_container.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/components/cstm_title.dart';

class Odev3HomePage extends StatelessWidget {
  const Odev3HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screnSize = MediaQuery.of(context).size;
    return Scaffold(appBar: buildAppBar(), body: buildBody(screnSize));
  }

  Container buildBody(Size screnSize) {
    return Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            CustomTitle(title: 'Category', viewAllOnTap: () {}),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCategoryItem(title: 'Mountain', imagePath: 'mountain'),
                  SizedBox(width: 20),
                  CustomCategoryItem(
                      title: 'Waterfall', imagePath: 'waterfall'),
                  SizedBox(width: 20),
                  CustomCategoryItem(title: 'River', imagePath: 'river'),
                  SizedBox(width: 20),
                  CustomCategoryItem(title: 'Forest', imagePath: 'forest'),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCategoryContainer(
                    imagePath: 'rinjani_mountain',
                    title: 'Rinjani Mountain',
                    location: 'Lombok, Indonesia',
                    price: '\$48',
                  ),
                  SizedBox(width: 20),
                  CustomCategoryContainer(
                    imagePath: 'bromo_mountain',
                    title: 'Bromo Mountain',
                    location: 'East Java, Indonesia',
                    price: '\$66',
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 30),
            CustomTitle(title: 'Popular Destination', viewAllOnTap: () {}),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  CustomPopularDesContainer(
                    imagePath: 'pink_beach',
                    title: 'The Pink Beach',
                    loc: 'Komodo Island, Indonesia',
                    description:
                        'This exceptional beach gets its striking color from microscopic animals called...',
                    price: '\$48',
                    screnSize: screnSize,
                  ),
                  SizedBox(height: 10),
                  CustomPopularDesContainer(
                    imagePath: 'meru_tower',
                    title: 'Meru Tower',
                    loc: 'Bali, Indonesia',
                    description:
                        'A Meru tower or pelinggih meru is the principal shrine of a Balinese temple. It is a wooden..',
                    price: '\$36',
                    screnSize: screnSize,
                  ),
                  SizedBox(height: 10),
                  CustomPopularDesContainer(
                    imagePath: 'toraja_land',
                    title: 'Toraja Land',
                    loc: 'South Sulawesi, Indonesia',
                    description:
                        'Toraja land is one the tourist destination area in indonesia that must be visited because it..',
                    price: '\$47',
                    screnSize: screnSize,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: oGrayColor.withOpacity(.15)),
        child: Icon(Icons.menu, color: oGrayColor.withOpacity(.6)),
      ),
      title: Column(
        children: [
          Text(
            'Current Location',
            style: TextStyle(color: oGrayColor, fontSize: 14),
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: oTextColor,
                size: 18,
              ),
              SizedBox(width: 5),
              Text(
                'Denpasar, Bali',
                style: TextStyle(
                  color: oDarkColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: oGrayColor.withOpacity(0.5),
                  offset: const Offset(0, 3),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Image.asset(
              'assets/ic_action.png',
            ),
          ),
        ),
      ],
    );
  }
}
