import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: HotelRoomHomePage()));
}

class HotelRoomHomePage extends StatelessWidget {
  const HotelRoomHomePage({super.key});

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
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: AppBar(
              toolbarHeight :150,
              elevation: 0,
              backgroundColor: Colors.black54,
              title: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
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
        ]),
      ),
    );
  }
}
