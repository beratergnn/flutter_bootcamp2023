import 'package:flutter/material.dart';

class PageY extends StatelessWidget {
  const PageY({super.key});
  Future<bool> backButton(BuildContext context) async {
    print('Navigation back button clicked');
    Navigator.of(context).popUntil((route) => route.isFirst);

    return false; // false = geri dönüş olmasın
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE Y'),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () => backButton(context),
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text('Go to the Main Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
