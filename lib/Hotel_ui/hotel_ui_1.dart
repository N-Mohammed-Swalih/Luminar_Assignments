import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelUi1(),
  ));
}

class HotelUi1 extends StatelessWidget {
  const HotelUi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: CustomScrollView(slivers: [
              
          SliverAppBar(
              backgroundColor: Colors.lightBlueAccent,
              floating: true,
              pinned: false,
              centerTitle: true,
              title: Text(
                "Type your location",
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bottom: AppBar(
                toolbarHeight: 200,
                elevation: 0,
                backgroundColor: Colors.lightBlueAccent,
                title: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Bouddha,kathmandu",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIconColor: Colors.grey,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ))
        ])));
  }
}
