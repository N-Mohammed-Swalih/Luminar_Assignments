import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
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
              const SizedBox(
                height: 50,
              ),
              const ListTile(
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
              const SizedBox(
                height: 50,
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  icon: const Icon(
                    Icons.dashboard,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Dashboard",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  icon: const Icon(
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
                  icon: const Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Clients",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  icon: const Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Project",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  icon: const Icon(
                    Icons.local_hospital,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Patients",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  icon: const Icon(
                    Icons.subscriptions,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Subscription",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  icon: const Icon(
                    Icons.payment,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Payments",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Users",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  icon: const Icon(
                    Icons.library_add,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Library",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Logout",
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ]),
          ),
        ),
        body: Column(children: [
          Center(
            child: Image.network(
                "https://i.guim.co.uk/img/media/fd9b9ed4d416bd1867fe356e49975b9527c26765/0_59_2588_1553/master/2588.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=9524bc6ee58b97a7230c38228afaecec"),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Sundar Pichai",
              style: GoogleFonts.bigelowRules(
                  fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Expanded(
              child: SingleChildScrollView(
            child: Text(
                """Pichai Sundararajan (born June 10, 1972[3][4][5]), better known as Sundar Pichai (/ˈsʊndɑːr pɪˈtʃaɪ/), is an American business executive.[6] He is the chief executive officer (CEO) of Alphabet Inc. and its subsidiary Google.[7]

Pichai began his career as a materials engineer. Following a short stint at the management consulting firm McKinsey & Co., Pichai joined Google in 2004,[8] where he led the product management and innovation efforts for a suite of Google's client software products, including Google Chrome and ChromeOS, as well as being largely responsible for Google Drive. In addition, he went on to oversee the development of other applications such as Gmail and Google Maps. In 2010, Pichai also announced the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM. The Chromebook was released in 2012. In 2013, Pichai added Android to the list of Google products that he oversaw.

Pichai was selected to become the next CEO of Google on August 10, 2015, after previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.[9]

Pichai was included in Time's annual list of the 100 most influential people in 2016[10] and 2020.[11]"""),
          ))
        ]));
  }
}
