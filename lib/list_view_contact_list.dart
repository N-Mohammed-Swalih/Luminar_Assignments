import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContactList(),
  ));
}

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 128, 31),
          title: Text(
            "Contact Book",
            style: GoogleFonts.bigelowRules(
              fontSize: 50,
            ),
          ),
        ),
        body: ListView(children: [
          Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/mom.jpg"),
                radius: 30,
              ),
              title: Text("Mom"),
              subtitle: Text("9765423234"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/dad.jpg"),
              radius: 30,),
              title: Text("Dad"),
              subtitle: Text("9765423334"),
              trailing: Icon(Icons.phone),
            ),
          ),
             Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/sahal.jpg"),
              radius: 30,),
              title: Text("Sahal"),
              subtitle: Text("9864228291"),
              trailing: Icon(Icons.phone),
            ),
          ),
           Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/chinnu.jpg"),
              radius: 30,),
              title: Text("Sana"),
              subtitle: Text("9864738291"),
              trailing: Icon(Icons.phone),
            ),
          ),
           Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/anu.jpg"),
              radius: 30,),
              title: Text("Loolan Anas"),
              subtitle: Text("9762534334"),
              trailing: Icon(Icons.phone),
            ),
          ),
           Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/samu.jpg"),
              radius: 30,),
              title: Text("Loolan Samu"),
              subtitle: Text("9706542334"),
              trailing: Icon(Icons.phone),
            ),
          ),
             Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/devutti.jpg"),
              radius: 30,),
              title: Text("Devutti"),
              subtitle: Text("9864228219"),
              trailing: Icon(Icons.phone),
            ),
          ),
             Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/salman.jpg"),
              radius: 30,),
              title: Text("Salman Kattiparuthi"),
              subtitle: Text("9164234274"),
              trailing: Icon(Icons.phone),
            ),
          ),
             Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/shuhaib.jpg"),
              radius: 30,),
              title: Text("Shuhaib Athani"),
              subtitle: Text("9864200236"),
              trailing: Icon(Icons.phone),
            ),
          ),
             Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/fasal.jpg"),
              radius: 30,),
              title: Text("Fasal Ktm"),
              subtitle: Text("9064118211"),
              trailing: Icon(Icons.phone),
            ),
          ),
             Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/aliyan.jpg"),
             radius: 30, ),
              title: Text("Navaneeth Aliyan"),
              subtitle: Text("9004228202"),
              trailing: Icon(Icons.phone),
            ),
          ),
             Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/contact_list/shibili.jpg"),
              radius: 30,),
              title: Text("Shibili"),
              subtitle: Text("9822228200"),
              trailing: Icon(Icons.phone),
            ),
          ),
        ]));
  }
}
