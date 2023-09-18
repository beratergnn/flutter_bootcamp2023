// Overloading dart dilinde yer almıyor.

class Odev2 {
  // * 1
  double icAciHesapla(int kenarSayisi) {
    if (kenarSayisi >= 3) {
      return (((kenarSayisi - 2) * 180) / kenarSayisi);
    }
    return 0;
  }

  // * 2
  double maasHesapla(int kacGunCalisti, int gundeKacSaat) {
    if (kacGunCalisti > 0 && gundeKacSaat > 0) {
      if (gundeKacSaat <= 8) {
        int mesaiSaati = 0;
        int mesaisizSaat = 0;
        if (kacGunCalisti * gundeKacSaat >= 150) {
          mesaiSaati = (kacGunCalisti * gundeKacSaat) - 150;
          mesaisizSaat = (kacGunCalisti * gundeKacSaat) - mesaiSaati;
        } else {
          mesaisizSaat = kacGunCalisti * gundeKacSaat;
        }

        return (mesaisizSaat * 40) + (mesaiSaati * 80);
      } else {
        print("Bir günde 8 saatten fazla çalışmış olamazsınız.");
        return 0;
      }
    } else {
      print("Çalışma günü veya saatiniz 0 olamaz.");
      return 0;
    }
  }

  // * 3
  int otoparkUcretHesapla(int kacSaatKaldi) {
    if (kacSaatKaldi > 0) {
      if (kacSaatKaldi > 1) {
        return 50 + ((kacSaatKaldi - 1) * 10);
      } else {
        return 50;
      }
    } else {
      print("0 dan büyük bir sayi giriniz!");
      return 0;
    }
  }

  // * 4
  String kmToMill(double km) {
    if (km > 0) {
      return "${km * 0.621} mill";
    } else {
      return " 0 dan büyük km girin";
    }
  }

  // * 5
  String dikdortgenAlan(int kisaK, int uzunK) {
    if (kisaK > 0 && uzunK > 0) {
      return "Alan : ${kisaK * uzunK}";
    } else {
      return "kenarlar 0 dan küçük olamaz";
    }
  }

  // * 6
  int fakHesap(int sayi) {
    if (sayi == 0) {
      return 1;
    } else {
      return sayi * fakHesap(sayi - 1);
    }
  }

  // * 7
  int eHesap(String kelime) {
    int adet = 0;
    kelime = kelime.toLowerCase();
    for (int i = 0; i < kelime.length; i++) {
      if (kelime[i].contains("e")) {
        adet++;
      }
    }
    return adet;
  }
}
