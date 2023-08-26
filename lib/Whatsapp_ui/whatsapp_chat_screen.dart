import 'package:assignment/Whatsapp_ui/dummy_whatsapp_list.dart';
import 'package:flutter/material.dart';

class WhatsappChatScreen extends StatelessWidget {
  const WhatsappChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //to collect/recieve values from previous page
    final contactpeopleId = ModalRoute.of(context)?.settings.arguments;
    //fetch all the values from previous page/route
    final contactpeoplefromlist =
        whatsapplist.firstWhere((element) => element['id'] == contactpeopleId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text(contactpeoplefromlist['name'])),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(image: DecorationImage(image: NetworkImage(''))),
      ),
    );
  }
}
