import 'package:flutter/material.dart';

class HowtoUserInteractionPage extends StatefulWidget {
  const HowtoUserInteractionPage({super.key});

  @override
  State<HowtoUserInteractionPage> createState() =>
      _HowtoUserInteractionPageState();
}

class _HowtoUserInteractionPageState extends State<HowtoUserInteractionPage> {
  TextEditingController tfController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // * Snacbar Default
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    action: SnackBarAction(
                        label: 'Evet',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Silindi'),
                          ));
                        }),
                    content: Text('Silmek istiyor musunuz?'),
                  ),
                );
              },
              child: Text('Snacbar Default'),
            ),
            // * Snacbar Special
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Silmek istiyor musunuz?',
                      style: TextStyle(color: Colors.amber),
                    ),
                    backgroundColor: Colors.green,
                    action: SnackBarAction(
                        label: 'Evet',
                        textColor: Colors.red,
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Silindi'),
                          ));
                        }),
                  ),
                );
              },
              child: Text('Snacbar Special'),
            ),
            // * Alert Default
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Başlık'),
                      content: Text('İçerik'),
                      actions: [
                        TextButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.delete),
                          label: Text('Delete'),
                        ),
                        TextButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                            // Tıklandığında alertin kapanması için
                          },
                          icon: Icon(Icons.save),
                          label: Text('Save'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Alert Default'),
            ),
            // * Alert Special
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Kayit Islemi'),
                        content: TextField(
                          controller: tfController,
                          decoration: InputDecoration(hintText: 'Veri'),
                        ),
                        backgroundColor: Colors.green.shade200,
                        actions: [
                          TextButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                              // Tıklandığında alertin kapanması için
                              print('Veri: ${tfController.text}');
                              tfController.text = "";
                              // Son veri kaydedilir temizlemek için
                            },
                            icon: Icon(Icons.save),
                            label: Text('Save'),
                          ),
                        ],
                      );
                    });
              },
              child: Text('Alert Special'),
            ),
          ],
        ),
      ),
    );
  }
}
