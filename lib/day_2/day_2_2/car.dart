// ignore_for_file: public_member_api_docs, sort_constructors_first
class Araba {
  String renk;
  int hiz;
  bool calisiyorMu;

  Araba({required this.renk, required this.hiz, required this.calisiyorMu});

  // String renk = "Mavi";
  // int hiz = 100;
  // bool calisiyorMu = true;
  // İlk değer atamaları eğer yapılır ise yukarıdaki gibi sorun yok ama yapılmaz ise
  // Null-safety dart diline geldiği için bu durum type tanımının başına late atarak,
  // Contructor ile bu değişkenlerin atanmasını sağlayarak yada type tanımının yanına ?
  // Koyarak bu değerin null olabileceği bunun bilincinde olduğunu compiler a bildirmen gereklidir.
}
