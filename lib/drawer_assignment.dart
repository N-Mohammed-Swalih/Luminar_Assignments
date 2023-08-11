import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: DrawerAssignment(),
  ));
}

class DrawerAssignment extends StatelessWidget {
  const DrawerAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sundar Pichai'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        drawer: Drawer(
            child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 175, 159, 15),
                      Color.fromARGB(255, 199, 121, 2),
                      Colors.red,
                      Color.fromARGB(255, 239, 115, 33),
                    ],
                  ),
                ),
                child: ListView(children: [
                const  SizedBox(
                    height: 50,
                  ),
                const   ListTile(
                    title: Text(
                      "Sundar Pichai",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "CEO of Alpahbet Inc",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: NetworkImage(
                          "https://images.wsj.net/im-758635/?width=1278&size=1"),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[400],
                    thickness: .5,
                  ),
                  const SizedBox(height: 50,),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon:const Icon(
                        Icons.dashboard,
                        color: Colors.white,
                      ),
                    ),
                    title:const Text(
                      "Dashboard",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon:const Icon(
                        Icons.leaderboard_sharp,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      "Leads",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon:const Icon(
                        Icons.person_add,
                        color: Colors.white,
                      ),
                    ),
                    title:const Text(
                      "Clients",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon:const Icon(
                        Icons.work,
                        color: Colors.white,
                      ),
                    ),
                    title:const  Text(
                      "Project",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon:const Icon(
                        Icons.local_hospital,
                        color: Colors.white,
                      ),
                    ),
                    title:const Text(
                      "Patients",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon:const Icon(
                        Icons.subscriptions,
                        color: Colors.white,
                      ),
                    ),
                    title:const Text(
                      "Subscription",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon:const Icon(
                        Icons.payment,
                        color: Colors.white,
                      ),
                    ),
                    title:const Text(
                      "Payments",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon:const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    title:const Text(
                      "Users",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon:const Icon(
                        Icons.library_add,
                        color: Colors.white,
                      ),
                    ),
                    title:const Text(
                      "Library",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "LogOut",
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ]))));
  }
}
