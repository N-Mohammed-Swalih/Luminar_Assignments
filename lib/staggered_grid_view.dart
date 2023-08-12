import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Steaggerdgridexample2(),
  ));
}

class Steaggerdgridexample2 extends StatelessWidget {

  var crosscount = [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2];
  var maincount = [3, 2, 2, 2, 2, 3, 3, 2, 2, 3, 2, 2];
  var images = [
    "https://images.unsplash.com/photo-1517524008697-84bbe3c3fd98?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2Fyc3xlbnwwfDF8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1616422285623-13ff0162193c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcnN8ZW58MHwxfDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1602777924012-f8664ffeed27?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhcnN8ZW58MHwxfDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1591738802175-709fedef8288?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1569240651738-2c9ec2f50f42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fGNhcnN8ZW58MHwxfDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1567818668259-e66acac21610?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=373&q=80",
    "https://images.unsplash.com/photo-1579200152039-7051de8a159c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1565064012199-c537fe6fb4b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fGNhcnN8ZW58MHwxfDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1611566026373-c6c8da0ea861?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzB8fGNhcnN8ZW58MHwxfDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1553072959-d1d9ef6b79cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzR8fGNhcnN8ZW58MHwxfDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1594950164100-dc9142cbfb24?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODJ8fGNhcnN8ZW58MHwxfDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1619362279963-4740abb8141f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTl8fGNhcnN8ZW58MHwxfDB8fHww&auto=format&fit=crop&w=500&q=60",
  ];

  var name = [
    "Audi Q7",
    "Audi RS 7",
    "Ferrari F40",
    "Mahindra Thar",
    "Porsche 911 GT2 RS",
    "Ford Mustang",
    "Porsche 718 Cayman",
    "Nissan Skyline GT-R",
    "Shelby Mustang",
    "Nissan Skyline",
    "Lamborghini Huracán",
    "Mini Cooper"
  ];

  dynamic heights = [
    300,
    180,
    170,
    170,
    180,
    300,
    220,
    200,
    180,
    300,
    170,
    170
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Grid Staggered"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(
            12,
            (index) => StaggeredGridTile.count(
                crossAxisCellCount: crosscount[index],
                mainAxisCellCount: maincount[index],
                child: Card(
                  child: ListTile(
                    title: Column(children: [
                      Container(
                        height: heights[index],
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  images[index],
                                ))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(name[index])
                    ]),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
