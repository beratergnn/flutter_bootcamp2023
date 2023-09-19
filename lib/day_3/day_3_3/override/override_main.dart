// Üst class fonksiyonunun alt class da tekrar kullanılmasına override denir.
//    Hayvan
//      |
//    Memeli
//      |
//  Kedi - Kopek

import 'package:flutter_bootcamp2023/day_3/day_3_3/override/hayvan.dart';
import 'package:flutter_bootcamp2023/day_3/day_3_3/override/kedi.dart';
import 'package:flutter_bootcamp2023/day_3/day_3_3/override/kopek.dart';
import 'package:flutter_bootcamp2023/day_3/day_3_3/override/memeli.dart';

void main() {
  Hayvan hayvan = Hayvan();
  Memeli memeli = Memeli();
  Kedi kedi = Kedi();
  Kopek kopek = Kopek();

  hayvan.sesCikar(); // Sesim yok. - Katılım yok kendi fonk erişti
  memeli
      .sesCikar(); // Sesim yok. - Katılım var üst classın fonksiyonuna erişiyor.
  kedi.sesCikar(); // Miyav miyav. - Katılım var fonksiyonuna erişiyor.
  kopek.sesCikar(); // Hav hav.    - Katılım var fonksiyonuna erişiyor.
}
