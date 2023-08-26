import 'package:assignment/Whatsapp_ui/dummy_whatsapp_list.dart';
import 'package:flutter/material.dart';

class WhatsappChats extends StatelessWidget {
  WhatsappChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: whatsapplist
            .map(
              (contactpeople) => Card(
                child: ListTile(
                  onTap: ()=> gotochatscreen(context, contactpeople['id']),
                  title: Text(contactpeople['name']),
                  subtitle: Text(contactpeople['message']),
                  trailing: Text(contactpeople['messagetime']),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(contactpeople['image']),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
  gotochatscreen(BuildContext context, contactpeopleId) {
    Navigator.pushNamed(context, 'details', arguments: contactpeopleId);
  }
}
