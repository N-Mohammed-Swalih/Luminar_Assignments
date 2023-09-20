import 'package:flutter/material.dart';

import 'dummy_list.dart';

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
        actions: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(),
          )
        ],
        centerTitle: true,
        bottom: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        elevation: 0,
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 30,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Places",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("View All"),
                ],
              ),
            ),
          ),
        ),
        // SizedBox(
        //   height: 25,
        // ),
        SliverToBoxAdapter(
          child: GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: placelist
                .map(
                  (iteratedplace) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        gotonextpage(context, iteratedplace['id']);
                      },
                      child: Container(
                          height: 200,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(iteratedplace["image"]))),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        iteratedplace["listcount"],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 15,
                                bottom: 15,
                                child: Text(
                                  iteratedplace["name"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blue[700]),
              onPressed: () {},
              child: const Text("Explore Now"),
            ),
          ),
        ))
      ]),
    );
  }

  void gotonextpage(BuildContext context, iteratedplaceId) {
    Navigator.pushNamed(context, 'details', arguments: iteratedplaceId);
  }
}
