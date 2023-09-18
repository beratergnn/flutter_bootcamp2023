void main() {
  int urunId = 3416;
  String urunAdi = "Kol Saati";
  int urunAdet = 100;
  double urunFiyat = 149.99;
  String urunTedarikci = "Rolex";

  // Bilgi vererek çıktı.
  print("Ürün Id        : $urunId");
  print("Ürün Adı       : $urunAdi");
  print("Ürün Adet      : $urunAdet");
  print("Ürün Fiyat     : $urunFiyat ₺");
  print("Ürün Tedarikçi : $urunTedarikci");

  // Çıktılarda değişken gönderimi
  int sayi1 = 100;
  int sayi2 = 200;

  // Dolardan ($) sonra tek değişken hakkı var.
  print("$sayi1 ve $sayi2 nin çarpımı : $sayi1*sayi2");
  // 100 ve 200 nin çarpımı : 100*sayi2

  // Doğru kullanım.
  print("$sayi1 ve $sayi2 nin çarpımı : ${sayi1 * sayi2}");
  // 100 ve 200 nin çarpımı : 20000

  // -
  // -
  // -
  // -

  // * Sabitler
  // final ve const, Java(final), Swift(let), Kotlin(val)

  int sayi = 30;
  print(sayi);
  sayi = 100;
  print(sayi);
  // Standart yapı tanımlanıp değeri atandıktan sonra değeri değişebilen.

  final int sabit_final = 100;
  print(sabit_final);

  // sabit_final = 200; ERROR !!
  // The final variable 'sabit_final' can only be set once.
  // Sadece bir kere değer atanabilir.

  const int sabit_const = 500;
  print(sabit_const);

  // sabit_const = 200; ERROR !!

  /*  Hafızayı daha planlı performanslı kullanmak için üretilmiştir final.
      Eğer final sız değişken oluşturulur ise değişken için değeri farklı olabileceğinden.
      Daha esnek fazla yer de kaplayabilir bir alan açılır.
      Ama final ve const da yeri ve hacim belli olduğu için sadece o kadarlık yer açılır hafıza için daha iyi.
  */

  /*  final kod çalıştırıldığı anda hafızada oluşturulur.
      const tanımlandığı anda hafızada oluşur kodun çalıştırılması gerekmez.
      const genellikle görsel nesnelerde kullanılır. Button, Text, SizedBox gibi.
  */

  // -
  // -
  // -
  // -
  // -

  // * Tür Dönüşümü
  //  Arayüze bir şey mi yazmamız lazım String ver bana der platform.
  //  Arayüzden bir text mi almamız lazım bize String verir.
  //  O yüzden arayüzle çalışırken tür dönüşümleri önemlidir.

  // * @@ Sayılsaldan sayısala dönüşüm.
  int i = 56;
  double d = 78.67;

  int sonuc1 = d.toInt();
  // double to int de virgülden sonraki değerin kaybolacağı hatırlanmalıdır.
  double sonuc2 = i.toDouble();

  print(sonuc1);
  print(sonuc2);

  // * @@ Sayısaldan metine dönüşüm.
  String sonuc3 = i.toString(); // "56"
  String sonuc4 = d.toString(); // "78.67"
  print(sonuc3);
  print(sonuc4);

  // * Metinden sayısala dönüşüm.
  String yazi1 = "25";
  String yazi2 = "51.87";

  int sonuc5 = int.parse(yazi1); // 25
  double sonuc6 = double.parse(yazi2); // 51.87

  print(sonuc5);
  print(sonuc6);
}
