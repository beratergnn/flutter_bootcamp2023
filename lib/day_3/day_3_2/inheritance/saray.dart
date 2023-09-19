// Subclass
import 'package:flutter_bootcamp2023/day_3/day_3_2/inheritance/ev.dart';

class Saray extends Ev {
  int kuleSayisi;
  Saray({required this.kuleSayisi, required int pencereSayisi})
      : super(pencereSayisi: pencereSayisi);
}

// ! extends i verdiğimiz an contructor da hata alırız
// çünkü süper class evin kendine ait parametreleri var bunları aktarmanı bekler.
// constructor Saray({required this.kuleSayisi,}); bundan  Saray({ required this.kuleSayisi, }) : super(pencereSayisi: 100); buna dönüşmelidir
// burada super->üst classı süperden sonra gelen ()-> üst classın consructorunu işaret eder.

// ! bir ikinci eksik direkt elle 100 sayisi verilmez üst classa gönderdiğimiz parametreyide biryerden beklememiz lazım bunu
// bunu da miraz alınan class oluşturulurken istiyoruz yani

/* Saray({
    required this.kuleSayisi,
  }) : super(pencereSayisi: 100); constructor bundan

  Saray({
    required this.kuleSayisi,required int pencereSayisi
  }) : super(pencereSayisi: pencereSayisi); buna dönüşüyor yani */