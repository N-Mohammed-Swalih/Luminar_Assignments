import 'package:flutter/material.dart';
import 'package:assignment/Whatsapp_ui/dummy_whatsapp_list.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: whatsapplist
            .map(
              (contactpeople) => Card(
                child: ListTile(
                  title: Text(contactpeople['name']),
                  subtitle: Text(contactpeople['statustime']),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(contactpeople['statusimage']),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
