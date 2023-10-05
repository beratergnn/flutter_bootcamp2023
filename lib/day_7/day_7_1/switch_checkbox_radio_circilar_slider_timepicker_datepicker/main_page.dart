import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Day7MainPage extends StatefulWidget {
  const Day7MainPage({super.key});

  @override
  State<Day7MainPage> createState() => _Day7MainPageState();
}

class _Day7MainPageState extends State<Day7MainPage> {
  var tfController = TextEditingController();

  String data = "";
  String imagePath = "svg_mood.svg";
  bool check = true;
  bool checkSwitch = false;
  bool checkCheckBox = false;
  int radioDeger = 0;
  bool checkProgress = false;
  double sliderValue = 30.0;
  var tfControllerSaat = TextEditingController();
  var tfControllerTarih = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(data),
            TextField(
              controller: tfController,
              decoration: InputDecoration(
                hintText: 'Data',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  data = tfController.text;
                });
                tfController.text = "";
              },
              child: Text('fetch Data'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      imagePath = "svg_mood.svg";
                      check = true;
                    });
                  },
                  child: Text('Resim 1'),
                ),
                SvgPicture.asset(
                  'assets/day7/${imagePath}',
                  width: 50,
                  color: check ? Colors.green : Colors.red,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      imagePath = "svg_mood_bad.svg";
                      check = false;
                    });
                  },
                  child: Text('Resim 2'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  child: SwitchListTile(
                    title: Text('Dart'),
                    controlAffinity: ListTileControlAffinity.leading,
                    // iconun nerede olmasını istersen
                    value: checkSwitch,
                    // check box a true vey false olmasını söyler
                    onChanged: (bool value) {
                      // value check box in aktif değerini tutar
                      checkSwitch = value;
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: CheckboxListTile(
                    title: Text('Flutter'),
                    controlAffinity: ListTileControlAffinity.leading,
                    // iconun nerede olmasını istersen
                    value: checkCheckBox,
                    onChanged: (value) {
                      checkSwitch = value!;
                      // null kontrolü veri boş gelebileceği için
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: Text('Barcelona'),
                    value: 1,
                    groupValue: radioDeger,
                    onChanged: (value) {
                      radioDeger = value!;
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: Text('Real Madrid'),
                    value: 2,
                    groupValue: radioDeger,
                    onChanged: (value) {
                      radioDeger = value!;
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      checkProgress = true;
                    });
                  },
                  child: Text('Basla'),
                ),
                Visibility(
                    visible: checkProgress,
                    child: const CircularProgressIndicator()),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      checkProgress = false;
                    });
                  },
                  child: Text('Durum'),
                ),
              ],
            ),
            Text(sliderValue.toInt().toString()),
            Slider(
              max: 100.0,
              min: 0.0,
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 120,
                  child: TextField(
                    controller: tfControllerSaat,
                    decoration: InputDecoration(
                      hintText: 'Saat',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(DateTime.now()))
                          .then((value) => tfControllerSaat.text =
                              '${value!.hour}:${value.minute} ');
                    },
                    icon: Icon(Icons.access_time)),
                SizedBox(
                  width: 120,
                  child: TextField(
                    controller: tfControllerTarih,
                    decoration: InputDecoration(
                        hintText: 'Tarih', border: OutlineInputBorder()),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2030))
                          .then((value) {
                        tfControllerTarih.text =
                            '${value!.day}/${value.month}/${value.year}';
                      });
                    },
                    icon: Icon(Icons.date_range)),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print('Switch: $checkSwitch');
                print('CheckBox: $checkCheckBox');
                print('Radio Durum: $radioDeger');
                print('Slider Durum: $sliderValue');
              },
              child: Text('Göster Durum'),
            ),
          ],
        ),
      ),
    );
  }
}
