// Katılımdan farkları interfaceler classlara özellik aktarır.
// Interface i implemente eden class interface in tüm metod ve özelliklerini override etmelidir.
// Mirasdaki gibi tek bir class dan değil , kullanarak birden çok interface i implemente edebilir bir class.

import 'package:flutter_bootcamp2023/day_3/day_3_3/interface/class_a.dart';

void main() {
  var a = ClassA();
  print(a.degisken);
  a.metod1();
  print(a.metod2());
}
