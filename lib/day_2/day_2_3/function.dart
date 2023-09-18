// Fonksiyonlar return eden ve etmeyen olarak 2 ye ayrılır.
class Fonksiyonlar {
  // return etmeyen
  void selamla() {
    String sonuc = "Merhaba Kullanıcı";
    print(sonuc);
  }

  // return eden.
  String selamla2() {
    String sonuc = "Merhaba Kullanıcı";
    return sonuc;
  }

  void selamla3(String isim) {
    String sonuc = "Merhaba $isim";
    print(sonuc);
  }

  int toplama(int sayi1, int sayi2) {
    return sayi1 + sayi2;
  }
}
