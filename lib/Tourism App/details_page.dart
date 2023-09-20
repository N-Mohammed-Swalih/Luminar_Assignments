import 'package:flutter/material.dart';

import 'dummy_list.dart';

class PlaceDetails extends StatelessWidget {
  PlaceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    //to collect/recieve values from previous page
    final iteratedplaceId = ModalRoute.of(context)?.settings.arguments;
    //fetch all the values from previous page/route
    final iteratedplaceFromlist =
        placelist.firstWhere((element) => element['id'] == iteratedplaceId);
    return Scaffold(
      appBar: AppBar(
        title: Text(iteratedplaceFromlist['name']),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        iteratedplaceFromlist['pageheading'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(iteratedplaceFromlist['rating']),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(iteratedplaceFromlist['image'])),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 130,
            child: Column(
              children: [
                Text(
                  "About Place",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(iteratedplaceFromlist['about']),
              ],
            ),
          ),
          const Text(
            "Special Facilities",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 50,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Wrap(
                  children: [
                    Icon(
                      Icons.local_parking_outlined,
                      color: Colors.blue,
                    ),
                    Text(
                      "Parking",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Wrap(
                  children: [
                    Icon(
                      Icons.support_agent,
                      color: Colors.blue,
                    ),
                    Text(
                      "24x7 Support",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Wrap(
                  children: [
                    Icon(
                      Icons.wifi,
                      color: Colors.blue,
                    ),
                    Text(
                      "Free WiFi",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(iteratedplaceFromlist['image2']),
                ),
              ),
            ),
          ),
          const Text(
            "Special Facilities",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue,
                  ),
                  child: const Column(
                    children: [
                      Text("Adult"),
                      Text("02"),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue,
                  ),
                  child: const Column(
                    children: [
                      Text("Adult"),
                      Text("02"),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue,
                  ),
                  child: const Column(
                    children: [
                      Text("Adult"),
                      Text("02"),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue,
                  ),
                  child: const Column(
                    children: [
                      Text("Adult"),
                      Text("02"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Explore now"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
