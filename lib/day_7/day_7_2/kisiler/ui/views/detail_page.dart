import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_7/day_7_2/kisiler/data/entity/contacts.dart';

class ContactsDetailPage extends StatefulWidget {
  final Contacts contact;

  const ContactsDetailPage({super.key, required this.contact});

  @override
  State<ContactsDetailPage> createState() => _ContactsDetailPageState();
}

class _ContactsDetailPageState extends State<ContactsDetailPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  Future<void> update(
      int contactId, String contactName, String contactNumber) async {
    print('Update Contact: $contactId $contactName - $contactNumber');
  }

  @override
  void initState() {
    super.initState();
    fetchContact();
  }

  void fetchContact() {
    var v_contact = widget.contact;
    nameController.text = v_contact.contactName;
    numberController.text = v_contact.contactNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
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
                update(widget.contact.contactId, nameController.text,
                    numberController.text);
              },
              icon: Icon(Icons.update),
              label: Text('Update'),
            )
          ],
        ),
      )),
    );
  }
}
