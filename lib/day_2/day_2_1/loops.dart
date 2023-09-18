void main() {
  // * Donguler
  // 3 kere çalışan for
  // İlk parametre ilk değer, ikinci parametre kontrol ifadesi, üçüncü parametre iterasyon güncellemesi

  for (var i = 1; i < 4; i++) {
    print("Döngü 1 : $i");
  }

  // 10 ile 20 arasındaki sayıları 5 er 5 er yaz
  for (var x = 10; x < 21; x += 5) {
    print("Döngü 2: $x");
  }

  // 20 ile 10 arasındaki sayıları 5 er 5 er azalarak yaz
  for (var x = 20; x > 9; x -= 5) {
    print("Döngü 3: $x");
  }

  // While
  var sayac = 1;
  while (sayac < 4) {
    print("Döngü 4 : $sayac");
    sayac++;
  }
  // 1 kez kesin olarak çalışır önce gövdesini yapar sonra kontrol ifadesine bakar

  // Döngülerde break ve continue

  for (var i = 1; i < 11; i++) {
    if (i == 3) {
      continue;
    }
    print("Döngü 5 : $i");
    if (i == 6) {
      break;
    }
  }
  // 1 den 10 a kadar olan sayıları yazması lazım ama
  // continue olan iterasyonun atlamasını sağlar break de direkt döngüyü kırar ve sonuç
  // 1 2 4 5 6 olur.
}
