import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_6/day_6_1&2/models/person_model.dart';
import 'package:flutter_bootcamp2023/day_6/day_6_1&2/pages/game_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int counter = 0;
  bool check = false;
  @override
  void initState() {
    super.initState();
    print('initState() calisti');
  }

  // Veritabanı ve Api işlemlerindeki beklenen değerşeri simüle etmek için
  Future<int> plus(int num1, int num2) async {
    return num1 + num2;
  }

  @override
  Widget build(BuildContext context) {
    print('build() calisti');
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Sonuç: ${counter}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                  /* counter değişkenin değeri artırıldı ve setStat ile build metodu tekrar
                    tetiklenip yapılan değişiklik ekranda gösterildi eğer counter değişkeninin 
                    güncellenmesi setState metodu içinde yapılmasaydı güncelleme değişken üstünde
                    tutulurdu ama ekranda güncellenen değer değil build metodu ilk çizildiği andaki
                    değeri gösterilmeye devam ederdi */
                  /* her setState de build metodu tekrardan çalıştırılıp ekran tekrardan çizilir */
                },
                child: Text('Increase'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: Text('Decrease'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              var person =
                  Persons(name: 'Berhat', yas: 23, boy: 1.80, isMarried: false);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GamePage(
                            person: person,
                          ))).then((value) => {
                    print('you are back on the home page'),
                  });
            },
            child: Text('Start'),
          ),
          Divider(),
          Visibility(visible: check, child: Text("Merhaba")),
          Text(
            check ? "True" : "False",
            style: TextStyle(color: check ? Colors.green : Colors.red),
          ),
          Text("Merhaba"),
          (() {
            if (check) {
              return Text('Check Durum: $check',
                  style: TextStyle(color: Colors.green));
            } else {
              return Text('Check Durum: $check',
                  style: TextStyle(color: Colors.red));
            }
          }()),
          ElevatedButton(
            onPressed: () {
              setState(() {
                check = true;
              });
            },
            child: Text('Durum 1 True'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                check = false;
              });
            },
            child: Text('Durum 1 False'),
          ),
          Divider(),
          // Listeleme, veritabanı işlemlerinde bol bol kullanılır.
          FutureBuilder(
              future: plus(20, 30), // kontrol edilecek fonksiyon
              builder: ((context, snapshot) {
                if (snapshot.hasError) {
                  return const Text('HATA!');
                }
                if (snapshot.hasData) {
                  return Text('${snapshot.data}');
                  // snapshot.data fonksiyonun sonucunu alma
                } else {
                  return const Text('SONUÇ YOK!');
                }
              }))
        ],
      ),
    );
  }
}
