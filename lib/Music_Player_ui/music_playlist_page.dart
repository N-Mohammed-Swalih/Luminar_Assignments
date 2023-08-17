import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: MusicPlaylistPage()));
}

class MusicPlaylistPage extends StatelessWidget {
   MusicPlaylistPage({super.key});
  
   var images = [
    "https://t2.gstatic.com/images?q=tbn:ANd9GcSnZ1_QXPJEB6WUWuW792bgpkDEslzK-NpMGACok5MRUF3IjFSM",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQJQ7leSNIMiueq9vGdZaLayEeNpv_7kER7CbTiQrXuDbSm6XJz",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT8SqpoSd9SEl7BJZz8oc7y2fHKV8oS6HV4JCrV8YubjDNWKN-3",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcROqRLMO4b5oJ7gk-I9vjdVt5IEhqLPCvG4sxZyTek3BmVk5kIU",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR5frK3thUzCfPyYqAkNo6lG-mb57C5rWAQJksC09ZBJ6WsoblG",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRTcApiRpNfXRjqIltqHYJvGKsPjAlPWMiNQ4l0rN5QOauLyDlw",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRgFgdMIKhEoWNmWEND-dbJcjO7y_U1Zal7TAwQwGP4BBYMhpvZ",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRr3aqfIkZ3jTdonyyJj-DBOJzgNMVavOAnypoychMzLp7RXb7P"
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            floating: true,
            pinned: false,
            centerTitle: true,
            title: Text(
              "Playlist",
              style: GoogleFonts.openSans(
                color: Colors.pinkAccent,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: AppBar(
              toolbarHeight: 100,
              elevation: 0,
              backgroundColor: Colors.black54,
              title: Container(
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.pinkAccent),
                    hintText: "Search...",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(30)),
                    suffixIconColor: Colors.pinkAccent,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverGrid.builder(
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisExtent : 190,
                  mainAxisSpacing: 30),
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(left : 20,right: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              images[index]),
                              fit: BoxFit.fill,),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ))
        ]),
      ),
    );
  }
}
