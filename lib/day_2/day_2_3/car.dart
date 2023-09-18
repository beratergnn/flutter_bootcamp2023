// ignore_for_file: public_member_api_docs, sort_constructors_first
class Araba2 {
  String renk;
  int hiz;
  bool calisiyorMu;

  Araba2({required this.renk, required this.hiz, required this.calisiyorMu});
  // Araba2(){}; boş contructor alanları değer almayan null olan nesneler oluşturmak için

  void bilgiAl() {
    print("-----------");
    print("Renk         :${renk}");
    print("Hız          :${hiz}");
    print("Çalışıyor mu :${calisiyorMu}");
  }

  void calistir() {
    calisiyorMu = true;
    hiz = 5;
  }

  void durdur() {
    calisiyorMu = false;
    hiz = 0;
  }

  void hizlan(int kacKm) {
    hiz = hiz + kacKm;
  }

  void yavasla(int kacKm) {
    hiz = hiz - kacKm;
  }

  // ! side effect : bir fonksiyon classın değişkenlerinin değerini değiştiriyor ise buna side effect denir.
}
