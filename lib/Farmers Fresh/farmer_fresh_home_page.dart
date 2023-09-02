import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var categoryname = [
    'VEGETABLES',
    'FRUITS',
    'PACKED FOODS',
    'FOOD GRAINS',
    'BEVERAGES'
  ];

  var sampleImages = [
    'assets/farmerfresh/ashirvad.jpg',
    'assets/farmerfresh/avt.png',
    'assets/farmerfresh/offer.jpg',
    'assets/farmerfresh/cocacola.jpg',
    'assets/farmerfresh/tide.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.green,
          floating: true,
          pinned: false,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Farmer Fresh Zone",
                style: GoogleFonts.openSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.location_on),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Maradu,Kochi',
                    style: TextStyle(fontSize: 15),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_drop_down))
                ],
              )
            ],
          ),
          bottom: AppBar(
            toolbarHeight: 81,
            backgroundColor: Colors.green,
            title: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusColor: Colors.white,
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "Search for Vegetables,Fruits...",
                prefixIconColor: Colors.grey,
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search_sharp),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              height: 50.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 200.0,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: Colors.green.shade100,
                          ),
                          onPressed: () {},
                          child: Text(
                            categoryname[index],
                            style: TextStyle(
                                color: Colors.green.shade900,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  })),
        )),
        SliverToBoxAdapter(
          child: FanCarouselImageSlider(
            sliderWidth: MediaQuery.sizeOf(context).width,
            sliderHeight: 300,
            imagesLink: sampleImages,
            imageFitMode: BoxFit.fill,
            isAssets: true,
            expandImageHeight: 100,
            expandImageWidth: 300,
            autoPlay: true,
            imageRadius: 10,
            showIndicator: false,
            isClickable: false,
          ),
        )
      ])),
    );
  }
}
