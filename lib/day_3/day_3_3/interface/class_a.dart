import 'package:flutter_bootcamp2023/day_3/day_3_3/interface/my_interface.dart';

class ClassA implements MyInterface {
  @override
  int degisken = 10;

  @override
  void metod1() {
    print("Metod1 çalıştı!");
  }

  @override
  String metod2() {
    return "Metod2 çalıştı!";
  }
}
