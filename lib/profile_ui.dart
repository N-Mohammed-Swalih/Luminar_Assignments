import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  var buttonname = [
    "Edit Profile",
    "Saved Address",
    "Select Language",
    "Notification Settings",
    "Invite a friend",
    "Help and support",
    "Terms,Policies and Licenses"
  ];
  var icons = [
    Icons.edit,
    Icons.map,
    Icons.language,
    Icons.notifications,
    Icons.people,
    Icons.help,
    Icons.pages
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //heading of the page
        const Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.guim.co.uk/img/media/fd9b9ed4d416bd1867fe356e49975b9527c26765/0_59_2588_1553/master/2588.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=9524bc6ee58b97a7230c38228afaecec"),
            minRadius: 70,
            maxRadius: 100,
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        Row(
          children: [
            const SizedBox(
              width: 100,
            ),
            IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 40,
                ),
                onPressed: () {}),
            const SizedBox(
              width: 30,
            ),
            IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                  size: 40,
                ),
                onPressed: () {}),
            const SizedBox(
              width: 30,
            ),
            IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blueAccent,
                  size: 40,
                ),
                onPressed: () {}),
            const SizedBox(
              width: 30,
            ),
            IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.blueAccent,
                  size: 40,
                ),
                onPressed: () {}),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            "Sundar Pichai",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const Center(
          child: Text("Ceo of Alpahbet Inc"),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
            child: ListView.separated(
          itemCount: buttonname.length,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.circular(50)),
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(buttonname[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: 15),
        ))
      ]),
    );
  }
}
