import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var Functionnames = [
    'My Account',
    'Load e-Sewa',
    'Payment',
    'Fund Transfer',
    'Schedule Payment',
    'Scan To Pay'
  ];
  var images = ['assets/bankappui/avatar.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          floating: true,
          pinned: false,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Welcome! N Mohammed Swalih",
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w200,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.qr_code_scanner)),
          ],
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: Stack(
              children: [
                Container(
                  color: Colors.red.shade700,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 15,
                  left: MediaQuery.of(context).size.width * 0.01,
                  right: MediaQuery.of(context).size.width * 0.01,
                  child: Card(
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white38,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red.shade600,
                              radius: 52,
                              child: const CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                  "https://media.licdn.com/dms/image/D5603AQHjAVB_xWJIsw/profile-displayphoto-shrink_800_800/0/1686713033598?e=1699488000&v=beta&t=BJrA3nm3cOJVc7j494C_9dRqfm_MlLf8DvJN1r0GoXs",
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "N Mohammed Swalih",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'NPR.1,00,999.35',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.lightBlueAccent,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '1274 4389 2093 2930',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.fan,
                      color: Colors.red.shade700,
                    ),
                    const Text(
                      'WOULD YOU LIKE TO?',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 200,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => Card(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(images[index],
                                height: 50,
                                width: 50,),
                                Text(Functionnames[index]),
                              ],
                            ),
                          ),
                        )),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
