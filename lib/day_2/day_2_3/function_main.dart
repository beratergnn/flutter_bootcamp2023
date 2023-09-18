import 'package:flutter_bootcamp2023/day_2/day_2_3/function.dart';
import 'package:flutter_bootcamp2023/day_2/day_2_3/odev2.dart';

void main(List<String> args) {
  var f = Fonksiyonlar();
  f.selamla();

  String result = f.selamla2();
  print(result);

  f.selamla3("Berhat");

  print(f.toplama(10, 20));

  var odevDeneme = Odev2();
  print(odevDeneme.icAciHesapla(3));
  print(odevDeneme.maasHesapla(20, 8));
  print(odevDeneme.otoparkUcretHesapla(1));
  print(odevDeneme.kmToMill(5));
  print(odevDeneme.dikdortgenAlan(5, 10));
  print(odevDeneme.fakHesap(10));
  print(odevDeneme.eHesap("Berat Ergün"));
}
