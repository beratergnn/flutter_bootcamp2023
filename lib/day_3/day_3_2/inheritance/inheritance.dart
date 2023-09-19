// Mevcut sınıftan başka bir sınıf türetmek için
// Kodun tekrar kullanılabilirliğini arttırır.
// ! Her class katılım yoluyla sadece tek bir class dan türeyebilir class C extends A,B{} olmaz,class C extends A{} olur

import 'package:flutter_bootcamp2023/day_3/day_3_2/inheritance/ev.dart';
import 'package:flutter_bootcamp2023/day_3/day_3_2/inheritance/saray.dart';
import 'package:flutter_bootcamp2023/day_3/day_3_2/inheritance/villa.dart';

void main() {
  var topkapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 300);

  print(topkapiSarayi.kuleSayisi);
  print(topkapiSarayi.pencereSayisi);

  var bogazVilla = Villa(garajVarmi: true, pencereSayisi: 200);

  print(bogazVilla.garajVarmi);
  print(bogazVilla.pencereSayisi);

  // -
  // -
  // -

  // Tip kontrolü up-down casting
  if (topkapiSarayi is Saray) {
    print("Saraydir!");
  } else {
    print("Saray değildir!");
  }

  // Downcasting : superclass to subclass
  var ev = Ev(pencereSayisi: 10); // süperclass
  var saray = ev as Saray; // evi saraya çevirdik

  //-
  //-

  // Upcasting
  var s = Saray(kuleSayisi: 10, pencereSayisi: 100);
  Ev e = s; // alttan yukarı doğru bir dönüşüm
}
