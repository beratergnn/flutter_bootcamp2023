void main() {
  // *  if statement

  int yas = 23;
  String isim = "Berhat";

  // yas 18 ve 18 den büyük olduğunda if olmadığında else çalışır.
  if (yas >= 18) {
    print("Reşitsiniz.");
  } else {
    print("Reşit değilsiniz.");
  }

  // İsim değişkeni Berhat ise "Merhaba Berhat!", Ergün ise "Merhaba Ergün!" başka bir şey ise de "Tanınmayan kişi der"
  if (isim == "Berhat") {
    print("Merhaba Berhat!");
  } else if (isim == "Ergün") {
    print("Merhaba Ergün!");
  } else {
    print("Tanınmaya kişi.");
  }

  // -
  // -
  // -
  // -
  // -

  String ka = "admin";
  int s = 123456;

  if (ka == "admin" && s == 123456) {
    print("Hoşgeldin");
  } else {
    print("Hatalı giriş");
  }
  // Hoşgeldin yazar

// -
// -
// -
// -
  int sayi = 10;

  if (sayi == 9 || sayi == 10) {
    print("sayi 9 veya 10 dur.");
  } else {
    print("sayi 9 veya 10 değildir.");
  }
}
