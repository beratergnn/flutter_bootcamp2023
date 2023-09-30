// Kalıcı bir depolama sağlamaz.
// HashSet e bir veri eklendiğinde sırası karışır. Ekleme sırası ile görüntüleme sırası farklıdır.
// HashSet e aynı veriden bir adet daha eklenemez.
// HashMap list in geliştirilmiş halidir listede indexde değişiklik yapılamaz erişim için kullanılır.
// Kendimize ait bir listelem yapısı istiyor isek HashMap kullanmalıyız.

void main() {
  var plakalar = [16, 23, 6]; // 0->16, 1->23, 2->6
  var meyveler = <String>[]; // String veri tipinde değer taşıyan liste
  meyveler.add("Muz"); // 0.index "Muz"
  meyveler.add("Kiraz"); // 1.index "Kiraz"
  meyveler.add("Elma"); // 2.index "Elma"

  // Listedeki verinin içeriğini değiştirmek için
  meyveler[2] = "Avakado"; // "Elma" -> "Avakado"

  // Herhangi bir indexsine eleman ekleme
  // Şuan Muz,Kiraz,Avakado
  meyveler.insert(1, "Çilek");
  // Şuan Muz,Çilek,Kiraz,Avakado

  print(meyveler.length); // Kaç elemanlı ?
  print(meyveler.isEmpty); // Liste boş mu? true or false
  print(meyveler.isNotEmpty); // Liste boş değil mi? true or false

  // liste içinde gezinme - for each
  for (var meyve in meyveler) {
    print(meyve); // Muz,Çilek,Kiraz,Avakado
  }
  // liste içinde gezinme - for
  for (int i = 0; i < meyveler.length; i++) {
    print('$i. index: ${meyveler[i]}');
  }

  // Mevcut listeyi terse çevirme
  List<String> liste = meyveler.reversed.toList();

  // Sıralama yapmak için Stringler için alfabetik sıralama yapar
  meyveler.sort();
  print(meyveler);

  // Eleman silmek için
  meyveler.removeAt(1); // 1=indexsi belirtir, 1.indeksteki veriyi siler

  // Listeyi sıfırlamak için
  meyveler.clear();
}
