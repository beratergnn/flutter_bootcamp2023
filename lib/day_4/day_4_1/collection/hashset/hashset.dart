import 'dart:collection';

void main() {
  var plakalar = HashSet.from([61, 34, 53]);
  print(plakalar);
  var meyveler = HashSet<String>();

  meyveler.add("Kiraz");
  meyveler.add("Muz");
  meyveler.add("Elma");

  print(meyveler);

  var s = meyveler.add("Elma");
  // Aynı eleman tekrar eklenmeye çalışacağından eklemez ama hata da fırlatmaz vurası false döndürür
  print(s); // false

  print("Boyut: ${meyveler..length}");
  print("Boş mu?: ${meyveler.isEmpty}");

  for (var meyve in meyveler) {
    print(meyve);
  }

  for (var i = 0; i < meyveler.length; i++) {
    print('$i.index: ${meyveler.elementAt(i)}');
  }

  // -
  print("-");
  meyveler.remove("Elma");
  print(meyveler);
}
