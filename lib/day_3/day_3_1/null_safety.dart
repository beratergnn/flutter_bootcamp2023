void main() {
  String str = "Merhaba";

  // String mesaj = null;  olmaz hata verir bir değişkene atanamaz tanımlaması için
  String? mesaj = null; // Benim bundan haberim var demek

  // print("Yöntem 1: ${mesaj.toLowerCase()}");
  // Hata verir. Çünkü bull bir değer lowercase e çeviremez

  // Yöntem 1 :
  print(
      "Yöntem 1: ${mesaj?.toLowerCase()}"); // Çözümü yine bunu bildiğini bildirmekten geçiyor

  // Yöntem 2 :
  // / ! Kullanımı bu ben bu koda güveniyorum bu değer kesinlikle boş gelmez çalıştırabilirsin demektir.
  print("Yöntem 2: ${mesaj!.toLowerCase()}");
  // Çok içeride kalan kodlarda kullanılabilir if yapıları ile tüm null olmama kontrolleri gerçekleştirildiği takdirde
  // Artık null olma ihtimali kalınmayan yerlerde kullanılabilir.

  // Yöntem 3:
  mesaj = "null";
  if (mesaj != null) {
    print("Yöntem 2: ${mesaj.toLowerCase()}");
  } else {
    print("Mesaj nulldur.");
  }
}
