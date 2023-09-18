void main() {
  // * Karşılaştırma Operatörleri
  int a = 40;
  int b = 50;

  int x = 90;
  int y = 80;

  // Tekli karşılaştırma
  print("a == b : ${a == b}");
  print("a != b : ${a != b}");
  print("a > b : ${a > b}");
  print("a >= b : ${a >= b}");
  print("a < b : ${a < b}");
  print("a <= b : ${a <= b}");

  // Çoklu karşılaştırma OR
  print("a > b || x > y : ${a > b || x > y}"); // true
  // Çoklu karşılaştırma VE
  print("a > b && x > y : ${a > b && x > y}"); // false
}
