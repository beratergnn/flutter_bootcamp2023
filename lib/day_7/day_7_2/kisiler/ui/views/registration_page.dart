import 'package:flutter/material.dart';

class ContactsRegistrationPage extends StatefulWidget {
  const ContactsRegistrationPage({super.key});

  @override
  State<ContactsRegistrationPage> createState() =>
      _ContactsRegistrationPageState();
}

class _ContactsRegistrationPageState extends State<ContactsRegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  Future<void> save(String contactName, String contactNumber) async {
    print('Registration Contact: $contactName - $contactNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Contact Name',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: numberController,
              decoration: InputDecoration(
                hintText: 'Contact Number',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                save(nameController.text, numberController.text);
              },
              icon: Icon(Icons.save),
              label: Text('Save'),
            )
          ],
        )),
      ),
    );
  }
}
