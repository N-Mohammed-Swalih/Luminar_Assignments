import 'package:flutter/material.dart';

void main(){
  runApp (MaterialApp(
    debugShowCheckedModeBanner: false,
    home:ListViewUi()));
}

class ListViewUi extends StatelessWidget {
   ListViewUi ({super.key});
  var images = [
    "https://images.unsplash.com/photo-1606757389723-23c4bf501fba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1587735243615-c03f25aaff15?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Center(child: Text("Product List"
        ),),
         actions: <Widget>[
          SizedBox(height: 10,),
    Badge(
      backgroundColor: Colors.red,
      alignment : Alignment.topRight,
        label: Text('0'),
      child: IconButton(
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        onPressed: () {
          // do something
        },
      ),
    ),
    SizedBox(width: 30,),
  ],
),
      body: ListView(
        children: List.generate(2, (index) => Container(
          height: 100,
          child: Card(
            child: ListTile(
              leading: Image.network(images[index],),
            ),
        
          ),
        )),
      ),

    );
}
}