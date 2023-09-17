import 'package:flutter/material.dart';

class TourismHomePage extends StatelessWidget {
  const TourismHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Go",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Fast",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [CircleAvatar()],
        centerTitle: true,
        bottom: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey,
              hintStyle: TextStyle(color: Colors.grey),
              hintText: "Search...",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.5),
              ),
              suffixIconColor: Colors.grey,
              suffixIcon: Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Places",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "View all",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
