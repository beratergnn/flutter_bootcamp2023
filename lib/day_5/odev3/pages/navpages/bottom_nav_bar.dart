import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/colors.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/pages/navpages/favorite_page.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/pages/navpages/home_page.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/pages/navpages/profile_page.dart';
import 'package:flutter_bootcamp2023/day_5/odev3/pages/navpages/shop_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    Odev3HomePage(),
    Odev3FavoritePage(),
    Odev3ShopPage(),
    Odev3ProfilePage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: oBackGroundColor,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: oBackGroundColor,
        // background color u dümdüz verirsen değişmez çünkü type belirtmen lazım ondan sonra verilir.
        type: BottomNavigationBarType.fixed,
        // itemlerin sağa sola doğru açılmasını engeller oldukları yerlerde dururlar
        elevation: 0,
        selectedItemColor: oTextColor,
        unselectedItemColor: oGrayColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        // Navbardaki itemin seçili olmasını gösteren index
        unselectedFontSize: 0,
        selectedFontSize: 0,
        // font size 0 lama sebebi biz bunları görünmez yaptık ama hala oradalar ve tıklanabilirler
        // tıklandıklarındada bir eylem gerçekleşmediğinden hata alınır bu hatayı ortadan kaldırmak için
        onTap: onTap,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(
              label: 'Favorite', icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
              label: 'Shop', icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
