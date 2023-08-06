import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ListViewUi()));
}

class ListViewUi extends StatelessWidget {
  ListViewUi({super.key});
  var image = [
    "https://png.pngtree.com/png-vector/20210522/ourmid/pngtree-apple-is-naturally-thirsty-and-healthy-png-image_3323218.jpg",
    "https://images.unsplash.com/photo-1587735243615-c03f25aaff15?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80",
  ];

  var description = ["Apple", "Orange"];

  var price = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Product List"),
          ),
        )
        );
  }
}
