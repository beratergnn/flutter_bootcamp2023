// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bootcamp2023/day_3/day_3_2/composition/category.dart';
import 'package:flutter_bootcamp2023/day_3/day_3_2/composition/directors.dart';

class Movies {
  int movieId;
  String movieName;
  int movieYear;
  Category category; // Kategori sınıfından bir nesne
  Directors directory; // Yönetmen sınıfından bir nesne
  // Foreign key yapısı bağlı veritabanları
  Movies({
    required this.movieId,
    required this.movieName,
    required this.movieYear,
    required this.category,
    required this.directory,
  });
}
