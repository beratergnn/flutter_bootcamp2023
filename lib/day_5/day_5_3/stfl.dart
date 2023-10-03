import 'package:flutter/material.dart';

// State
/*  
  - Arayüzde bir değişiklik yapılması isteniyor ise state özelliği kullanılmalıdır.
  - Sayfa dinamik değil ise ve örnek olarak sadece bilgi vermek amaçlı bir sayfa ise stateless sayfa yapısı kullanılmalıdır.
  - build metodu Scaffold içinde tasarlanan sayfayı device üzerinde çizimini yapan metod.

*/
class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print('build() metodu çalıştı.');
    return Scaffold(
      appBar: AppBar(title: Text('Anasayfa')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç: ${counter}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          ],
        ),
      ),
    );
  }
}
