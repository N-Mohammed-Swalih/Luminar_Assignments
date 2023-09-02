import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.green,
          floating: true,
          pinned: false,
          elevation: 0,
          title: Text(
            "Farmer Fresh Zone",
            style: GoogleFonts.openSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: AppBar(
            toolbarHeight: 81,
            backgroundColor: Colors.green,
            title: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusColor: Colors.white,
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Search for Vegetables,Fruits...",
                prefixIconColor: Colors.grey,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search_sharp),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
                height: 100.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100.0,
                        child: Card(
                          child: Text('data'),
                        ),
                      );
                    })))
      ])),
    );
  }
}
