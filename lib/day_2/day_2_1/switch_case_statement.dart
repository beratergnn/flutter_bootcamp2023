void main() {
  // * Switch case statement
  int gun = 3;
  switch (gun) {
    // Kotlin(When)
    case 1:
      print("Pazartesi");
      break;
    case 2:
      print("Salı");
      break;
    case 3:
      print("Çarşamba");
      break;
    case 4:
      print("Perşembe");
      break;
    case 5:
      print("Cuma");
      break;
    case 6:
      print("Cumartesi");
      break;
    case 7:
      print("Pazar");
      break;
    default:
      print("Gün yok.");
      break;
  }

  // break önemli eşlesen case i işletince swtich in bitmesini sağlıyor.
}
