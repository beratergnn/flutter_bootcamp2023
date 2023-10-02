import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/colors.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/pages/components/cstm_detail_info_container.dart';

class Odev3DetailPage extends StatelessWidget {
  const Odev3DetailPage({super.key});
  @override
  Widget build(BuildContext context) {
    Size screnSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          // stack in parentdan w ve h alması zorunlu
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ic_details.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 50,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: oBackGroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.arrow_back, color: oDarkColor)),
                ),
              ),
              Positioned(
                right: 20,
                top: 50,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: oBackGroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.favorite_outline, color: Colors.red)),
                ),
              ),
              Positioned(
                top: 360,
                child: DetailInfoContainer(
                  title: 'Rinjani Mountain',
                  location: 'Lombok, Indonesia',
                  price: '\$48',
                  description:
                      'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
                  rating: '4,8',
                  imagePath: ['det_1', 'det_2', 'det_3', 'det_1'],
                  screnSize: screnSize,
                ),
              )
            ],
          )),
    );
  }
}
