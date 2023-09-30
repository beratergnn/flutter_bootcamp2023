import 'dart:collection';

void main() {
  var numbers = {"Bir": 1, "İki": 2};
  var citys = HashMap<int, String>();

  // Değer atama
  citys[53] = "RİZE";
  citys[34] = "İSTANBUL";

  print(citys);

  // Güncellemek için
  citys[53] = "YENİ RİZE";

  // Veri okumak için
  String city = citys[53]!;
  // 53 keyli bir değer olmayabilir o yüzden ! ile var olduğunu bildiriyorsunuz.
  // Yada önce bir if konrolü sonrası atama gerçekleştirilebilir.

  print("Boyut: ${citys..length}");
  print("Boş mu?: ${citys.isEmpty}");

  // HashMap de döngü ile çalışmak için bize key leri lazım önce keyleri tutmamız lazım
  var keys = citys.keys;
  for (var key in keys) {
    print("$key -> ${citys[key]}");
  }

  citys.remove(53);
  citys.clear();
}
