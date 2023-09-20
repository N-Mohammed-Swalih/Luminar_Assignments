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
      body: Column(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width * .5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(iteratedplaceFromlist['image']))),
            ),
          ),
        ],
      ),
    );
  }
}
