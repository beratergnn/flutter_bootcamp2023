import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_3/bloc_pattern/data/repo/math_repo.dart';

// Neden int? Çünkü arayüzde bir int ı yönetmek istiyoruz.
// Cubitin asıl görevi repoya işlemi yaptırıp değeri alıp arayüzde göndermek
// O yüzden bir repo oluşutduk matematik işlemleri için
// int topResult = mRepo.toplama(getNumber1, getNumber2); ile repoya işlemi yaptırıp veriyi aldık
// sonra emit ile bunu sayfaya bildirdik.
class AnaSayfaCubit extends Cubit<int> {
  AnaSayfaCubit() : super(0); // varsayılan değer

  var mRepo = MathRepo();
  void toplama(String getNumber1, String getNumber2) {
    // Böyle
    int topResult = mRepo.toplama(getNumber1, getNumber2);
    emit(topResult); // tetikleme ve veri gönderme
  }

  void carpma(String getNumber1, String getNumber2) {
    // veya böyle

    emit(mRepo.carpma(getNumber1, getNumber2)); // tetikleme ve veri gönderme
  }
}
