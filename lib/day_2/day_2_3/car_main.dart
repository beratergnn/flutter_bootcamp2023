import 'package:flutter_bootcamp2023/day_2/day_2_3/car.dart';

void main() {
  var bmw = Araba2(renk: "Mor", hiz: 210, calisiyorMu: true);

  // Yerine
  // print("-----------");
  // print("Renk         : ${bmw.renk}");
  // print("Hız          : ${bmw.hiz}");
  // print("Calışıyor mu : ${bmw.calisiyorMu}");

  bmw.bilgiAl();
  bmw.calistir();
  bmw.bilgiAl();
  bmw.durdur();
  bmw.calistir();
  bmw.bilgiAl();
  bmw.hizlan(50);
  bmw.bilgiAl();
  bmw.yavasla(20);
  bmw.bilgiAl();
}
