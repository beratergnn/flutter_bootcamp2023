// Static DEğişkenler ve Metodlar
// class ismi ile direkt olarak erişilebilen değişken ve metodlar
// yani o clasın nesnesini oluşturmadan direkt olarak erişim yapılabilen değişken ve metodlar.
import 'package:flutter_bootcamp2023/day_3/day_3_1/a_sinifi.dart';

void main() {
  // Klasik yöntem ASinifi classından bir nesne oluşutrduk ve bu nesne üstünden değişkene ve metoda eriştik.
  var a = ASinifi();
  print(a.degisken);
  a.metod();

  // Diğer yöntem isimsiz nesne oluşturmak ama buda yine nesne oluşturarak olur.
  print(ASinifi().degisken);
  ASinifi().metod();
  // Oluşturulan nesnenin sadece ismi yoktur

  // Static kullanımı :
  print(ASinifi.degisken2);
  ASinifi.metod2();
  // İsimsiz nesne ile karıştırılmamalıdır isimsiz nesne oluştururken sınıf adından sonra parantez kullanımı var.
  // Yani nesne oluşturuluyor ama burada sınıfın bir nesnesi oluşturulmadan direkt sınıfın adı üzerinden static keywordlü yapı ve değişkenlere erişim sağlanıyor.
}
