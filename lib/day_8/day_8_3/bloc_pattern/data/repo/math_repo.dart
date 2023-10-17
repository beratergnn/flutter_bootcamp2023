class MathRepo {
  int toplama(String getNumber1, String getNumber2) {
    int num1 = int.parse(getNumber1);
    int num2 = int.parse(getNumber2);
    int topResult = num1 + num2;
    return topResult; // tetikleme ve veri gönderme
  }

  int carpma(String getNumber1, String getNumber2) {
    int num1 = int.parse(getNumber1);
    int num2 = int.parse(getNumber2);
    int carpResult = num1 * num2;
    return carpResult;
  }
}
