import 'package:flutter_bootcamp2023/day_3/day_3_1/cons_enum.dart';

void main() {
  // enum kullanımı.
  ucretHesapla(KonserveBoyut.orta, 10);
}

/* Kısaca Enum değerlerin en büyük avantajı okunulabilir olmayan 
 veya aynı çeşitte sabit değerlerle ifade edilen static değerlerin 
 daha basit yapılara çevrilmesidir. */
void ucretHesapla(KonserveBoyut boyut, int adet) {
  switch (boyut) {
    case KonserveBoyut.kucuk:
      print("Toplam maliyet: ${adet * 30} tl");
      break;
    case KonserveBoyut.orta:
      print("Toplam maliyet: ${adet * 45} tl");
      break;
    case KonserveBoyut.buyuk:
      print("Toplam maliyet: ${adet * 60} tl");
      break;
    default:
  }
}

// Daha detaylı bakmak için not 
// https://medium.com/teamkraken/flutter-ve-dart-enum-kullan%C4%B1m%C4%B1-dea129d60263#:~:text=Enumeration%20(k%C4%B1saca%20Enum%20olarak%20kullan%C4%B1l%C4%B1r,ile%20Dart%20kullan%C4%B1c%C4%B1lar%C4%B1n%C4%B1n%20hayat%C4%B1na%20girdi.

