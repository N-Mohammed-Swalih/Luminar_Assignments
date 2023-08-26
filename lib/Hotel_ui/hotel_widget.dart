import 'package:flutter/material.dart';

class Hotelwidget extends StatelessWidget {
  String image;
  String price;
  String hotelname;
  String location;
  Hotelwidget({
    super.key,
    required this.hotelname,
    required this.image,
    required this.location,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image)),
            ),
            child: Stack(
              children: [
                const Positioned(
                  right: 10,
                  top: 10,
                  child: Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    color: Colors.white,
                    height: 30,
                    width: 50,
                    child: Center(
                      child: Text(price),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                hotelname,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: Text(location),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
