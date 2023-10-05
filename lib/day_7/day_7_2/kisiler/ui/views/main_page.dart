import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_7/day_7_2/kisiler/data/entity/contacts.dart';
import 'package:flutter_bootcamp2023/day_7/day_7_2/kisiler/ui/views/detail_page.dart';
import 'package:flutter_bootcamp2023/day_7/day_7_2/kisiler/ui/views/registration_page.dart';

class ContactsMainPage extends StatefulWidget {
  const ContactsMainPage({super.key});

  @override
  State<ContactsMainPage> createState() => _ContactsMainPageState();
}

class _ContactsMainPageState extends State<ContactsMainPage> {
  bool isSearching = false;

  Future<void> search(String value) async {
    print('Aranan:$value');
  }

  Future<List<Contacts>> listContacts() async {
    List<Contacts> contactList = [];
    Contacts c1 = Contacts(
        contactId: 1, contactName: 'Berhat', contactNumber: '05553331188');
    Contacts c2 = Contacts(
        contactId: 2, contactName: 'Ahmet', contactNumber: '05553336688');
    Contacts c3 = Contacts(
        contactId: 3, contactName: 'Sude', contactNumber: '05551114477');
    contactList.add(c1);
    contactList.add(c2);
    contactList.add(c3);
    return contactList;
  }

  Future<void> delete(int contactId) async {
    print('Deleted Contact Id :$contactId');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ara',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (searchingResult) {
                    search(searchingResult);
                  },
                ),
              )
            : Text('Contacts'),
        actions: [
          isSearching
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = !isSearching;
                    });
                  },
                  icon: Icon(Icons.clear))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = !isSearching;
                    });
                  },
                  icon: Icon(Icons.search))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: FutureBuilder<List<Contacts>>(
            future: listContacts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var contactListSave = snapshot.data;
                return ListView.builder(
                    itemCount: contactListSave!.length,
                    itemBuilder: ((context, index) {
                      var contact = contactListSave[index];
                      return Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactsDetailPage(
                                            contact: contact,
                                          ))).then((value) {
                                print(
                                    'You came back to Main Page from Detail Page');
                              });
                            },
                            leading: Text('${contact.contactId}'),
                            title: Text(
                              contact.contactName,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(contact.contactNumber),
                            trailing: IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Do you want to delete ${contact.contactName}? ',
                                    ),
                                    action: SnackBarAction(
                                        label: 'Evet',
                                        onPressed: () {
                                          delete(contact.contactId);
                                        }),
                                  ),
                                );
                              },
                              icon: Icon(Icons.clear),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: Colors.grey, width: 2),
                            ),
                            iconColor: Colors.red,
                          ),
                          SizedBox(height: 10),
                        ],
                      );
                    }));
              } else {
                return const Text('Contacts not found');
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContactsRegistrationPage()))
              .then((value) {
            print('You came back to Main Page from Registration Page');
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
