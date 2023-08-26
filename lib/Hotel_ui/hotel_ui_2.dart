import 'package:flutter/material.dart';
import 'package:assignment/Hotel_ui/dummy_list.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelUi2(),
  ));
}

class HotelUi2 extends StatefulWidget {
  HotelUi2({super.key});

  @override
  State<HotelUi2> createState() => _HotelUi2State();
}

class _HotelUi2State extends State<HotelUi2> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    final hotelid = ModalRoute.of(context)?.settings.arguments;
    final listfromhotel = hotellist.firstWhere(
      (element) => element['id'] == hotelid,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Stack(children: [
          Image.network(listfromhotel['image'],
              width: double.infinity, height: 400, fit: BoxFit.cover),
          Positioned(
            bottom: 70,
            left: 20,
            child: Text(
              listfromhotel['name'],
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 20,
            child: Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          const Positioned(
            bottom: 36,
            left: 40,
            child: Text("8.4/85 reviews",
                style: TextStyle(fontSize: 15, color: Colors.white)),
          ),
          Positioned(
              bottom: 30,
              right: 10,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_rounded,
                    size: 30,
                    color: Colors.white,
                  )))
        ]),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 30),
                      child: PannableRatingBar(
                        rate: rating,
                        items: List.generate(
                            5,
                            (index) => const RatingWidget(
                                  selectedColor: Colors.purple,
                                  unSelectedColor: Colors.grey,
                                  child: Icon(
                                    Icons.star,
                                    size: 30,
                                  ),
                                )),
                        onHover: (value) {
                          // the rating value is updated every time the cursor moves over a new item.
                          setState(() {
                            rating = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Text(
                        listfromhotel['price'],
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text(
                          listfromhotel['location'],
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Text(
                        "/Per day",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        backgroundColor: Colors.purple),
                    child: const Text("Book Now"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "About Us",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                 Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    listfromhotel['description'],
                    style:const TextStyle(
                        fontSize: 20,
                        wordSpacing: 2,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
