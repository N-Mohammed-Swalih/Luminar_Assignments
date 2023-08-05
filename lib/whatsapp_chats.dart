import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsappChats(),
  ));
}

class WhatsappChats extends StatelessWidget {
  var productname = [
    "Dad",
    "Mom",
    "Sahal",
    "Sana",
    "Loolan Nisham",
    "Loolan Anas",
    "Devutti",
    "Fasal",
    "Shuhaib",
    "Aliyan",
    "Shibili"
  ];
  var images = [
   'assets/images/dad.jpg',
   'assets/images/mom.jpg',
   'assets/images/sahal.jpg',
    'assets/images/chinnu.jpg',   
    'assets/images/samu.jpg',
    'assets/images/anu.jpg',
    'assets/images/devutti.jpg',
    'assets/images/fasal.jpg',
    'assets/images/shuhaib.jpg',
    'assets/images/aliyan.jpg',
    'assets/images/shibili.jpg',
  ];
  var messages = ["hello","hey","evden","hw r u?","hello","helloyy","bro","ntha pani","sugalle","edo","broooyyy_"];

  var time = ["12:01","11:44","11:42","11:40","11:39","11:32","11:30","11:22","11:20","11:18","11:10"];

  WhatsappChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp",
            style: GoogleFonts.roboto(
              fontSize: 20,
            ),),

          actions: [
            Icon(Icons.camera_alt),
            SizedBox(width: 25,),
            Icon(Icons.search),
            SizedBox(width: 10,),
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("New Groups")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("New Contact")),
                PopupMenuItem(child: Text("New Community")),
              ];
            } )
          ],
          backgroundColor: Colors.teal,
        ),
        body: ListView(
            children: List.generate(
                11,
                (index) => Card(
                    child: ListTile(
                        title: Text(productname[index]),
                        subtitle: Text(messages[index]),
                        trailing: Text(time[index]),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(images[index]),
                        ))))));
  }
}
