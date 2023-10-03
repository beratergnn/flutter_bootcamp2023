// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/colors.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/components/cstm_category_container.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/components/cstm_category_item.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/components/cstm_popular_des_container.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/components/cstm_title.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/models/category_image_model.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/models/category_item_model.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/models/popular_destination_model.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/pages/detail_page.dart';

class Odev3HomePage extends StatelessWidget {
  Odev3HomePage({super.key});

  List<CategoryItemModel> categoryItems = [];
  List<CategoryImageModel> categoryImages = [];
  List<PopularDestinationModel> destinationItems = [];

  void _getInitialInfo() {
    categoryItems = CategoryItemModel.getItems();
    categoryImages = CategoryImageModel.getImages();
    destinationItems = PopularDestinationModel.getDestinations();
  }

  @override
  Widget build(BuildContext context) {
    Size screnSize = MediaQuery.of(context).size;

    _getInitialInfo();

    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(screnSize),
    );
  }

  Container buildBody(Size screnSize) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          CustomTitle(title: 'Category', viewAllOnTap: () {}),
          SizedBox(height: 20),
          _categoryItems(),
          SizedBox(height: 20),
          _categoryImages(),
          SizedBox(height: 30),
          CustomTitle(title: 'Popular Destination', viewAllOnTap: () {}),
          SizedBox(height: 20),
          _destinationItems(screnSize)
        ],
      ),
    );
  }

  Container _destinationItems(Size screnSize) {
    return Container(
      height: 250,
      child: ListView.separated(
          itemCount: destinationItems.length,
          scrollDirection: Axis.vertical,
          // padding: EdgeInsets.only(left: 20, right: 20),
          separatorBuilder: (context, index) => SizedBox(height: 20),
          itemBuilder: (context, index) {
            return CustomPopularDesContainer(
              title: destinationItems[index].title,
              location: destinationItems[index].location,
              description: destinationItems[index].description,
              price: destinationItems[index].price,
              imagePath: destinationItems[index].imagePath,
              screnSize: screnSize,
            );
          }),
    );
  }

  Container _categoryImages() {
    return Container(
      height: 170,
      child: ListView.separated(
          itemCount: categoryImages.length,
          scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.only(left: 20, right: 20),
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemBuilder: (context, index) {
            return CustomCategoryImages(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Odev3DetailPage()),
                );
              },
              title: categoryImages[index].title,
              imagePath: categoryImages[index].imagePath,
              location: categoryImages[index].location,
              price: categoryImages[index].price,
            );
          }),
    );
  }

  Container _categoryItems() {
    return Container(
      height: 50,
      child: ListView.separated(
          itemCount: categoryItems.length,
          scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.only(left: 20, right: 20),
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemBuilder: (context, index) {
            return CustomCategoryItem(
              title: categoryItems[index].title,
              imagePath: categoryItems[index].imagePath,
            );
          }),
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
