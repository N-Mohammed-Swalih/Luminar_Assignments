import 'package:assignment/Whatsapp_ui/dummy_whatsapp_list.dart';
import 'package:flutter/material.dart';

class CallList extends StatelessWidget {
  CallList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: whatsapplist
            .map(
              (contactpeople) => Card(
                child: ListTile(
                  onTap: ()=> {},
                  title: Text(contactpeople['name']),
                  subtitle: Text(contactpeople['calltime']),
                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
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
  // gotocallagain(BuildContext context, contactpeopleId) {
  //   Navigator.pushNamed(context, 'details', arguments: contactpeopleId);
  }

