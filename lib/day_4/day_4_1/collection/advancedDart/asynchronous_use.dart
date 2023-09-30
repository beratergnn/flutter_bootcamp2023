// Asenkron işlem : Aynı anda birden fazla işlem çekirde

Future<void> main() async {
  print("Verilerin alınması bekleniyor");
  var veri = await veritabanindanVeriAl();
  // await artık fonskiyonun işinin bitmesini bekelyecek ve sonra alt satıra geçecek
  print("Alinan veri: $veri");
}

Future<String> veritabanindanVeriAl() async {
  for (var i = 1; i < 6; i++) {
    Future.delayed(
        Duration(seconds: i), () => print("Veri alınıyor: %${i * 20}"));
  }
  return Future.delayed(Duration(seconds: 5), () => "Merhaba");
}
