import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPAge9_3 extends StatefulWidget {
  const MainPAge9_3({super.key});

  @override
  State<MainPAge9_3> createState() => _MainPAge9_3State();
}

class _MainPAge9_3State extends State<MainPAge9_3> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    // test();
    countCheck();
  }

  Future<void> countCheck() async {
    var sp = await SharedPreferences.getInstance();
    count = sp.getInt('count') ?? 0;

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      count++;
    });

    sp.setInt('count', count);
  }

  Future<void> test() async {
    var sp = await SharedPreferences.getInstance();

    // Veri Kaydı
    sp.setString('name', 'Berhat');
    sp.setInt('age', 23);
    sp.setDouble('size', 1.80);
    sp.setBool('isMarried', false);

    List<String> friendList = ['Ahmet', 'Ali', 'Veli'];
    sp.setStringList('friendList', friendList);
    // Veri Silme
    sp.remove('name');

    // Veri Okuma
    String getName = sp.getString('name') ?? 'no name';
    int getAge = sp.getInt('age') ?? 0;
    double getSize = sp.getDouble('size') ?? 0.0;
    bool getIsMarried = sp.getBool('isMarried') ?? false;
    List<String> getFriendList =
        sp.getStringList('friendList') ?? <String>[]; // or ?? null
    print('name: $getName');
    print('age: $getAge');
    print('size: $getSize');
    print('married: $getIsMarried');
    if (getIsMarried != null) {
      for (String friend in getFriendList) {
        print(friend);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Preferences')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Açılış sayfası $count',
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
