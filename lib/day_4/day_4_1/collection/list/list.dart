import 'package:flutter_bootcamp2023/day_4/day_4_1/collection/list/students_model.dart';

void main() {
  var s1 = Students(no: 52, name: "Berhat", grade: "11C");
  var s2 = Students(no: 11, name: "Ahmet", grade: "10A");
  var s3 = Students(no: 85, name: "Mehmet", grade: "9D");

  var studentsList = <Students>[];
  studentsList.add(s1);
  studentsList.add(s2);
  studentsList.add(s3);

  for (var s in studentsList) {
    print('Name:${s.name}  - Grade:${s.grade}  - Number:${s.no}');
  }

  /*
  flutter: Name: Berhat  - Grade: 11C  - Number: 52
  flutter: Name: Ahmet  - Grade: 10A  - Number: 11
  flutter: Name: Mehmet  - Grade: 9D  - Number: 85
  */

  // Sıralama numaraya göre tip tanımı zorunlu !!
  // Comparator nesnesi oluşturup neye göre sıralama yapılacağı belirtilir.
  // Küçükten büyüğe sıralama yapmak için gerekli comparator nesnesi.
  print('-');
  print("----- Numaraya göre küçükten büyüğe sıralama -----");
  Comparator<Students> comparator = (x, y) => x.no.compareTo(y.no);
  // Ardından listenin sort metoduna parametre olarak gönderilir.
  studentsList.sort(comparator);

  for (var s in studentsList) {
    print('Name:${s.name}  - Grade:${s.grade}  - Number:${s.no}');
  }
  /* 
  flutter: Name:Ahmet  - Grade:10A  - Number:11
  flutter: Name:Berhat  - Grade:11C  - Number:52
  flutter: Name:Mehmet  - Grade:9D  - Number:85
  */

  // -
  // -
  // -
  // -
  // -

  // Sıralama numaraya göre tip tanımı zorunlu !!
  // Comparator nesnesi oluşturup neye göre sıralama yapılacağı belirtilir.
  // Büyükten küçüğe sıralama yapmak için gerekli comparator nesnesi.
  print('-');
  print("----- Numaraya göre büyükten küçüğe sıralama -----");
  Comparator<Students> comparator2 = (x, y) => y.no.compareTo(x.no);
  // Ardından listenin sort metoduna parametre olarak gönderilir.
  studentsList.sort(comparator2);

  for (var s in studentsList) {
    print('Name:${s.name}  - Grade:${s.grade}  - Number:${s.no}');
  }
  /* 
  flutter: Name:Mehmet  - Grade:9D  - Number:85
  flutter: Name:Berhat  - Grade:11C  - Number:52
  flutter: Name:Ahmet  - Grade:10A  - Number:11
  */

  // -
  // -
  // -
  // -
  // -

  // Sıralama numaraya göre tip tanımı zorunlu !!
  // Comparator nesnesi oluşturup neye göre sıralama yapılacağı belirtilir.
  // Küçükten büyüğe metinsel sıralama yapmak için gerekli comparator nesnesi.
  print('-');
  print("----- İsime göre küçükten büyüğe sıralama -----");
  Comparator<Students> comparator3 = (x, y) => x.name.compareTo(y.name);
  // Ardından listenin sort metoduna parametre olarak gönderilir.
  studentsList.sort(comparator3);

  for (var s in studentsList) {
    print('Name:${s.name}  - Grade:${s.grade}  - Number:${s.no}');
  }
  /* 
  flutter: Name:Ahmet  - Grade:10A  - Number:11
  flutter: Name:Berhat  - Grade:11C  - Number:52
  flutter: Name:Mehmet  - Grade:9D  - Number:85
  */

  // -
  // -
  // -
  // -
  // -

  // Filtreme yapmak için search durumlarında kullanmak için
  // Öncelikle filtreleme yapmak için gerekli iterable nesnesi oluşturulur.
  // Ardından filtre return edilir.
  Iterable<Students> iterable1 = studentsList.where((element) {
    return element.no > 50;
  });

  // studentsList içinde yapılan filtreme işleminden dönen elemanlar yeni bir listede tutulup erişilir.
  var filterStudentList = iterable1.toList();
  print('-');
  print("----- Filtrelenmiş öğrenci listesi -----");
  for (var s in filterStudentList) {
    print('Name:${s.name}  - Grade:${s.grade}  - Number:${s.no}');
  }
  /*
  flutter: Name:Berhat  - Grade:11C  - Number:52
  flutter: Name:Mehmet  - Grade:9D  - Number:85
  */
  // Birden çok filtreleme için de iterable nesnesinin return alanı değiştirilebilir.
  // return element.no > 50 && element.no<250;  gibi.

  // -
  // -
  // -
  // -
  // -
  // -
  print('-');
  // String tabanlı filtrelemeler için
  Iterable<Students> iterable2 = studentsList.where((element) {
    return element.name.contains("Berhat");
  });

  var filterStudentList2 = iterable2.toList();
  print('-');
  print("----- İsme göre filtrelenmiş öğrenci listesi -----");
  for (var s in filterStudentList2) {
    print('Name:${s.name}  - Grade:${s.grade}  - Number:${s.no}');
  }

  /*
  flutter: ----- İsme göre filtrelenmiş öğrenci listesi -----
  flutter: Name:Berhat  - Grade:11C  - Number:52
  */
}
