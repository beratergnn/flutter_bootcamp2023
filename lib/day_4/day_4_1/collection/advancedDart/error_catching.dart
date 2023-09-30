void main() {
  // Compile error yani derleme zamanı hatası
  String x = "Hello";
  // x=100;

  // -
  // -
  // -
  // -

  // Runtime error yani çalışma zamanı hatası
  var list = <String>[];
  list.add("Aa"); // 0.index
  list.add("Bb"); // 1.index

  String isim = list[2]; // Olmayan bir index girildi
  print(isim);
  // [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: RangeError (index): Invalid value: Not in inclusive range 0..1: 2

  // Nasıl kontrol edilicek ve uygulamaya crach yedirmeyeceğiz?
  // try-catch
  try {
    String isim = list[2];
    print(isim);
  } catch (e) {
    print("Bir hata oluştu $e");
  }
}
