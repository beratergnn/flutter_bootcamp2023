import 'package:flutter_bootcamp2023/day_2/day_2_2/car.dart';

void main() {
  // Nesne oluşturma
  // var supra = Araba("Mor", 230, true);
  // Sorun şu olabilir oluştururken 230 ve true değerlerinin ne olduğu pek anlaşılır değil.
  // var sahin = Araba("Beyaz", 0, false);

  /* Araba(
    this.renk,
    this.hiz,
    this.calisiyorMu,
  ); */
  // * Bu değerlerin ne olduğunu anlayamadığımız contructor yapısı şimdi güncelledik yenisi ile oluşturalım.

  var newCar = Araba(renk: "Beyaz", hiz: 300, calisiyorMu: true);
  // Değer atama
  newCar.renk = "Mor";
  newCar.hiz = 0;
  newCar.calisiyorMu = false;

  print("-----------");
  print("Renk         : ${newCar.renk}");
  print("Hız          : ${newCar.hiz}");
  print("Calışıyor mu : ${newCar.calisiyorMu}");
}
