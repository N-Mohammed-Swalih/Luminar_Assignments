import 'package:assignment/Whatsapp%20App/call_list_screen.dart';
import 'package:assignment/Whatsapp%20App/status_screen.dart';
import 'package:assignment/Whatsapp%20App/whatsapp_chats.dart';
import 'package:flutter/material.dart';

import 'whatsapp_chat_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const TabBar2(),
    routes: {
      'details': (context) => const WhatsappChatScreen(),
    },
  ));
}

class TabBar2 extends StatelessWidget {
  const TabBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Whatsapp'),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 25,
            ),
            const Icon(Icons.camera_alt),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("New Groups")),
                const PopupMenuItem(child: Text("New Broadcast")),
                const PopupMenuItem(child: Text("New Contact")),
                const PopupMenuItem(child: Text("New Community")),
              ];
            })
          ],
          bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.zero,
              tabs: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: const Icon(Icons.people)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Center(child: Text("Chat")),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Center(child: Text("Status")),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Center(child: Text("Call"))),
              ]),
        ),
        body: TabBarView(children: [
          const Center(
            child: Text("Community"),
          ),
          WhatsappChats(),
          StatusScreen(),
          CallList(),
        ]),
      ),
    );
  }
}
