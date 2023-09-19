// Subclass

import 'package:flutter_bootcamp2023/day_3/day_3_2/inheritance/ev.dart';

class Villa extends Ev {
  bool garajVarmi;
  Villa({required this.garajVarmi, required int pencereSayisi})
      : super(pencereSayisi: pencereSayisi);
  // super(pencereSayisi: 100); = Ev(penceresayisi)
}

// ! Saray clasında açıklamaların aynısı