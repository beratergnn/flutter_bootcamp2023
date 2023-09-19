import 'package:flutter_bootcamp2023/day_3/day_3_2/composition/category.dart';
import 'package:flutter_bootcamp2023/day_3/day_3_2/composition/directors.dart';
import 'package:flutter_bootcamp2023/day_3/day_3_2/composition/movies.dart';

void main() {
  var c1 = Category(categoryId: 1, categoryName: "Dram");
  var c2 = Category(categoryId: 2, categoryName: "Bilim Kurgu");

  var d1 = Directors(directorId: 1, directorName: "Quentin Tarantino");
  var d2 = Directors(directorId: 2, directorName: "Christopher Nolan");

  var m1 = Movies(
      movieId: 1,
      movieName: "Django",
      movieYear: 2013,
      category: c1,
      directory: d1);

  print("Film Id        : ${m1.movieId}");
  print("Film Ad        : ${m1.movieName}");
  print("Film Yıl       : ${m1.movieYear}");
  print("Film Kategori  : ${m1.category.categoryName}");
  print("Film Yönetmen  : ${m1.directory.directorName}");
}
