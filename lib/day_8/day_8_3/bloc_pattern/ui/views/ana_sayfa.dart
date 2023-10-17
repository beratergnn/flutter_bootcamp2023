import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_3/bloc_pattern/ui/cubit/ana_sayfa_cubit.dart';

// Sayfa açılır açılmaz Text widgetı BlocBuilder<AnaSayfaCubit, int> ile dinleme yapıyor ve AnaSayfaCubit deki super metodu ile tetiklene varsayılan değeri alıyor yani 0.
// Sonra herhangi bir butona tıklanıldığında context içindeki read metodu dinleniyor
// Buna da AnasayfaCubit içindeki toplama veya çarp fonksiyonunu çağır diyoruz.
// Değerler fonksiyona gönderiliyor ve işlem gerçekleştikten sonra emit yani sayfaya haber veriliyor.
// Dinlemeyi de BlocBuilder ın sarmaladığı widgetta görebiliyoruz.

class BPAnaSayfa extends StatelessWidget {
  BPAnaSayfa({super.key});

  TextEditingController num1Controller = TextEditingController();

  TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC Pattern'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnaSayfaCubit, int>(
                builder: (context, sonuc) {
                  return Text(sonuc.toString(), style: TextStyle(fontSize: 35));
                },
              ),
              TextField(
                controller: num1Controller,
                decoration: InputDecoration(hintText: 'Sayı 1'),
              ),
              TextField(
                controller: num2Controller,
                decoration: InputDecoration(hintText: 'Sayı 1'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<AnaSayfaCubit>()
                          .toplama(num1Controller.text, num2Controller.text);
                    },
                    child: Text('Topla'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<AnaSayfaCubit>()
                          .carpma(num1Controller.text, num2Controller.text);
                    },
                    child: Text('Çarp'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
