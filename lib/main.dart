import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/pages/detail_page.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/pages/navpages/bottom_nav_bar.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/odev3/pages/navpages/home_page.dart';
import 'package:flutter_bootcamp2023/day_5/day_5_1&2/pizza_page.dart';
import 'package:flutter_bootcamp2023/day_7/day_7_1/switch_checkbox_radio_circilar_slider_timepicker_datepicker/main_page.dart';
import 'package:flutter_bootcamp2023/day_7/day_7_2/kisiler/ui/views/main_page.dart';
import 'package:flutter_bootcamp2023/day_7/odev5/pages/calculator_page.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_3/bloc_pattern/ui/cubit/ana_sayfa_cubit.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_3/bloc_pattern/ui/views/ana_sayfa.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_3/normal_way/ana_sayfa.dart';
import 'package:flutter_bootcamp2023/day_9/9_3/9_3_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AnaSayfaCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        // Sağ üstteki debug yazısını kaldırmak için
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MainPAge9_3(),
      ),
    );
  }
}
