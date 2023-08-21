import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelUi(),
  ));
}

class HotelUi extends StatefulWidget {
  HotelUi({super.key});

  @override
  State<HotelUi> createState() => _HotelUiState();
}

class _HotelUiState extends State<HotelUi> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Stack(children: [
          Image.network(
              "https://digital.ihg.com/is/image/ihg/crowne-plaza-kochi-3941030496-4x3",
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover),
          const Positioned(
            bottom: 70,
            left: 20,
            child: Text(
              "Crowne Plaza\nKochi,Kerala",
              style: TextStyle(
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
                    const Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Text(
                        "\$200",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text(
                          "8 km to Lulu Mall",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ]),
                    ),
                    Padding(
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
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Experience Luxury at Crowne Plaza-Kochi Nestled by Vembanad Lake, Crowne Plaza Kochi is a luxurious property catering to corporate and social gatherings. With modern design, exceptional hospitality, and a strategic location, it offers convenience for business and leisure travelers.Crowne Plaza Kochi is ideally located on the new business district of the city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.The hotel features 269 spacious rooms, versatile meeting spaces, and diverse dining options. The well-appointed rooms offer scenic views of the backwaters or cityscape, complemented by 24-hour in-room dining and indulgent spa and salon services Guests can enjoy various dining options available throughout the day, including fine dining and specialty cuisine at on-site restaurants such as Aroma, Mosaic, Skygrill, and Zoka.Crowne Plaza Kochi is an excellent venue for corporate and social events, providing fully equipped meeting rooms with advanced technology and versatile indoor and outdoor spaces suitable for different occasions. The pillarless ballroom can accommodate up to 600 guests in a theater-style arrangement. Additionally, there is a Backwater Pavilion capable of hosting grand events or wedding ceremonies for up to 2000 guests in a tranquil waterfront setting.",
                    style: TextStyle(
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
